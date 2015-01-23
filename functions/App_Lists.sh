#!/bin/bash

# install command
install_command="sudo apt-get install -y"

################################################################################
# ia32 support librays
################################################################################
$install_command ia32-libs*

################################################################################
# building tools & librarys
################################################################################
$install_command vim-common vim-doc vim-gnome vim-gui-common vim-runtime vim-latexsuite vim-gtk vim-scripts

$install_command build-essential
$install_command exuberant-ctags 
$install_command rcs
$install_command bin86 kernel-package 
$install_command libncurses5 libncurses5-dev
$install_command g++
$install_command mesa-utils libglu1-mesa freeglut3 freeglut3-dev 
$install_command libxmu-dev libxmu-headers
$install_command libcairo2 libcairo2-dev
$install_command manpages-dev glibc-doc manpages-posix manpages-posix-dev

$install_command meld


# install wx-gtk
#$install_command libwxgtk2.8-0 libwxgtk2.8-dev wx2.8-doc wx2.8-examples python-wxgtk2.8 

# install qt4
$install_command libqt4-core libqt4-dev libqt4-gui qt4-doc qt4-designer 
$install_command libqt4-qt3support libqwtplot3d-qt4-0 libqwtplot3d-qt4-dev qt4-dev-tools qt4-qtconfig 
$install_command python-qt4 python-qt4-doc python-qt4-gl

# install java

# ffmpeg
$install_command ffmpeg 
$install_command libavcodec53 libavcodec-dev 
$install_command libavdevice53 libavdevice-dev
$install_command libavfilter0 libavfilter-dev 
$install_command libavformat53 libavformat-dev 
$install_command libavutil-dev libavutil49 
$install_command libswscale-dev libswscale2
#sudo gedit ./a.txt
################################################################################
# utils
################################################################################
$install_command sysv-rc-conf
#$install_command openssh-server
#$install_command samba smbfs autofs

# nfs
#$install_command nfs-kernel-server nfs-common portmap
#sudo dpkg-reconfigure portmap 
#sudo /etc/init.d/portmap restart

#$install_command xfsprogs
$install_command p7zip-full p7zip-rar unrar plbzip2 igz

$install_command gimp
$install_command gqview

$install_command mc
$install_command terminator
$install_command multiget
$install_command ethtool


# archivement mount
#$install_command libarchive-dev libfuse-dev libfuse2

# install music player
$install_command audacious audacious-dev audacious-plugins

# mplayer
$install_command mplayer mplayer-doc mencoder smplayer mplayer-fonts

# PDF reader
$install_command xpdf poppler-data xpdf-chinese-simplified xpdf-chinese-traditional xpdf-japanese

# thunderbird
$install_command thunderbird

# Nautilus-Elementary
$install_command nautilus-open-terminal

#virtualbox
$install_command virtualbox-4.3


#sudo add-apt-repository ppa:am-monkeyd/nautilus-elementary-ppa
#sudo apt-get update
#sudo apt-get upgrade


