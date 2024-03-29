#!/bin/bash

HOMEDIR=$1

# Xmonad
apt install -y libghc-xmonad-contrib-dev xmobar haskell-stack xmonad

apt install -y dmenu
apt install -y xterm
apt install -y nitrogen

# snap
# https://stackoverflow.com/questions/60859806/chromeos-error-system-does-not-fully-support-snapd-cannot-mount-squashfs-imag
apt install libsquashfuse0 squashfuse fuse -y
apt install snapd -y

# Rust
apt install -y curl
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | bash /dev/stdin -y

# Vim
apt install -y neovim
apt install -y libclang-dev
apt install -y openjdk-16-jdk


# Conda
CONDA_FILE=Anaconda3-2021.05-Linux-x86_64.sh
curl https://repo.anaconda.com/archive/$CONDA_FILE --output $HOMEDIR/Downloads/$CONDA_FILE
bash $HOMEDIR/Downloads/$CONDA_FILE -bu -p $HOMEDIR/anaconda3


#Bling
apt install -y powerline powerline-gitstatus

mkdir -p $HOMEDIR/.xmonad $HOMEDIR/.config/xmobar/
$HOMEDIR/github/configs/xmonad/setup_xmonad_config.sh
$HOMEDIR/github/configs/bashrc/set_bash.sh


apt-get install cmake pkg-config libfreetype6-dev libfontconfig1-dev libxcb-xfixes0-dev python3
source $HOMEDIR/.cargo/bin
cargo install alacritty

# System Control
## Audio
apt install -y pavucontrol
# Mounting
apt install -y cifs-utils
# RDP
apt install -y remmina
#VPN
apt install -y openconnect


# Autocompletion
curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o ~/.git-completion.bash
