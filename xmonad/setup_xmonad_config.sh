HOMEDIR=$1
XMONADPATH=$HOMEDIR/github/configs/xmonad
cp $XMONADPATH/xmonad.hs $HOME/.xmonad/xmonad.hs
cp $XMONADPATH/xmobarrc $HOME/.config/xmobar/xmobarrc
cp $XMONADPATH/gnome_session /usr/share/gnome-session/sessions/xmonad.session
cp $XMONADPATH/xmonad.desktop /usr/share/applications/xmonad.desktop
