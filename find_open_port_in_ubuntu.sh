#!/bin/sh -x
PORT=$1
sudo netstat -lpn |grep :$PORT