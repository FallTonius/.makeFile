prog:
	sudo apt update
	sudo apt -y upgrade
	sudo snap install postman
	wget https://downloads.slack-edge.com/linux_releases/slack-desktop-4.0.2-amd64.deb
    sudo apt install ./slack-desktop-*.deb
    wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
    sudo dpkg -i --force-depends google-chrome-stable_current_amd64.deb
    sudo apt-get install nitroshare
    sudo apt update
    sudo apt install sublime-text
    sudo add-apt-repository ppa:nilarimogard/webupd8
    sudo apt update && sudo apt install gnome-twitch
    sudo apt remove gnome-twitch
utils:
    sudo apt update
    sudo apt -y upgrade
    sudo apt -y install curl dirmngr apt-transport-https lsb-release ca-certificates
    curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
    sudo apt -y install nodejs
    curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
    echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
    sudo apt-get update && sudo apt-get install yarn
    sudo apt install git
    sudo apt install nginx
    sudo service nginx start
    sudo apt install redis-server
    sudo apt-get install software-properties-common python-software-properties
    sudo add-apt-repository -y ppa:ondrej/php
    sudo apt-get update
    sudo apt-get install php7.2 php7.2-cli php7.2-common
    sudo apt-get install php7.2-curl php7.2-gd php7.2-json php7.2-mbstring php7.2-intl php7.2-mysql php7.2-xml php7.2-zip php7.2-cli php7.2-fpm
    sudo service php7.2-fpm start
    sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password password 1111'
    sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password 1111'
    sudo apt-get -y install mysql-server
    sudo apt-get install composer
    sudo apt install php-codesniffer
    sudo apt-get install php-xdebug
www:
    sudo usermod -aG www-data vasily
    cd /var/www/ && sudo chown -R www-data:www-data .
    cd /var/www/ &&  sudo find . -type f -exec chmod 664 {} \;
    cd /var/www/ &&  sudo find . -type d -exec chmod 775 {} \;
    sudo ln -s /etc/nginx/sites-available/beautyboxl.ru /etc/nginx/sites-enabled/
    sudo usermod -a -G www-data vasily
    sudo apt update
    sudo apt install apt-transport-https ca-certificates curl software-properties-common
    curl -fsSL https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
    sudo add-apt-repository "deb https://download.sublimetext.com/ apt/stable/"
    ssh-keygen
    sudo cat /root/.ssh/id_rsa.pub
    cat ~/.ssh/id_rsa.pub
    ssh-keyscan -t rsa github.com >> ~/.ssh/known_hosts
    ssh -T git@github.com
    cd /var/www/ && sudo git clone git@github.com:SPITIRU/beautybox.git
    cd /var/www/ && git@github.com:SPITIRU/beautybox-crm.git
    openssl req -x509 -nodes -days 365 -newkey rsa:4096 -keyout /etc/nginx/ssl/beautyboxl.key -out /etc/nginx/ssl/beautyboxl.crt
    openssl dhparam -out /etc/nginx/ssl/dhparam.pem 4096






