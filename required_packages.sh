#!/bin/bash

apt-get update

if [ "$?" -ne "0" ]; then
exit 1;
fi
apt-get install -y apt-transport-https
apt-get remove -y resolvconf openresolv network-manager
apt-get install -y curl libcurl4-openssl-dev build-essential postfix postfix-mysql postfix-pcre procmail apache2 mysql-server git gnupg openssh-server openssl python-virtualenv python-pip python-lxml python-dev libjpeg-dev tor torsocks dnsutils
if [ "$?" -ne "0" ]; then
exit 1;
fi

exit 0;