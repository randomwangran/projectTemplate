#!bin/bash

function checkMeshDecomposed()
{
    File=log.decomposePar
    if grep -q End "$File"; ##note the space after the string you are searching for
    then
	echo "Mesh decomposed Successfully"
    else
	echo "Mesh not decomposed!"
	pwd
	rm -r processor*
    fi
}


curdir=$(pwd)

for f in $curdir/*
do 
       cd "$f" &&

       echo Entering into $f &&

       checkMeshDecomposed
done;
