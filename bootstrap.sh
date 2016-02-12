#!/usr/bin/env bash
## Install Magerun and add to Bin folder for global execution #
echo -e "\e[31mSetting up Magerun\e[0m"
wget http://files.magerun.net/n98-magerun-latest.phar -O n98-magerun.phar >/dev/null 2>&1
echo -e "\e[31mDownload Magerun\e[0m"
chmod +x ./n98-magerun.phar
echo -e "\e[31mSet Magerun Permissions\e[0m"
cp ./n98-magerun.phar /usr/local/bin/
## Install Latest Magento New Project ##Incomplete Needs Variables##
## INSTALL MODMAN
bash < <(wget -q --no-check-certificate -O - https://raw.github.com/colinmollenhour/modman/master/modman-installer)
##cp -rf /home/vagrant/bin/modman /usr/local/bin
##cd ..