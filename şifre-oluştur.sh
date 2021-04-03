#!/bin/bash
kontrol=$(which openssl-tool |wc -l)
if [[ $kontrol == 1 ]];then
        echo
        echo
        echo
        printf "\e[32m[✓]\e[97m GEREKLİ PAKET KURLUYOR"
        echo
        echo
        echo
        pkg install openssl-tool
fi
if [[ $1 == güncelle ]];then
	cd files
	bash güncelleme.sh güncelle
	exit
fi
kontrol=$(which termux-tts-speak termux-vibrate |wc -l)
if [[ $kontrol == 0 ]];then
	echo
	echo
	echo
	printf "\e[32m[✓]\e[97m TERMUX-APİ PAKETİ KURLUYOR"
	echo
	echo
	echo
	pkg install termux-api -y
fi
clear
cd files
bash güncelleme.sh
bash banner.sh
echo
echo
echo
printf "
\e[31m[\e[97m1\e[31m]\e[97m ────────── \e[32mZAYIF ŞİFRE\e[97m

\e[31m[\e[97m2\e[31m]\e[97m ────────── \e[32mNORMAL ŞİFRE\e[97m

\e[31m[\e[97m3\e[31m]\e[97m ────────── \e[32mGÜÇLÜ ŞİFRE\e[97m

\e[31m[\e[97mX\e[31m]\e[97m ────────── \e[31mÇIKIŞ\e[97m
"
echo
echo
echo
read -e -p $'\e[31m───────[ \e[97mSEÇENEK GİRİNİZ\e[31m ]───────►  \e[0m' secim
if [[ $secim == 1 ]];then
	bash zayıfşifre.sh
	exit
elif [[ $secim == 2 ]];then
	bash normalşifre.sh
	exit
elif [[ $secim == 3 ]];then
	bash güclüşifre.sh
	exit
elif [[ $secim == x || $secim == X ]];then
	echo
	echo
	termux-vibrate -d 55
	echo
	printf "\e[31m[!]\e[97m ÇIKIŞ YAPILDI"
	echo
	echo
	echo
	exit
else
	echo
	echo
	echo
	printf "\e[31m[!]\e[97m HATALI SEÇİM"
	echo
	echo
	echo
	sleep 2
	bash phishing_attack.sh
fi

	

