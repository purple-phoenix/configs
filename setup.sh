#!/bin/bash

HOMEDIR=$1

# Xmonad
apt install -y libghc-xmonad-contrib-dev xmobar haskell-stack

# snap
# https://stackoverflow.com/questions/60859806/chromeos-error-system-does-not-fully-support-snapd-cannot-mount-squashfs-imag
apt install libsquashfuse0 squashfuse fuse
apt install snapd

# Rust
apt install -y curl
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | bash /dev/stdin -y

# Vim
apt install -y neovim

# Conda
CONDA_FILE=Anaconda3-2021.05-Linux-x86_64.sh
curl https://repo.anaconda.com/archive/$CONDA_FILE --output $HOMEDIR/Downloads/$CONDA_FILE
bash $HOMEDIR/Downloads/$CONDA_FILE -bu -p $HOMEDIR/anaconda3


#Bling
apt install -y powerline

mkdir -p $HOMEDIR/.xmonad $HOMEDIR/.config/xmobar/
$HOMEDIR/github/configs/xmonad/setup_xmonad_config.sh
$HOMEDIR/github/configs/bashrc/set_bash.sh
