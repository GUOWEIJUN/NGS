#!bin/bash
for bam_file in ~/sam/*
do
    samtools index $bam_file_filter_rmdup_sort.bam
done
echo"ok!"
###visualization###
load genome: ~/genome/reference.fa
load file: $bam_file_filter_rmdup_sort.bam

