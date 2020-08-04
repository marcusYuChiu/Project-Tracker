#!/bin/bash
source "$PJT_PATH/logger.sh"

CMD_LIST=('-l','-c','-g')

function check_arg {
    local list=$CMD_LIST
    local item=$1
    if [[ $list =~ "$item" ]]; then
        log_info "argument validated" 
    else
        log_error "pjt do not offer this service"
        printf "pjt do not offer this service" > /dev/tty
    fi
}
