clear all
close all

addpath(genpath('/m/nbe/scratch/braindata/shared/toolboxes/bramila'));
addpath(genpath('external'))
subjects={'/m/nbe/scratch/braindata/eglerean/teaching/data/CMU/50642/epi_preprocessed.nii'
'/m/nbe/scratch/braindata/eglerean/teaching/data/CMU/50643/epi_preprocessed.nii'
'/m/nbe/scratch/braindata/eglerean/teaching/data/CMU/50645/epi_preprocessed.nii'
'/m/nbe/scratch/braindata/eglerean/teaching/data/CMU/50646/epi_preprocessed.nii'
'/m/nbe/scratch/braindata/eglerean/teaching/data/CMU/50647/epi_preprocessed.nii'
'/m/nbe/scratch/braindata/eglerean/teaching/data/CMU/50649/epi_preprocessed.nii'
'/m/nbe/scratch/braindata/eglerean/teaching/data/CMU/50651/epi_preprocessed.nii'
'/m/nbe/scratch/braindata/eglerean/teaching/data/CMU/50652/epi_preprocessed.nii'
'/m/nbe/scratch/braindata/eglerean/teaching/data/CMU/50653/epi_preprocessed.nii'
'/m/nbe/scratch/braindata/eglerean/teaching/data/CMU/50655/epi_preprocessed.nii'
'/m/nbe/scratch/braindata/eglerean/teaching/data/CMU/50657/epi_preprocessed.nii'
'/m/nbe/scratch/braindata/eglerean/teaching/data/CMU/50658/epi_preprocessed.nii'
'/m/nbe/scratch/braindata/eglerean/teaching/data/CMU/50659/epi_preprocessed.nii'
'/m/nbe/scratch/braindata/eglerean/teaching/data/CMU/50660/epi_preprocessed.nii'
'/m/nbe/scratch/braindata/eglerean/teaching/data/CMU/50663/epi_preprocessed.nii'
'/m/nbe/scratch/braindata/eglerean/teaching/data/CMU/50664/epi_preprocessed.nii'
'/m/nbe/scratch/braindata/eglerean/teaching/data/CMU/50665/epi_preprocessed.nii'
'/m/nbe/scratch/braindata/eglerean/teaching/data/CMU/50666/epi_preprocessed.nii'
'/m/nbe/scratch/braindata/eglerean/teaching/data/CMU/50667/epi_preprocessed.nii'
'/m/nbe/scratch/braindata/eglerean/teaching/data/CMU/50668/epi_preprocessed.nii'
};


load rois_Power264.mat
cfg=[];
cfg.rois=rois;
cfg.usemean = 1;
for s =1:length(subjects)
    cfg.infile = subjects{s};
    [nodeTS]=bramila_roiextract(cfg);
    save([subjects{s} '.mat'],'nodeTS');
    % make the network and threshold it at 1%
    adj=corr(nodeTS);
    adj(find(isnan(adj)))=eps;
    ids=find(triu(ones(size(adj)),1));
    adj(find(adj<0))=0;
    [CIJtree,CIJclus] = backbone_wu(adj,2);
    temp=adj+2*sign(CIJtree);
    [aa bb]=sort(temp(ids));
    NTH=round(length(ids)*0.02);
    mask=zeros(size(adj));
    mask(ids(bb(end-NTH:end)))=1;
    mask=mask+mask';
    outadj=adj.*mask;
    adj=outadj;
    save(['output/' subjects{s}(53:57) '.mat'],'adj');
    writetoPAJ(adj,['output/' subjects{s}(53:57)],0);
end
