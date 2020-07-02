#!/bin/bash

function projects_table(){
    sqlite3 $DB_PATH <<EOM
    create table if not exists projects(
    id integer primary key autoincrement,
    name text not null,
    tech_stacks text not null,
    path text,
    description text,
    create_at timestamp default current_timestamp
    )
EOM
}

projects_table