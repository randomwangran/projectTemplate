#!bin/bash

curdir=$(pwd)

for f in $curdir/*
do
       cd "$f" &&

       echo Entering into $f &&


       awk '{if($0~"Finalising parallel run") print}' log.hai_tun_lian_shang_ye_you_:) &&

       cd ..
done;
