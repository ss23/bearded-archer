export DEBIAN_FRONTEND=noninteractive
apt-get -y -qq update

# Set required configuration, e.g. MariaDB
mysqlpassword="__MYSQLRANDOMPASSWORD__"
echo mariadb-server-5.5 mysql-server/root_password password "$mysqlpassword" | debconf-set-selections
echo mariadb-server-5.5 mysql-server/root_password_again password "$mysqlpassword" | debconf-set-selections

apt-get -y -qq upgrade 
apt-get -y -qq dist-upgrade
apt-get -y -qq install apache2 php5 libapache2-mod-php5 mariadb-server php5-mysql git php5-gd php5-tidy php5-curl s3cmd
apt-get -y -qq autoremove
