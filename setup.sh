#!/bin/bash

sudo insmod tcp_tuner.ko

sudo sysctl -w net.ipv4.tcp_congestion_control=tuner

sudo sysctl -w net.ipv4.ip_forward=1
