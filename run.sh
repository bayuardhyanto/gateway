#!/bin/bash
set -m
/usr/sbin/sshd
/usr/sbin/nginx
#ps -ax
#ss -tulpn
tail -f /dev/null
fg %1
