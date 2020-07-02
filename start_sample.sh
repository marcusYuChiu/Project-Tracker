#!/bin/bash

# This file is a convenience way to run pjt, and is not essential
# You can indicate path like below and use this file as entry point
# export PJT_PATH=/path/of/pjt
#
# or export path in .bash_profile for mac
#                   .profile or .bashrc for linux
#

if test "$#" -eq 0; then
    printf "PJT require a option"
elif test "$#" -gt 1;then
    printf "PJT only require one option"
else
    sh main.sh $1
fi
