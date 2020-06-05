#!/bin/bash

torontofileid=1euhrML0rkV_hHF1thiA0G5vSSeZCqxHY
dir=/Users/awhitehead/Code/covid-datasets/toronto_daily_stats
today=`date +"%Y%m%d"`

cd $dir
date > run.log
/usr/local/bin/wget --no-check-certificate 'https://docs.google.com/uc?export=download&id=1euhrML0rkV_hHF1thiA0G5vSSeZCqxHY' -O $today.xlsx  >run.log 2>&1
git add $today.xlsx >run.log 2>&1
git commit -m "Automated download of $today data" $today.csv >run.log 2>&1
git push >run.log 2>&1


