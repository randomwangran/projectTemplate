#!bin/bash
curdir=$(pwd)
for f in $curdir/*
do
    cd "$f" &&
	currentFolderName=${PWD##*/} &&
	echo Entering into $f &&
        cp ~/scratch/roundnessEffect-correctTimeStep/roundnessEffect.bak/workingFolder/$currentFolderName/log.decomposePar .
done;
