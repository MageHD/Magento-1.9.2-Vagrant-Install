#!/usr/bin/env bash
echo -e "\e[31m### Starting Magento Installation\e[0m"
n98-magerun.phar install --dbHost="localhost" --dbUser="root" --dbPass="root" --dbName="scotchbox" --installSampleData="yes" --useDefaultConfigParams="yes" --magentoVersionByName="magento-mirror-1.9.2.2" --installationFolder="/var/www/public" --baseUrl="local.testing.com"
echo -e "\e[31m### Switch to Public Directory\e[0m"
cd /var/www/public
echo -e "\e[31m### Set Locale and Timezone\e[0m"
n98-magerun.phar config:set general/locale/timezone America/New_York
n98-magerun.phar config:set general/locale/code en_US
echo -e "\e[31m### Set Currency\e[0m"
n98-magerun.phar config:set currency/options/default USD
n98-magerun.phar config:set currency/options/base USD
n98-magerun.phar config:set currency/options/allow USD
echo -e "\e[31m### Disable Magento Cache\e[0m"
echo -e "\e[31m### Set Magento Symlinks\e[0m"
n98-magerun.phar dev:symlinks --on --global
