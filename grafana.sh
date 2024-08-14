#!/bin/bash

wget gpg.key https://rpm.grafana.com/gpg.key | sudo rpm --import gpg.key

echo "[grafana]
name=grafana
baseurl=https://rpm.grafana.com
repo_gpgcheck=1
enabled=1
gpgcheck=1
gpgkey=https://rpm.grafana.com/gpg.key
sslverify=1
sslcacert=/etc/pki/tls/certs/ca-bundle.crt" > /etc/yum.repos.d/grafana.repo

sudo dnf install grafana 
sudo dnf install grafana
sudo dnf install grafana-enterprise
sudo systemctl status grafana-server.service 
sudo systemctl start grafana-server.service 
sudo systemctl enable grafana-server.service 
systemctl restart grafana-server.service
