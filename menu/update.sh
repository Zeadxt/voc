#!/bin/bash
dateFromServer=$(curl -v --insecure --silent https://google.com/ 2>&1 | grep Date | sed -e 's/< Date: //')
biji=`date +"%Y-%m-%d" -d "$dateFromServer"`
url="https://raw.githubusercontent.com/Zeadxt/voc/main"
voc="https://raw.githubusercontent.com/Zeadxt/kzl/main"
###########- COLOR CODE -##############
echo -e " [INFO] Downloading File"
sleep 2
wget -q -O /usr/bin/menu "${url}/menu/menu.sh" && chmod +x /usr/bin/menu
wget -q -O /usr/bin/m-ip "${url}/menu/m-ip.sh" && chmod +x /usr/bin/m-ip
wget -q -O /usr/bin/m-dns "${url}/menu/m-dns.sh" && chmod +x /usr/bin/m-dns
wget -q -O /usr/bin/m-bot "${url}/menu/m-bot.sh" && chmod +x /usr/bin/m-bot
wget -q -O /usr/bin/update "${url}/menu/update.sh" && chmod +x /usr/bin/update
wget -q -O /usr/bin/m-theme "${url}/menu/m-theme.sh" && chmod +x /usr/bin/m-theme
wget -q -O /usr/bin/m-vmess "${url}/menu/m-vmess.sh" && chmod +x /usr/bin/m-vmess
wget -q -O /usr/bin/m-vless "${url}/menu/m-vless.sh" && chmod +x /usr/bin/m-vless
wget -q -O /usr/bin/m-trojan "${url}/menu/m-trojan.sh" && chmod +x /usr/bin/m-trojan
wget -q -O /usr/bin/m-system "${url}/menu/m-system.sh" && chmod +x /usr/bin/m-system
wget -q -O /usr/bin/m-sshovpn "${url}/menu/m-sshovpn.sh" && chmod +x /usr/bin/m-sshovpn
wget -q -O /usr/bin/m-ssws "${url}/menu/m-ssws.sh" && chmod +x /usr/bin/m-ssws
wget -q -O /usr/bin/m-webmin "${url}/menu/m-webmin.sh" && chmod +x /usr/bin/m-webmin
wget -q -O /usr/bin/running "${url}/menu/running.sh" && chmod +x /usr/bin/running
wget -q -O /usr/bin/bw "${url}/menu/bw.sh" && chmod +x /usr/bin/bw
wget -q -O /usr/bin/m-tcp "${url}/menu/tcp.sh" && chmod +x /usr/bin/m-tcp
wget -q -O /usr/bin/auto-reboot "${url}/menu/auto-reboot.sh" && chmod +x /usr/bin/auto-reboot
wget -q -O /usr/bin/clearcache "${url}/menu/clearcache.sh" && chmod +x /usr/bin/clearcache
wget -q -O /usr/bin/restart "${url}/menu/restart.sh" && chmod +x /usr/bin/restart
wget -q -O /usr/bin/m-backup "${url}/menu/m-backup.sh" && chmod +x /usr/bin/m-backup
#wget -q -O /usr/bin/autobackup "${url}/ssh/autobackup.sh" && chmod +x /usr/bin/autobackup
wget -q -O /usr/bin/limitspeed "${url}/ssh/limitspeed.sh" && chmod +x /usr/bin/limitspeed
wget -q -O /usr/bin/add-host "${url}/ssh/add-host.sh" && chmod +x /usr/bin/add-host
wget -q -O /usr/bin/usernew "${url}/ssh/usernew.sh" && chmod +x /usr/bin/usernew
wget -q -O /usr/bin/trial "${url}/ssh/trial.sh" && chmod +x /usr/bin/trial
wget -q -O /usr/bin/tendang "${url}/ssh/tendang.sh" && chmod +x /usr/bin/tendang
wget -q -O /usr/bin/member "${url}/ssh/member.sh" && chmod +x /usr/bin/member
wget -q -O /usr/bin/hapus "${url}/ssh/hapus.sh" && chmod +x /usr/bin/hapus
wget -q -O /usr/bin/cek "${url}/ssh/cek.sh" && chmod +x /usr/bin/cek
wget -q -O /usr/bin/autokill "${url}/ssh/autokill.sh" && chmod +x /usr/bin/autokill
wget -q -O /usr/bin/ceklim "${url}/ssh/ceklim.sh" && chmod +x /usr/bin/ceklim
wget -q -O /usr/bin/delete "${url}/ssh/delete.sh" && chmod +x /usr/bin/add-host
wget -q -O /usr/bin/renew "${url}/ssh/renew.sh" && chmod +x /usr/bin/add-host
wget -q -O /usr/bin/add-vmess "${url}/xray/add-vmess.sh" && chmod +x /usr/bin/add-vmess
wget -q -O /usr/bin/list-user "${url}/xray/list-user" && chmod +x /usr/bin/list-user
wget -q -O /usr/bin/add-vless "${url}/xray/add-vless.sh" && chmod +x /usr/bin/add-vless
wget -q -O /usr/bin/add-tr "${url}/xray/add-tr.sh" && chmod +x /usr/bin/add-tr
wget -q -O /usr/bin/add-ssws "${url}/xray/add-ssws.sh" && chmod +x /usr/bin/add-ssws
wget -q -O /usr/bin/trialvmess "${url}/xray/trialvmess.sh" && chmod +x /usr/bin/trialvmess
wget -q -O /usr/bin/trialvless "${url}/xray/trialvless.sh" && chmod +x /usr/bin/trialvless
wget -q -O /usr/bin/trialtrojan "${url}/xray/trialtrojan.sh" && chmod +x /usr/bin/trialtrojan
wget -q -O /usr/bin/trialssws "${url}/xray/trialssws.sh" && chmod +x /usr/bin/trialssws
wget -q -O /usr/bin/renew-vmess "${url}/xray/renew-vmess.sh" && chmod +x /usr/bin/renew-vmess
wget -q -O /usr/bin/renew-vless "${url}/xray/renew-vless.sh" && chmod +x /usr/bin/renew-vless
wget -q -O /usr/bin/renew-tr "${url}/xray/renew-tr.sh" && chmod +x /usr/bin/renew-tr
wget -q -O /usr/bin/renew-ssws "${url}/xray/renew-ssws.sh" && chmod +x /usr/bin/renew-ssws
wget -q -O /usr/bin/del-vmess "${url}/xray/del-vmess.sh" && chmod +x /usr/bin/del-vmess
wget -q -O /usr/bin/del-vless "${url}/xray/del-vless.sh" && chmod +x /usr/bin/del-vless
wget -q -O /usr/bin/del-tr "${url}/xray/del-tr.sh" && chmod +x /usr/bin/del-tr
wget -q -O /usr/bin/del-ssws "${url}/xray/del-ssws.sh" && chmod +x /usr/bin/del-ssws
wget -q -O /usr/bin/cek-vmess "${url}/xray/cek-vmess.sh" && chmod +x /usr/bin/cek-vmess
wget -q -O /usr/bin/cek-vless "${url}/xray/cek-vless.sh" && chmod +x /usr/bin/cek-vless
wget -q -O /usr/bin/cek-tr "${url}/xray/cek-tr.sh" && chmod +x /usr/bin/cek-tr
wget -q -O /usr/bin/cek-ssws "${url}/xray/cek-ssws.sh" && chmod +x /usr/bin/cek-ssws
wget -q -O /usr/bin/certv2ray "${url}/xray/certv2ray.sh" && chmod +x /usr/bin/certv2ray
wget -q -O /usr/bin/m-update "${url}/menu/m-update.sh" && chmod +x /usr/bin/m-update
wget -q -O /usr/bin/user "${url}/xray/user.sh" && chmod +x /usr/bin/user
wget -q -O /usr/bin/backup2 "${url}/ssh/backup2.sh" && chmod +x /usr/bin/backup2
wget -q -O /usr/bin/restore2 "${url}/ssh/restore2.sh" && chmod +x /usr/bin/restore2
echo -e " [INFO] Dwonload File Successfully"
sleep 2
exit
