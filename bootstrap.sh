#!/usr/bin/env bash

yum -y install vim
export LC_ALL=C
setenforce 0
sed -i 's/SELINUX=\(enforcing\|permissive\)/SELINUX=disabled/g' /etc/selinux/config
reboot
