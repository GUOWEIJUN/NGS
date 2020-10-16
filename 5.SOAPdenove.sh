#!bin/bash
for sample in ~/fq/*
do
    SOAPdenovo-63mer all -s config_file -K 63 -R -o $sample
done
echo"ok!"
chmod 777 SOAPdenovo.sh

