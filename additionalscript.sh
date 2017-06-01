#!/bin/bash
# OCSPanel.ID Additional Script (Support CentOS and Debian)
# Installing: Webmin, Apache2, IonCube Loader, and PHP
# Copyright 2017, OCSPanel.ID. All Rights Reserved

# Pemilihan Distro Linux
cd
if [[ -e /etc/debian_version ]]; then
OS=debian
else
OS=centos
fi

# Pemasangan Webmin
if [[ "$OS" = 'debian' ]]; then
apt-get remove webmin -y
apt-get install perl libnet-ssleay-perl openssl libauthen-pam-perl libpam-runtime libio-pty-perl apt-show-versions python -y
wget http://prdownloads.sourceforge.net/webadmin/webmin_1.840_all.deb
dpkg --install webmin_1.840_all.deb
rm webmin_1.840_all.deb
else
yum remove webmin -y
yum -y install perl perl-Net-SSLeay openssl perl-IO-Tty
wget http://prdownloads.sourceforge.net/webadmin/webmin-1.840-1.noarch.rpm
rpm -i webmin-1.840-1.noarch.rpm;
rm webmin-1.840-1.noarch.rpm
fi

# Konfigurasi Webmin
sed -i 's/ssl=1/ssl=0/g' /etc/webmin/miniserv.conf
chattr +i /etc/webmin/miniserv.conf
service webmin restart
chkconfig webmin on

# Pemasangan Apache2 dan PHP


# Konfigurasi Apache2 dan PHP


# Pemasangan Script Tambahan


# Mentok Otak Sampe Sini Dulu
