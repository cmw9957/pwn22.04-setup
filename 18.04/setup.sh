#!/bin/bash

# 시스템 업데이트 및 필수 패키지 설치
sudo apt update && sudo apt install -y netcat
sudo apt install -y vim git gcc ssh curl wget gdb sudo zsh python3 python3-pip \
                    libffi-dev build-essential libssl-dev libc6-i386 libc6-dbg \
                    gcc-multilib make

# 32비트 라이브러리 추가 및 설치
sudo dpkg --add-architecture i386
sudo apt update
sudo apt install -y libc6:i386

# 파이썬 패키지 설치
sudo python3 -m pip install --upgrade pip
pip3 install unicorn keystone-engine pwntools ropgadget

# Capstone 라이브러리 설치
sudo apt install -y libcapstone-dev

# Ruby 및 관련 도구 설치
sudo apt install -y ruby-full
sudo gem install one_gadget seccomp-tools

sudo apt install -y terminator

# 추가 패키지 설치
sudo apt install -y tmux
sudo apt-get update
sudo apt-get install -y patchelf

# Docker 설치
sudo apt install -y lsb-release software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository \
    "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
    $(lsb_release -cs) \
    stable"
sudo apt-get update && sudo apt-get install -y docker-ce docker-ce-cli containerd.io

