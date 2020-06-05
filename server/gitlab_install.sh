#!/bin/bash

sudo apt-get update
sudo apt install ca-certificates curl openssh-server


wget --content-disposition https://packages.gitlab.com/gitlab/gitlab-ce/packages/ubuntu/bionic/gitlab-ce_13.0.3-ce.0_amd64.deb/download.deb
sudo apt install ./gitlab-ce_13.0.3-ce.0_amd64.deb

sudo ln -s ~/scripts/server/gitlab_gitlab.rb /etc/gitlab/gitlab.rb
sudo ln -s ~/scripts/server/gitlab_apache.conf /etc/apache2/sites-available/gitlab.conf

sudo a2ensite /etc/apache2/sites-available/gitlab.conf

sudo systemctl restart apache2
sudo gitlab-ctl reconfigure
sudo gitlab-ctl restart
