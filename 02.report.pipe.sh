#!/bin/sh
echo \# Practical Work 2: Pipe and I/O Redirection
echo List all files in current directory containing \"list\" in their names
echo \(filter with grep\):
# list is an odd word to expect filenames to have.
echo '```sh'
echo '# ls -p1 | grep -v / | grep list'
ls -p1 | grep -v / | grep list
# Or alternatively
echo '# find -maxdepth 1 -type f -name "*list*"'
find -maxdepth 1 -type f -name "*list*"
echo '```'
echo
echo Count how many lines that /etc/passwd has \(use wc\):
echo '```sh'
echo '# wc -l /etc/passwd'
wc -l /etc/passwd
echo '```'
echo
echo Check how much memory that your machine has \(in kB\) \(use free\):
echo '```sh'
echo "# LOCALE=C free | grep Mem | awk {'print \$2'}"
LOCALE=C free | grep Mem | awk {'print $2'}
# Or less gamblingly
echo "# grep MemTotal /proc/meminfo | awk {'print \$2'}"
grep MemTotal /proc/meminfo | awk {'print $2'}
echo '```'
echo
echo Find how many logical core that your CPU has \(see /proc/cpuinfo\):
echo '```sh'
# Ugly hack, but it works!
# (On RPi there is neither number of cores or siblings infomation.)
echo '# grep ^$ /proc/cpuinfo | wc -l'
grep ^$ /proc/cpuinfo | wc -l
# Prettier (?) version:
echo "# lscpu | grep ^CPU\(s\): | awk {'print \$2'}"
lscpu | grep ^CPU\(s\): | awk {'print $2'}
echo '```'
echo
echo Count how many JPG files that you have in your photo directory \(use find\):
# Hey, don't judge, this is only used as an IPFS node!
for i in `seq 42`; do touch $i.jpg; done
# I would not mind to call this my photo directory now.
echo '```sh'
echo '# find -iname "*.jpg" | wc -l'
find -iname "*.jpg" | wc -l
echo '```'
rm *.jpg
