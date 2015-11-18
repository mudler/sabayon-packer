#!/bin/bash

set -e 

rsync -aqz --exclude='mnt' --exclude='proc' --exclude='sys' --exclude='dev' --exclude='tmp' / /mnt/pentoo 2>&1 >$LOG
    sed -i 's#aufs bindist livecd##' ${DESTDIR}/etc/portage/make.conf 2>&1 >$LOG
    mknod -m666 ${DESTDIR}/dev/zero c 1 5
    mknod -m666 ${DESTDIR}/dev/null c 1 3
    mknod -m600 ${DESTDIR}/dev/console c 5 1
    mkdir -m755 ${DESTDIR}/media/{cd,dvd,fl}
|| die "Exiting Copy"
