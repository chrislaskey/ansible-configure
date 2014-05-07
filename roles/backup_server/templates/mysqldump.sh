#!/usr/bin/env bash

host=$1
db=$2

ssh_binary=/usr/bin/ssh
ssh_id="-i /home/{{ ansible_ssh_user }}/.ssh/id_rsa"
ssh_command="${ssh_binary} ${ssh_id} ${host}"

dump_dir="/tmp/mysqldump/${db}"
dump_user="{{ mysql_dump_username }}"
dump_pass="{{ mysql_dump_password }}"
dump_target="${db}.sql"

mkdir_cmd="mkdir -p ${dump_dir}"
mysqldump_cmd="mysqldump -u ${dump_user} -p${dump_pass} ${db} > ${dump_target}"
chown_cmd="sudo chown {{ ansible_ssh_user }}:{{ ansible_ssh_user }} ${dump_target}"
chmod_cmd="sudo chmod 0644 ${dump_target}"
remote_command="${mkdir_cmd}; ${mysqldump_cmd}; ${chown_cmd}; ${chmod_cmd}"

`$ssh_command "$remote_command"`
