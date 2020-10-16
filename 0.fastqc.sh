#!bin/bash
for fastq_file in ~/fastq/*
do
    fastqc $fastq_file
       mv ~/fastq/*fastqc.html ~/fastq/*fastqc.zip ~/results
done
echo"ok!"
chmod 777 0.fastqc.sh
