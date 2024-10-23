#!/bin/bash 

apt update && apt upgrade -y
apt install tor -y
nohup tor > /tmp/tor.log 2>&1 &
