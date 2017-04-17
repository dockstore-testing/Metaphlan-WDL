task metaphlan_task {

  File FASTQs

  command <<<
    tar xjf ${FASTQs}  --to-stdout | /metaphlan/metaphlan.py --bowtie2db /metaphlan/bowtie2db/mpa --bowtie2_exe /bowtie2-2.2.5/bowtie2 --bt2_ps very-sensitive --input_type multifastq --bowtie2out BM_input_fastq-1.bt2out > profile_out.txt
    /metaphlan/plotting_scripts/metaphlan2graphlan.py profile_out.txt --tree_file tree.txt --annot_file annot.txt
    /graphlan/graphlan_annotate.py --annot annot.txt  tree.txt  annot_out.xml
    /graphlan/graphlan.py --dpi 200  annot_out.xml final.png

  >>>

  runtime {
    docker : "stevetsa/metaphlan:2"
  }

  output {
    File outpng = "final.png"
  }
}



workflow metaphlan_wfl {

#### https://bitbucket.org/nsegata/metaphlan/wiki/MetaPhlAn_Pipelines_Tutorial  
#### input/${s}.tar.bz2
#### SRS020336.tar.bz2 (156 MB)

  File FASTQs
 
  call metaphlan_task {
	input:
	FASTQs=FASTQs
  }
}

