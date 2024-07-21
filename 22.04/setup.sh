#!/bin/bash

# 업데이트 및 필수 패키지 설치
apt update && apt install -y netcat
apt install -y vim git gcc ssh curl wget gdb file sudo zsh python3 python3-pip libffi-dev build-essential libssl-dev libc6-i386 libc6-dbg gcc-multilib make

# 32비트 아키텍처 추가 및 업데이트
dpkg --add-architecture i386
apt update
apt install -y libc6:i386

# 파이썬 패키지 설치
python3 -m pip install --upgrade pip
pip3 install unicorn
pip3 install keystone-engine
pip3 install pwntools
pip3 install ropgadget
apt install -y libcapstone-dev

# pwndbg 설치 및 설정
git clone https://github.com/pwndbg/pwndbg
./pwndbg/setup.sh

# Terminator 설치
apt install terminator

# 루비 및 젬 패키지 설치
apt install -y ruby-full
gem install one_gadget seccomp-tools

apt-get update
apt-get install -y patchelf

# Docker 설치
apt install -y lsb-release software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
add-apt-repository \
    "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
    $(lsb_release -cs) \
    stable"
apt update
apt install -y docker-ce docker-ce-cli containerd.io

echo "==========SETUP FINISHED!!!=========="
