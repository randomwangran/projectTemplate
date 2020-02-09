#!bin/bash

curdir=$(pwd)

for f in $curdir/*
do
       cd "$f" &&

       echo Entering into $f &&

       ## copy transportProperties turbulenceProperties to a case folder without constant
       cp -rf ../../preparingFolder/prepareCases/Meshes/constant ./

done;
