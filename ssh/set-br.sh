#!/bin/bash
# ==========================================
# Color
RED='\033[0;31m'
NC='\033[0m'
GREEN='\033[0;32m'
ORANGE='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
LIGHT='\033[0;37m'
url="https://raw.githubusercontent.com/Zeadxt/voc/main"
voc="https://raw.githubusercontent.com/Zeadxt/kzl/main"
# ==========================================
# Getting
MYIP=$(wget -qO- ipinfo.io/ip);
echo "Checking VPS"

apt install rclone -y
printf "q\n" | rclone config
wget -O /root/.config/rclone/rclone.conf "${url}/ssh/rclone.conf"
git clone https://github.com/magnific0/wondershaper.git
cd wondershaper
make install
cd
rm -rf wondershaper
echo > /home/limit
apt install msmtp-mta ca-certificates bsd-mailx -y
cat<<EOF>>/etc/msmtprc
defaults
tls on
tls_starttls on
tls_trust_file /etc/ssl/certs/ca-certificates.crt
account default
host smtp.gmail.com
port 587
auth on
user backupsmtp93@gmail.com
from backupsmtp93@gmail.com
password cqtrnfqudtipqasf
logfile ~/.msmtp.log
EOF
chown -R www-data:www-data /etc/msmtprc
cd /usr/bin
wget -O autobackup "${url}/ssh/autobackup.sh"
wget -O backup2 "${url}/ssh/backup2.sh"
wget -O restore2 "${url}/ssh/restore2.sh"
wget -O strt "${url}/ssh/strt.sh"
chmod +x autobackup
chmod +x backup2
chmod +x restore2
chmod +x strt
cd
rm -f /root/set-br.sh
