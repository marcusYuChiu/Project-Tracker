#!/bin/bash

function get_projects {
    local attrs=('id','name','tech_stacks','description')
    local query="select $attrs from projects;"
    sqlite3 $DB_PATH ".mode column" ".headers on" ".width 2 20 20 50" "$query"
}

function write_project {
    local attrs=('name','description','path','tech_stacks')
    local values=`project_values`
    local query="insert into projects ($attrs) values ($values)"
    if test "$values" = '';then
        printf "[Error] name or tech stack is not allowed to be empty"
        exit 1
    fi
    sqlite3 $DB_PATH "$query"
}

function go_project {
    printf "id of project: " > /dev/tty
    read id
    query="select path from projects where id = $id;"
    project_path=$(sqlite3 $DB_PATH "$query")
    cd $project_path
}

function classify_option {
    local option=$1
    if test "$option" = "-r"; then
        get_projects
    elif test "$option" = "-w"; then
        write_project
    elif test "$option" = "-g"; then
        go_project
    else
        echo "PJT do not offer server: $option"
    fi
}
