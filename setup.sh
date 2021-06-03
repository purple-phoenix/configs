apt install -y libghc-xmonad-contrib-dev

# https://stackoverflow.com/questions/60859806/chromeos-error-system-does-not-fully-support-snapd-cannot-mount-squashfs-imag
apt install libsquashfuse0 squashfuse fuse
apt install snapd

apt install curl -y
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs -y | sh


apt install neovim -y

mkdir -p $1/.xmonad $1/.config/xmobar/
$1/github/configs/xmonad/setup_xmonad_config.sh
$1/github/configs/bashrc/set_bash.sh
