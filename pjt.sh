#!/bin/bash

source "$PJT_PATH/.env"
source "$PJT_PATH/gateway.sh"
source "$PJT_PATH/service.sh"
source "$PJT_PATH/tables.sh"

function main {
    local -r option=$1
    check_arg $option
    classify_option $option
}

main $1
