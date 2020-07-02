#!/bin/bash

CMD_LIST=('-r','-w','-g')

function check_arg {
    local list=$CMD_LIST
    local item=$1
    if [[ $list =~ "$item" ]]; then
        :;
    else
        exit 128
    fi
}
