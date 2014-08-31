apt-get -qq update
apt-get -qq upgrade 
apt-get -qq dist-upgrade
apt-get -qq install apache2 php5 libapache2-mod-php5 mariadb-server php5-mysql git php5-gd php5-tidy php5-curl s3cmd
apt-get -qq autoremove
