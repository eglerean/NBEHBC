clear all
close all

load Netsim_data_Smith/sim1.mat
whos
figure(1)
subplot(1,2,1)
subj=11;
imagesc(squeeze(net(subj,:,:)),[-1 1]) % plots one subject 
colorbar

figure
% distribution of link 1,5 across subject

links_across_subjects=squeeze(net(:,1,5));
hist(links_across_subjects,20)

% net of subj 11 with correlation
subj_ts=ts((1:Ntimepoints)+(subj-1)*Ntimepoints,:); % time in first dimension
figure(1)
subplot(1,2,2)
imagesc(corr(subj_ts,'type','pearson'),[-1 1])
colorbar