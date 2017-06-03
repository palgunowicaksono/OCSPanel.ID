#!/bin/bash
# OCSPanel.ID Additional Script (Support CentOS and Debian)
# Installing: Webmin, Apache2, IonCube Loader, and PHP
# Copyright 2017, OCSPanel.ID
# ================================================
# Script auto create trial user SSH
# yg akan expired setelah 1 hari



Login=trial-`</dev/urandom tr -dc A-Z0-9 | head -c2`
hari="1"
MYIP=`wget icanhazip.com -qO -`
Pass=`</dev/urandom tr -dc a-f0-9 | head -c4`
useradd -e `date -d "$hari days" +"%Y-%m-%d"` -s /bin/false -M $Login
echo -e "$Pass\n$Pass\n"|passwd $Login &> /dev/null
echo -e ""
echo -e "========= Create Trial SSH ========="
echo -e "IP Host      : $MYIP"
echo -e "Port OpenSSH : 22"
echo -e "Port Dropbear: 80, 109, 443"
echo -e "Port Squid   : 3128, 8000, 8080"
echo -e "Username     : $Login"
echo -e "Password     : $Pass"
echo -e "================================="
echo -e ""
