Attached some 10 subjects and their networks. The networks are stored as "net" file (also known as Pajek format) as well as matlab matrices. There is also an info.csv file about the subjects as some of them are individuals with Autism Spectrum Disorder and some other are matched controls. 

The nodes are the same as in Power et al 2011, https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3222858/ i.e. the same we used in class for the neurosynth task:
https://docs.google.com/spreadsheets/d/1PMNmKVxa10xKoog1TOB1P_7bC1eH3SWln3nqcZfofoo/edit#gid=0

The density of the network is 2% i.e. there are 694 links (and 264 nodes). This same density was also used in the Power 2011 paper.

I have already run infomap for each subject and you find the "clu" file for each subject. The clu file gives a module label to each node. (2nd column, ignore 3rd column)

Your tasks can be

1) get any label propagation algorithm running from beginning to end either using the NET file or the MAT file (the MAT matlab files might need to be converted, but NET file is usually good enough)
2) see if the number of clusters from the label propagation algo is the approximately same as infomap (some subjects have only 2 clusters, some other have 28!)
3) in some cases label prop can have some known labels to start with, so by using the XLS file linked above you can "help" the algorithm by giving him the labels for some % of nodes for those whose labels are known (i.e. the rows with colors). If this point 3 is confusing, we can chat on tuesday.

Feel free to ask more questions here!
