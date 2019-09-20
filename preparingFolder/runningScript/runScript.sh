#!bin/bash

curdir=$(pwd)

for f in $curdir/*
do
       cd "$f" &&

       echo Entering into $f &&


       sbatch --job-name=checkMesh --output=checkMesh.log ./checkMesh.pbs &&

       sleep 2

       cd ..
done;
