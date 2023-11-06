#!/bin/bash
set -m
echo "127.0.0.1       gateway" >> /etc/hosts
echo "::1             gateway" >> /etc/hosts
/usr/sbin/sshd
/usr/sbin/nginx
#ps -ax
#ss -tulpn
tail -f /dev/null
fg %1
