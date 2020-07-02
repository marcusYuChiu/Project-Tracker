#!/bin/bash

function project_values {
    local path=`pwd`
    printf "name: " > /dev/tty
    read name
    printf "description: " > /dev/tty
    read description
    printf "tech_stacks: " > /dev/tty
    read tech_stacks
    if [[ "$name" == '' ]] || [[ "$tech_stacks" == '' ]]; then
        exit 1
    fi
    local result=("'$name'","'$description'","'$path'","'$tech_stacks'")
    echo "$result"
}

