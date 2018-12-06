#!/usr/bin/env bash

export LC_ALL=C
setenforce 0
sed -i 's/SELINUX=\(enforcing\|permissive\)/SELINUX=disabled/g' /etc/selinux/config
reboot