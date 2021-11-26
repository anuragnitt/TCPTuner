#!/bin/bash

# absolute path to project directory
PROJECT_PATH="`dirname \"$0\"`"
PROJECT_PATH="`( cd \"$PROJECT_PATH\" && pwd )`"

sudo insmod $PROJECT_PATH/module/tcp_tuner.ko

sudo sysctl -w net.ipv4.tcp_congestion_control=tuner

sudo sysctl -w net.ipv4.ip_forward=1
