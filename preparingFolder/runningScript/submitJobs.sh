#!bin/bash

curdir=$(pwd)

for f in $curdir/*
do 
       cd "$f" &&

       echo Entering into $f &&

       sbatch --job-name=CdVerseRePreRun --output=CdVerseRePreRun_%N_%J.log ./decomposedAndSubmit.pbs pisoFoam
       wait 1
done;
