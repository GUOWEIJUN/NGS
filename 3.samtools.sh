#!bin/bash
for sam_file in ~/sam/*
do
    samtools view -bS $sam_file.sam > $sam_file.bam
    samtools view -h -F 4 -q 5 $sam_file.bam |samtools view -bS | samtools rmdup -S  $sam_file_filter_rmdup.bam
    samtools sort $sam_file_filter_rmdup.bam -o $sam_file_filter_rmdup_sort.bam
    samtools flagstat $sam_file_filter_rmdup_sort.bam > $sam_file_depth.txt
    samtools index $sam_file_filter_rmdup_sort.bam
done
echo"ok!"
chmod 777 3.samtools.sh

