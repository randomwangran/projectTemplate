#!bin/bash

curdir=$(pwd)

for f in $curdir/*
do
       cd "$f" &&

       echo Entering into $f &&

       cp -f ../../preparingFolder/prepareScript/checkMesh.pbs .
done;
