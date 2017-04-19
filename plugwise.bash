#!/bin/bash

cur=$PWD
cd /usr/local/Plugwise-2-py
nohup python Plugwise-2.py >>/tmp/pwout.log&
nohup python Plugwise-2-web.py >>/tmp/pwwebout.log&
ps -ef | grep Plugwise > Plugwise-2.pid
cd $cur

