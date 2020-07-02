#!/bin/bash

# You can indicate path like below and use this file as entry point, or
# export path in .bash_profile for mac
#                .profile or .bashrc for linux
#
# export PJT_PATH=/path/of/pjt

if test "$#" -eq 0; then
    printf "PJT require a option"
elif test "$#" -gt 1;then
    printf "PJT only require one option"
else
    sh main.sh $1
fi
