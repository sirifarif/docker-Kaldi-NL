#!/bin/bash

#pid=`ps axf | grep worker.py | grep -v grep | awk '{print "echo " $1}' | sh`
#for x in $pid;do kill -15 ${x};done

#kill worker
ps axf | grep worker.py | grep -v grep | awk '{print "kill -15 " $1}' | sh

#kill master
ps axf | grep master_server.py | grep -v grep | awk '{print "kill -15 " $1}' | sh

