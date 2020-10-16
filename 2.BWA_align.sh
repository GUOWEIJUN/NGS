#!bin/bash
for fq_file in ~/fq/*
do
    bwa mem ~/reference.fa $fq_file_read1.fq $fq_file_read2.fq > ~/sam/$fq_file.sam
done
echo"ok!"
chmod 777 1.BWA_align.sh

