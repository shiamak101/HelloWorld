#!/usr/bin/env bash
#update and install

apt-get update
apt-get install -y apache2

# point /var/www at /vagrant munt
if ! [ -L /var/www ]; then
	rm -rf /var/www
	ln -fs /vagrant /var/www
fi


#restart apache
/etc/init.d/apache2 restart

