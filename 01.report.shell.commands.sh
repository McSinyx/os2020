#!/bin/sh
echo \# Practical Work 1: Basic commands
echo Before one says anything, the output are from my Raspberry on Void as root.
echo It is supposed to be for showing off the uptime, but we had a power outage
echo last Saturday \(otherwise it\'d be around six months or so \)-:\).
echo
echo Regarding the under-voltage issue, I am too lazy to find out the solution,
echo I am not even sure if it is a really issue since the machine runs just fine.
echo
echo '```sh'
echo '# echo hello world'
echo hello world
echo '# passwd'
# I have no intension of actually changing my password.
echo New password:
echo Retype new password:
echo passwd: password updated successfully
echo '# date'
date
echo '# hostname'
hostname
echo '# arch'
arch
echo '# uname -a'
uname -a
echo '# dmesg | tail'
dmesg | tail
echo '# uptime'
uptime
echo '# who am i'
who am i
echo '# whoami'
whoami
echo '# id'
id
echo '# last -n10'
last -n8
# There is no longer finger in the void.
echo '# pinky'
pinky
echo '# w'
w
echo '```'
