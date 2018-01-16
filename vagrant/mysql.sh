#!/bin/bash
sudo rm /var/lib/apt/lists/lock
sudo rm /var/cache/apt/archives/lock
# Installing MySQL and it's dependencies, Also, setting up root password for MySQL as it will prompt to enter the password during installation
sudo apt -y --force-yes install mariadb-server php-mysql

# Cleanup the password information.
sudo mysql -u root -e "UPDATE mysql.user SET plugin = 'mysql_native_password', Password = PASSWORD('$DEFAULT_PASSWORD') WHERE User = 'root';FLUSH PRIVILEGES;"

sudo mysql --user="root" --password=$DEFAULT_PASSWORD -e "SET sds = 'America/New_York'"