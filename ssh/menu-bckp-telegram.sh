#!/bin/bash
dateFromServer=$(curl -v --insecure --silent https://google.com/ 2>&1 | grep Date | sed -e 's/< Date: //')
biji=`date +"%Y-%m-%d" -d "$dateFromServer"`
url="https://raw.githubusercontent.com/Zeadxt/voc/main"
voc="https://raw.githubusercontent.com/Zeadxt/kzl/main"
###########- COLOR CODE -##############
colornow=$(cat /etc/tarap/theme/color.conf)
NC="\e[0m"
RED="\033[0;31m"
COLOR1="$(cat /etc/tarap/theme/$colornow | grep -w "TEXT" | cut -d: -f2|sed 's/ //g')"
COLBG1="$(cat /etc/tarap/theme/$colornow | grep -w "BG" | cut -d: -f2|sed 's/ //g')"
WH='\033[1;37m'
###########- END COLOR CODE -##########

BURIQ () {
    curl -sS ${voc}/ip > /root/tmp
    data=( `cat /root/tmp | grep -E "^### " | awk '{print $2}'` )
    for user in "${data[@]}"
    do
    exp=( `grep -E "^### $user" "/root/tmp" | awk '{print $3}'` )
    d1=(`date -d "$exp" +%s`)
    d2=(`date -d "$biji" +%s`)
    exp2=$(( (d1 - d2) / 86400 ))
    if [[ "$exp2" -le "0" ]]; then
    echo $user > /etc/.$user.ini
    else
    rm -f /etc/.$user.ini > /dev/null 2>&1
    fi
    done
    rm -f /root/tmp
}

MYIP=$(curl -sS ipv4.icanhazip.com)
Name=$(curl -sS ${voc}/ip | grep $MYIP | awk '{print $2}')
echo $Name > /usr/local/etc/.$Name.ini
CekOne=$(cat /usr/local/etc/.$Name.ini)

Bloman () {
if [ -f "/etc/.$Name.ini" ]; then
CekTwo=$(cat /etc/.$Name.ini)
    if [ "$CekOne" = "$CekTwo" ]; then
        res="Expired"
    fi
else
res="Permission Accepted..."
fi
}

PERMISSION () {
    MYIP=$(curl -sS ipv4.icanhazip.com)
    IZIN=$(curl -sS ${voc}/ip | awk '{print $4}' | grep $MYIP)
    if [ "$MYIP" = "$IZIN" ]; then
    Bloman
    else
    res="Permission Denied!"
    fi
    BURIQ
}
red='\e[1;31m'
green='\e[1;32m'
NC='\e[0m'
green() { echo -e "\\033[32;1m${*}\\033[0m"; }
red() { echo -e "\\033[31;1m${*}\\033[0m"; }
PERMISSION
if [ -f /home/needupdate ]; then
red "Your script need to update first !"
exit 0
elif [ "$res" = "Permission Accepted..." ]; then
echo -ne
else
red "Permission Denied!"
exit 0
fi

clear
function bckpbot(){
clear
IP=$(curl -sS ipv4.icanhazip.com);
date=$(date +"%Y-%m-%d")
domain=$(cat /etc/xray/domain)



clear
echo -e "[ ${green}INFO${NC} ] Create for database"
read -rp "Enter Token (Creat on Botfather) : " -e toket
read -rp "Enter Chat id, Channel, Group Or Your Id  : " -e id_chat
echo -e "token=$toket" >> /root/botapi.conf
echo -e "chat_id=$id_chat" >> /root/botapi.conf
sleep 1
clear
echo -e "[ ${green}INFO${NC} ] Processing... "
mkdir -p /root/backup
sleep 1

cp -r /root/.acme.sh /root/backup/ &> /dev/null
cp /etc/passwd /root/backup/ &> /dev/null
cp /etc/group /root/backup/ &> /dev/null
cp -r /var/lib/scrz-prem/ /root/backup/scrz-prem &> /dev/null
cp -r /etc/xray /root/backup/xray &> /dev/null
cp -r /etc/nginx/conf.d /root/backup/nginx &> /dev/null
cp -r /home/vps/public_html /root/backup/public_html &> /dev/null
cp -r /etc/cron.d /root/backup/cron.d &> /dev/null
cp /etc/crontab /root/backup/crontab &> /dev/null
cd /root
zip -r $IP.zip backup > /dev/null 2>&1

curl -F chat_id="$id_chat" -F document=@"$IP.zip" -F caption="Thank You For Using Our Service
Your Domain : $domain
Date       : $date
Your IP VPS  : $IP" https://api.telegram.org/bot$token/sendDocument &> /dev/null

rm -fr /root/backup &> /dev/null
rm -fr /root/user-backup &> /dev/null
rm -f /root/$NameUser.zip &> /dev/null
rm -f /root/$IP.zip &> /dev/null

echo " Please Check Your Channel"
echo -e ""

read -n 1 -s -r -p "Press any key to back on menu"
menu
}
function autobckpbot(){
clear
cat > /etc/cron.d/bckp_otm <<-END
SHELL=/bin/sh
PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin
0 5 * * * root /usr/bin/bckp
END
service cron restart >/dev/null 2>&1
service cron reload >/dev/null 2>&1

echo -e "${BIGreen}Auto Backup Start  Daily 05.00 AM${NC} "
echo -e ""
read -n 1 -s -r -p "Press any key to back on menu"
menu
