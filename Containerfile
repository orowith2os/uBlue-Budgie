FROM ghcr.io/ublue-os/base:latest
# See https://pagure.io/releng/issue/11047 for final location


# Package lists are based off of https://pagure.io/fork/joshstrobl/fedora-comps/c/3f2061cb8b124f6aa4a8c9b600de4642f3806958
RUN rpm-ostree uninstall gnome-control-center gnome-control-center-filesystem gnome-tweaks gnome-shell mutter gdm gnome-shell-extension-common 
RUN rpm-ostree install budgie-control-center budgie-desktop budgie-screensaver budgie-desktop-view network-manager-applet atril caja 
#Parole and Rythmbox aren't included here, going to instead install them from Flathub or install VLC.
