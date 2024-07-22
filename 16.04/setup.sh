#!/bin/bash

# 업데이트 및 필수 패키지 설치
sudo apt update && sudo apt install -y netcat
sudo apt update && sudo apt install -y vim git gcc ssh curl wget gdb sudo zsh python3 python3-dev python3-pip libffi-dev build-essential libssl-dev libc6-i386 libc6-dbg gcc-multilib make

# i386 아키텍처 추가 및 패키지 설치
sudo dpkg --add-architecture i386
sudo apt update
sudo apt install -y libc6:i386

# pip 패키지 설치
pip3 install unicorn
pip3 install keystone-engine
pip3 install -U pip==20.3.4
pip3 install -U pwntools
pip3 install capstone ropper
pip3 install ropgadget
sudo apt install -y libcapstone-dev

# Terminator 설치
apt install terminator

# Ruby 설치
sudo apt install -y software-properties-common
sudo apt-add-repository -y ppa:brightbox/ruby-ng
sudo apt update
sudo apt install -y ruby2.5 ruby-full ruby-dev
sudo gem install one_gadget -v 1.7.3

sudo apt-get update
sudo apt-get install -y patchelf

# Docker 설치
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository \
    "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
    $(lsb_release -cs) \
    stable"
sudo apt-get update
sudo apt-get install -y docker-ce docker-ce-cli containerd.io
