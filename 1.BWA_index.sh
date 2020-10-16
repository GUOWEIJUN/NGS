#!bin/bash
for reference_file in ~/genome/*
do
    bwa index $reference_file
done
echo"ok!"
chmod 777 1.BWA_index.sh
