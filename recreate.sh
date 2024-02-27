#!/usr/bin/env bash

# prepare cloud remote path
[ -n "$1" ] && cloud="$1"

# sync git project
rclone sync $cloud code \
--log-level ERROR --log-file code/restore_error.log
