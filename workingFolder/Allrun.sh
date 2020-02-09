#!bin/bash

## example of using this template:

# sh ../preparingFolder/prepareScript/buildUpBase.sh

# sh ../preparingFolder/prepareScript/cpScript.sh


# sh ../preparingFolder/prepareScript/cpConvertedMesh.sh
# sh ../preparingFolder/prepareScript/delete.sh
# sh ../preparingFolder/prepareScript/cpScript.sh
# sh ../preparingFolder/prepareScript/cpConvertedMesh.sh
# sh ../preparingFolder/runningScript/submitJobs.sh

## change running status

#  sh ../preparingFolder/runningScript/switch2Sampling.sh

## do a checkMesh for all working folder
sh ../preparingFolder/copyScript/checkMesh.sh
sh ../preparingFolder/runningScript/runCheckMesh.sh

## check TCP issue
sh ../preparingFolder/runningScript/checkTCP.sh
