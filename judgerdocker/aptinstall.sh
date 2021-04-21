#!/bin/bash
# Package list from https://github.com/UniversalOJ/UOJ-System
export DEBIAN_FRONTEND=noninteractive
apt update
apt install -y vim ntp zip curl wget git
apt install -y python python3
apt install -y g++ cmake re2c
apt install -y build-essential fp-compiler python3-requests openjdk-8-jdk openjdk-11-jdk