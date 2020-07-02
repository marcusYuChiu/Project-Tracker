#!/bin/bash

source "$PJT_PATH/.env"
source "$PJT_PATH/importer.sh"

function main {
    local option=$1
    check_arg $option
    # todo:
    #     apply date and create a component to deal with date
    printf "[Info] argument validate\n" >> logger.txt
    classify_option $option
}

main $1
