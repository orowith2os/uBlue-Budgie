FROM ghcr.io/ublue-os/base:latest
# See https://pagure.io/releng/issue/11047 for final location

COPY etc /etc
COPY usr /usr

# Package lists are based off of https://pagure.io/fork/joshstrobl/fedora-comps/c/3f2061cb8b124f6aa4a8c9b600de4642f3806958
RUN rpm-ostree install budgie-control-center budgie-desktop budgie-screensaver network-manager-applet atril caja 
#Parole and Rythmbox aren't included here, going to instead install them from Flathub or install VLC.
