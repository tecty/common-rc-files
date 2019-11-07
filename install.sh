#!/bin/sh
set -e

# copy both config files 
cp conf/tmux.conf ~/.tmux.conf &
cp conf/ssh.conf ~/.ssh/config &

# config the ssh
mkdir -p ~/.ssh/sockets
./src/git.sh
./src/ssh_key.sh
./src/unsw.sh
