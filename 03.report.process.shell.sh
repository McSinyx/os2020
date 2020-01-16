#!/bin/sh
echo \# Practical Work 2: Pipe and I/O Redirection
echo List **all** running process:
echo '```sh'
echo '$ ps -ef'
ps -ef
echo '```'
echo
echo Start a new process:
echo '```sh'
echo '$ sleep 420 &'
sleep 420 &
echo '```'
echo
echo Find the newly-created process\' PID:
echo '```sh'
echo '$ echo $!'
echo $!
echo '```'
echo
echo Show its status:
echo '```sh'
echo '$ cat /proc/$!/status'
cat /proc/$!/status
echo '```'
echo
echo Pause, resume and terminate it:
echo '```sh'
echo '$ kill -STOP $!'
echo '$ kill -CONT $!'
echo '$ kill -KILL $!'
kill -STOP $!
kill -CONT $!
kill -KILL $!
echo '```'
