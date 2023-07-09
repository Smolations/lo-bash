#!/usr/bin/bash

# could eventually adapt this to install on os x as well...

apt-get update

# install shellspec
git clone https://github.com/shellspec/shellspec.git --branch=0.28.1 /workspaces/shellspec
ln -s /workspaces/shellspec/shellspec /usr/local/bin/

# setup kcov for shellspec coverage
apt-get install -y cmake binutils-dev libssl-dev libcurl4-openssl-dev zlib1g-dev libdw-dev libiberty-dev
git clone https://github.com/SimonKagstrom/kcov /workspaces/kcov
cd /workspaces/kcov
mkdir build
cd build
cmake -Wno-dev ..
make
make install
