#!bin/bash
#------------------------------------------------------------------------------
#                 |
#  This need      | TEM: Talent Elemetn Method
#                 | Website:  https://github.com/randomwangran/TEM
# Further refine  | Copyright (C) 2018-2020 randomwangran
#                 |
#------------------------------------------------------------------------------
# License
#     This file is part of TEM.
#
#     TEM is free software: you can redistribute it and/or modify it
#     under the terms of the GNU General Public License as published by
#     the Free Software Foundation, either version 3 of the License, or
#     (at your option) any later version.
#
#     TEM is distributed in the hope that it will be useful, but WITHOUT
#     ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
#     FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
#     for more details.
#
#     You should have received a copy of the GNU General Public License
#     along with TEM.  If not, see <http://www.gnu.org/licenses/>.
#
# Script
#     Allrun.sh
#
# Description
#
#     Just like the role of James T. Kirk
#
#     Want to read more of his story, visit:
#
#             https://en.wikipedia.org/wiki/James_T._Kirk
#
#------------------------------------------------------------------------------

## if the running require multiple branches to run, make sure the
## submission is after ENTERING the proper working directory

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
