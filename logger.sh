#!bin/bash
pjt_logger="$PJT_PATH/logger.txt"

function log_info {
    printf "[Info] $1\n" >> "$pjt_logger"
}

function log_error {
    printf "[Error] $1\n" >> "$pjt_logger"
}
