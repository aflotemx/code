#!/usr/bin/env bash

# prepare cloud remote path
[ -n "$1" ] && cloud="$1"

# loop git projects.
for git_project in code/*/
do
# sync git project
rclone sync $git_project $cloud/$git_project \
--exclude-from $git_project.gitignore \
--log-level ERROR --log-file code/backup_error.log
done
