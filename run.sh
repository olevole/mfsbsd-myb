#!/bin/sh

## https://forums.freebsd.org/threads/installing-freebsd-in-hetzner.85399/#post-574863

## pre-init
# cd /root
# mkdir /root/cd-rom
# fetch https://download.freebsd.org/ftp/releases/amd64/amd64/ISO-IMAGES/13.1/FreeBSD-13.1-RELEASE-amd64-dvd1.iso
# mount -t cd9660 /dev/`/sbin/mdconfig -f FreeBSD-13.1-RELEASE-amd64-dvd1.iso` /root/cd-rom
# fetch https://github.com/mmatuska/mfsbsd/archive/master.zip
# unzip master.zip && cd mfsbsd-master
# ls -la conf/
# cp -a conf/rc.conf.sample conf/rc.conf

[ -d work ] && rm -rf work
[ -r mfsbsd-13.1-RELEASE-amd64.img ] && rm -f mfsbsd-13.1-RELEASE-amd64.img
make BASE=/root/cd-rom/usr/freebsd-dist
