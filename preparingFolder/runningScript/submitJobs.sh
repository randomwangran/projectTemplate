#!bin/bash

curdir=$(pwd)

for f in $curdir/*
do 
       cd "$f" &&

       echo Entering into $f &&

       echo $ > tmp
       ReynoldsNum=`grep -oP '(?<=Re_)[0-9]+' tmp`
       
       sbatch --job-name=purposeOfJobs_$(ReynoldsNum) --output=roundness4Re_$(ReynoldsNum)_%N_%J.log ./decomposedAndSubmit.pbs pisoFoam &&

       rm tmp
       sleep 2
       cd ..
done;
