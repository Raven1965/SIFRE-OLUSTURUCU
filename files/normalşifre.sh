#!/bin/bash
if [[ $1 == güncelle ]];then
	cd files
	bash güncelleme.sh güncelle
	exit
fi
clear
cd files
bash güncelleme.sh
bash banner.sh
cd ..
echo
echo
echo
read -e -p $'\e[31m───────[ \e[97mSAYI GİRİNİZ\e[31m ]───────►  \e[0m' say
echo
echo
echo
read -e -p $'\e[31m───────[ \e[97mKAÇTANE ŞİFRE OLUŞTURULSUN?\e[31m ]───────►  \e[0m' satr
echo
echo
echo
printf "\e[32m[!]\e[97m ŞİFRE OLUŞTURULUYOR..."
echo
echo
echo
sleep 3
printf "\e[32m[✓]\e[97m ŞİFRE OLUŞTURULDU"
echo
echo
echo
printf "\e[36m///////////////////////////////////////////////////////////////////////////////"
echo
echo
tr -cd '[:alnum:]' < /dev/urandom | fold -w$say | head -n$satr
echo
printf "\e[36m///////////////////////////////////////////////////////////////////////////////"
echo
echo
echo
exit
