# WDL
This is a repository for Workflow Description Language (WDL) files, which are used to run analysis on the FireCloud.<br>
https://software.broadinstitute.org/firecloud/

Related resources<br>
https://github.com/broadinstitute/wdl
https://github.com/broadinstitute/cromwell
https://github.com/teamcgc/cgcR/blob/master/vignettes/FireCloud-UsingWDL.Rmd
https://github.com/teamcgc/cgcR/blob/master/vignettes/FireCloud-RNAseqUsingStar.Rmd

Metaphlan Tutorial Files (metaphlan_cfg*)<br>
https://bitbucket.org/nsegata/metaphlan/wiki/MetaPhlAn_Pipelines_Tutorial


To run multiple samples (batch processing) in FireCloud -
1) Upload *sample_set.tsv and then *sample_set_membership.tsv
2) Under "Method Configuration" tab, select the method config (metaphlan)
3) Confirm root entity is "sample" and Click "Launch Analysis..." 
4) Click "sample_set" button and select the sample set (set1)
5) In the textbox "define expression," type "this.samples"
6) Click "Launch"
