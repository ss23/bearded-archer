apt-get -qq update

# Set required configuration, e.g. MariaDB
mysqlpassword="__MYSQLRANDOMPASSWORD__"
echo mariadb-server-5.5 mysql-server/root_password password "$mysqlpassword" | debconf-set-selections
echo mariadb-server-5.5 mysql-server/root_password_again password "$mysqlpassword" | debconf-set-selections

apt-get -qq upgrade 
apt-get -qq dist-upgrade
apt-get -qq install apache2 php5 libapache2-mod-php5 mariadb-server php5-mysql git php5-gd php5-tidy php5-curl s3cmd
apt-get -qq autoremove
