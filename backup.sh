#!/bin/bash

# ------ update & upgrade first
apt-get update && apt-get upgrade && apt-get dist-upgrade && \

# ------ remove libreoffice & install wps
apt-get remove libreoffice-* && \

# ------ autoclean & autoremove file cache
apt-get autoremove && apt-get autoclean all && \

# ----- install ntfs-config for automount ntfs partition
apt-get install ntfs-config && \

# ------ install pip & git
apt-get install pip && apt-get install git && \

# ------ tweak
apt-get install preload && \

echo vm.swappiness=0 >> /etc/sysctl.conf && echo vm.swappiness=0 >> /etc/modprobe.d/bad_list && \
touch .gtkrc-2.0 && echo gtk-menu-popup-delay=0 && \

# ------ tool general
apt-get install ruby gcc g++ python2.7 python3 python-pip python-dev python-software-properties git libssl-dev libffi-dev build-essential libpcap-dev libpcre3-dev libdumbnet-dev bison flex liblzma-dev libmysqlclient-dev mysql-client autoconf libtool automake autotools-dev libltdl-dev youtube-dl apache2 mysql-server openssh-server ethtool php libapache2-mod-php php-mysql php-curl php-gd php-json php-mcrypt php-zip p7zip-full unrar-free vim software-properties-common apt-transport-https ca-certificates default-jdk default-jre -y winehq-stable && \

# ------ [tool ctf] network anal 
apt-get install netdiscover curl && \

# ------  [tool ctf] steganography 
apt-get install foremost binwalk libimage-exiftool-perl afl checksecurity && \

# ------ fixing 
apt-get update --fix-missing && \

# ------  [tool ctf] pwn
pip install --upgrade pip && pip install --upgrade pwntools && \

# ------ chrome 
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -O /tmp/google-chrome-stable_current_amd64.deb && dpkg -i /tmp/google-chrome-stable_current_amd64.deb && apt install -f && rm /tmp/google-chrome-stable_current_amd64.deb && \
# ------ fixing 
apt-get install -f && \
# ------ removing no use
apt-get autoremove -y && \
# ------ updating again
apt-get update && \
# ------ upgrading again
apt-get dist-upgrade -y && \

# ----- install library
apt-get install python-dev python-pip libncurses5-dev git && \

# ------ install uck for remastering Codernate Linux 3.0 
apt-get install uck && \

# ------ install inkscape for design
apt-get install inkscape && \

# ------ install vlc music player
apt-get install vlc && \

# ------ install firefox esr for penetration & remove firefox quantum
apt-get install firefox-esr && \

# ------ install bleachbit for tweak & clear cache
apt-get install bleachbit && \

# ------ cleaning
rm /tmp/* && apt-get clean && \

# ------ removing no use
apt-get autoremove -y && \
# ------ updating again
apt-get update && \
# ------ upgrading again
apt-get upgrade -y && \
# ------ cleaning
rm -Rf /tmp/* && apt-get clean && cd
# ------ dist-upgrade
apt-get dist-upgrade && \

# ------ Install Windows Core fonts, Microsoft’s ClearType fonts, Tahoma and Segoe UI, Wine Tahoma, WPS Office Fonts (Symbol fonts) 
mkdir -p /usr/share/fonts/truetype/msttcorefonts/ && cd /tmp/ && apt-get install ttf-mscorefonts-installer && \
wget https://gist.github.com/maxwelleite/10774746/raw/ttf-vista-fonts-installer.sh -q -O - | bash && \
wget https://gist.githubusercontent.com/maxwelleite/913b6775e4e408daa904566eb375b090/raw/cbfd8eb70184fa509fcab37dad7905676c93d587/ttf-ms-tahoma-installer.sh -q -O - | bash && \
wget https://gist.github.com/maxwelleite/ee5a1a4222dd43c8b4af5c99ed72b3fc/raw/ebb31b052f0bb95cfa361d7826b2dbf993820d0b/ttf-wine-tahoma-installer.sh -q -O - | bash && \
ln -s /usr/share/wine/fonts/tahoma.ttf /usr/share/fonts/truetype/msttcorefonts/ && ln -s /usr/share/wine/fonts/tahomabd.ttf /usr/share/fonts/truetype/msttcorefonts/ && fc-cache -f /usr/share/fonts/truetype/msttcorefonts/ && \
cd /usr/share/fonts/truetype/msttcorefonts/ && \
wget http://www.manutech.com.br/downloads/DIGISAT/VERS%C3%95ES/InstallG5/Fontes/segoeui.ttf -O segoeui.ttf && \
wget http://www.manutech.com.br/downloads/DIGISAT/VERS%C3%95ES/InstallG5/Fontes/segoeuib.ttf -O segoeuib.ttf && \
wget http://www.manutech.com.br/downloads/DIGISAT/VERS%C3%95ES/InstallG5/Fontes/segoeuii.ttf -O segoeuii.ttf && \
wget http://www.manutech.com.br/downloads/DIGISAT/VERS%C3%95ES/InstallG5/Fontes/segoeuil.ttf -O segoeuil.ttf && \
wget http://www.manutech.com.br/downloads/DIGISAT/VERS%C3%95ES/InstallG5/Fontes/segoeuiz.ttf -O segoeuiz.ttf && \
wget http://www.manutech.com.br/downloads/DIGISAT/VERS%C3%95ES/InstallG5/Fontes/segoeuisl.ttf -O segoeuisl.ttf && \
fc-cache -f /usr/share/fonts/truetype/msttcorefonts/ && \
cd /tmp && \
wget -O ttf-wps-fonts-master.zip https://github.com/IamDH4/ttf-wps-fonts/archive/master.zip && \
unzip -LL ttf-wps-fonts-master.zip && \
cd ttf-wps-fonts-master && \
./install.sh -y && \
# ------ fixing 
apt-get install -f && \

#export PS1="\[$(tput bold)\]\[\033[38;5;214m\][\[$(tput sgr0)\]\[\033[38;5;252m\]@\[$(tput sgr0)\]\[\033[38;5;197m\]\u\[$(tput sgr0)\]\[\033[38;5;252m\]!\[$(tput sgr0)\]\[\033[38;5;197m\]\h\[$(tput bold)\]\[\033[38;5;214m\]]\[$(tput sgr0)\]\[\033[38;5;15m\]:\[$(tput sgr0)\] \[$(tput bold)\]\[$(tput sgr0)\]\[\033[38;5;252m\][\[$(tput sgr0)\]\[\033[38;5;37m\]\w\[$(tput sgr0)\]\[\033[38;5;252m\]]\[$(tput sgr0)\]\[\033[38;5;214m\]:\[$(tput sgr0)\]\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]"

#Edit dari http://bashrcgenerator.com/
PS1="[\[$(tput sgr0)\]\[\033[38;5;154m\]\u\[$(tput sgr0)\]\[\033[38;5;15m\]:\[$(tput sgr0)\]\[\033[38;5;148m\]\h\[$(tput sgr0)\]\[\033[38;5;15m\]@\[$(tput sgr0)\]\[\033[38;5;142m\]\w\[$(tput sgr0)\]\[\033[38;5;15m\]] \t\n \[$(tput bold)\]\[$(tput sgr0)\]\[\033[38;5;154m\]ꔷ\[$(tput sgr0)\]\[$(tput sgr0)\]\[\033[38;5;15m\]\[$(tput bold)\]\[$(tput sgr0)\]\[\033[38;5;148m\]ꔷ\[$(tput sgr0)\]\[$(tput sgr0)\]\[\033[38;5;15m\]\[$(tput bold)\]\[$(tput sgr0)\]\[\033[38;5;142m\]ꔷ\[$(tput sgr0)\]\[$(tput sgr0)\]\[\033[38;5;15m\] \$? \\$ \[$(tput sgr0)\]"
#PS1="\[$(tput bold)\]\[\033[38;5;161m\]\d\[$(tput sgr0)\]\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput bold)\]\[$(tput sgr0)\]\[\033[38;5;43m\]\T\[$(tput sgr0)\]\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput bold)\]\[$(tput sgr0)\]\[\033[38;5;154m\]\w\[$(tput sgr0)\]\[$(tput sgr0)\]\[\033[38;5;15m\]\n\[$(tput bold)\]\[$(tput sgr0)\]\[\033[38;5;102m\]\\$\[$(tput sgr0)\]\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput bold)\]\[$(tput sgr0)\]\[\033[38;5;220m\]\u\[$(tput sgr0)\]\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput bold)\]\[$(tput sgr0)\]\[\033[38;5;44m\]@\[$(tput sgr0)\]\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput bold)\]\[$(tput sgr0)\]\[\033[38;5;161m\]\h\[$(tput sgr0)\]\[$(tput sgr0)\]\[\033[38;5;15m\] : \[$(tput bold)\]\[$(tput sgr0)\]\[\033[38;5;154m\]\W\[$(tput sgr0)\]\[$(tput sgr0)\]\[\033[38;5;15m\] \n\[$(tput bold)\]\[$(tput sgr0)\]\[\033[38;5;220m\]>\[$(tput sgr0)\]\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]"
