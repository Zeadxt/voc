#!/bin/bash
url="https://raw.githubusercontent.com/Zeadxt/voc/main"
voc="https://raw.githubusercontent.com/Zeadxt/kzl/main"
MYIP=$(wget -qO- ipinfo.io/ip);
echo "Checking VPS"
CEKEXPIRED () {
    today=$(date -d +1day +%Y-%m-%d)
    Exp1=$(curl -sS ${voc}/ip | grep $MYIP | awk '{print $3}')
    if [[ $today < $Exp1 ]]; then
    echo -e "\e[32mSTATUS SCRIPT AKTIF...\e[0m"
    else
    echo -e "\e[31mSCRIPT ANDA EXPIRED!\e[0m";

    exit 0
fi
}
IZIN=$(curl -sS ${voc}/ip | awk '{print $4}' | grep $MYIP)
if [ $MYIP = $IZIN ]; then
echo -e "\e[32mPermission Accepted...\e[0m"
CEKEXPIRED
else
echo -e "\e[31mPermission Denied!\e[0m";

exit 0
fi
clear
dateFromServer=$(curl -v --insecure --silent https://google.com/ 2>&1 | grep Date | sed -e 's/< Date: //')
biji=`date +"%Y-%m-%d" -d "$dateFromServer"`
###########- COLOR CODE -##############
echo -e "$COLOR1┌─────────────────────────────────────────────────┐${NC}"
echo -e "$COLOR1 ${NC} ${COLBG1}                 ${WH}⇱ UPDATE ⇲                    ${NC} $COLOR1 $NC"
echo -e "$COLOR1 ${NC} ${COLBG1}                ${WH}⇱ DI MULAI ⇲                   ${NC} $COLOR1 $NC"
echo -e "$COLOR1└─────────────────────────────────────────────────┘${NC}"
sleep 1
clear
#hapus menu
rm -rf menu
rm -rf m-vmess
rm -rf m-vless
rm -rf m-trojan
rm -rf m-system
rm -rf m-sshovpn
rm -rf m-ssws
rm -rf m-webmin
rm -rf running
rm -rf bw
rm -rf m-tcp
rm -rf auto-reboot
rm -rf clearcache
rm -rf restart
rm -rf m-update
rm -rf m-backup
rm -rf autobackup
rm -rf limitspeed
rm -rf m-theme
rm -rf add-host
rm -rf usernew
rm -rf trial
rm -rf tendang
rm -rf member
rm -rf hapus
rm -rf cek
rm -rf autokill
rm -rf ceklim
rm -rf delete
rm -rf renew
rm -rf add-vmess
rm -rf add-vless
rm -rf add-tr
rm -rf add-ssws
rm -rf trialvmess
rm -rf trialvless
rm -rf trialtrojan
rm -rf trialssws
rm -rf renew-vmess
rm -rf renew-vless
rm -rf renew-tr
rm -rf renew-ssws
rm -rf del-vmes
rm -rf del-vless
rm -rf del-tr
rm -rf del-ssws
rm -rf cek-vmess
rm -rf cek-vless
rm -rf cek-tr
rm -rf cek-ssws
rm -rf certv2ray
rm -rf m-ip
rm -rf m-dns
rm -rf m-bot
rm -rf update
rm -rf ws-dropbear
rm -rf restore2
rm -rf backup2
rm -rf autobackup
rm -rf user
rm -rf uservless
rm -rf delete

# download menu
cd /usr/bin
rm -rf menu
rm -rf m-vmess
rm -rf m-vless
rm -rf m-trojan
rm -rf m-system
rm -rf m-sshovpn
rm -rf m-ssws
rm -rf m-webmin
rm -rf running
rm -rf bw
rm -rf m-tcp
rm -rf auto-reboot
rm -rf clearcache
rm -rf restart
rm -rf m-backup
rm -rf limitspeed
rm -rf m-theme
rm -rf usernew
rm -rf trial
rm -rf tendang
rm -rf member
rm -rf hapus
rm -rf cek
rm -rf autokill
rm -rf ceklim
rm -rf delete
rm -rf renew
rm -rf add-vmess
rm -rf add-vless
rm -rf add-tr
rm -rf add-ssws
rm -rf trialvmess
rm -rf trialvless
rm -rf trialtrojan
rm -rf trialssws
rm -rf renew-vmess
rm -rf renew-vless
rm -rf renew-tr
rm -rf renew-ssws
rm -rf del-vmes
rm -rf del-vless
rm -rf del-tr
rm -rf del-ssws
rm -rf cek-vmess
rm -rf cek-vless
rm -rf cek-tr
rm -rf cek-ssws
rm -rf certv2ray
rm -rf m-ip
rm -rf m-dns
rm -rf m-bot
rm -rf update
rm -rf ws-dropbear
rm -rf restore2
rm -rf backup2
rm -rf autobackup
rm -rf user
rm -rf uservless
rm -rf delete

wget -O /usr/bin/menu "${url}/menu/menu.sh" && chmod +x /usr/bin/menu
wget -O /usr/bin/m-vmess "${url}/menu/m-vmess.sh" && chmod +x /usr/bin/m-vmess
wget -O /usr/bin/m-vless "${url}/menu/m-vless.sh" && chmod +x /usr/bin/m-vless
wget -O /usr/bin/m-trojan "${url}/menu/m-trojan.sh" && chmod +x /usr/bin/m-trojan
wget -O /usr/bin/m-system "${url}/menu/m-system.sh" && chmod +x /usr/bin/m-system
wget -O /usr/bin/m-sshovpn "${url}/menu/m-sshovpn.sh" && chmod +x /usr/bin/m-sshovpn
wget -O /usr/bin/m-ssws "${url}/menu/m-ssws.sh" && chmod +x /usr/bin/m-ssws
wget -O /usr/bin/m-webmin "${url}/menu/m-webmin.sh" && chmod +x /usr/bin/m-webmin
wget -O /usr/bin/running "${url}/menu/running.sh" && chmod +x /usr/bin/running
wget -O /usr/bin/bw "${url}/menu/bw.sh" && chmod +x /usr/bin/bw
wget -O /usr/bin/m-tcp "${url}/menu/tcp.sh" && chmod +x /usr/bin/m-tcp
wget -O /usr/bin/auto-reboot "${url}/menu/auto-reboot.sh" && chmod +x /usr/bin/auto-reboot
wget -O /usr/bin/clearcache "${url}/menu/clearcache.sh" && chmod +x /usr/bin/clearcache
wget -O /usr/bin/restart "${url}/menu/restart.sh" && chmod +x /usr/bin/restart
wget -O /usr/bin/m-update "${url}/menu/m-update.sh" && chmod +x /usr/bin/m-update
wget -O /usr/bin/m-backup "${url}/menu/m-backup.sh" && chmod +x /usr/bin/m-backup
wget -O /usr/bin/limitspeed "${url}/ssh/limitspeed.sh" && chmod +x /usr/bin/limitspeed
wget -O /usr/bin/m-theme "${url}/menu/m-theme.sh" && chmod +x /usr/bin/m-theme
wget -O /usr/bin/add-host "${url}/ssh/add-host.sh" && chmod +x /usr/bin/add-host
wget -O /usr/bin/usernew "${url}/ssh/usernew.sh" && chmod +x /usr/bin/usernew
wget -O /usr/bin/trial "${url}/ssh/trial.sh" && chmod +x /usr/bin/trial
wget -O /usr/bin/tendang "${url}/ssh/tendang.sh" && chmod +x /usr/bin/tendang
wget -O /usr/bin/member "${url}/ssh/member.sh" && chmod +x /usr/bin/member
wget -O /usr/bin/hapus "${url}/ssh/hapus.sh" && chmod +x /usr/bin/hapus
wget -O /usr/bin/cek "${url}/ssh/cek.sh" && chmod +x /usr/bin/cek
wget -O /usr/bin/autokill "${url}/ssh/autokill.sh" && chmod +x /usr/bin/autokill
wget -O /usr/bin/ceklim "${url}/ssh/ceklim.sh" && chmod +x /usr/bin/ceklim
wget -O /usr/bin/delete "${url}/ssh/delete.sh" && chmod +x /usr/bin/add-host
wget -O /usr/bin/renew "${url}/ssh/renew.sh" && chmod +x /usr/bin/add-host
wget -O /usr/bin/add-vmess "${url}/xray/add-vmess.sh" && chmod +x /usr/bin/add-vmess
wget -O /usr/bin/add-vless "${url}/xray/add-vless.sh" && chmod +x /usr/bin/add-vless
wget -O /usr/bin/add-tr "${url}/xray/add-tr.sh" && chmod +x /usr/bin/add-tr
wget -O /usr/bin/add-ssws "${url}/xray/add-ssws.sh" && chmod +x /usr/bin/add-ssws
wget -O /usr/bin/trialvmess "${url}/xray/trialvmess.sh" && chmod +x /usr/bin/trialvmess
wget -O /usr/bin/trialvless "${url}/xray/trialvless.sh" && chmod +x /usr/bin/trialvless
wget -O /usr/bin/trialtrojan "${url}/xray/trialtrojan.sh" && chmod +x /usr/bin/trialtrojan
wget -O /usr/bin/trialssws "${url}/xray/trialssws.sh" && chmod +x /usr/bin/trialssws
wget -O /usr/bin/renew-vmess "${url}/xray/renew-vmess.sh" && chmod +x /usr/bin/renew-vmess
wget -O /usr/bin/renew-vless "${url}/xray/renew-vless.sh" && chmod +x /usr/bin/renew-vless
wget -O /usr/bin/renew-tr "${url}/xray/renew-tr.sh" && chmod +x /usr/bin/renew-tr
wget -O /usr/bin/renew-ssws "${url}/xray/renew-ssws.sh" && chmod +x /usr/bin/renew-ssws
wget -O /usr/bin/del-vmess "${url}/xray/del-vmess.sh" && chmod +x /usr/bin/del-vmess
wget -O /usr/bin/del-vless "${url}/xray/del-vless.sh" && chmod +x /usr/bin/del-vless
wget -O /usr/bin/del-tr "${url}/xray/del-tr.sh" && chmod +x /usr/bin/del-tr
wget -O /usr/bin/del-ssws "${url}/xray/del-ssws.sh" && chmod +x /usr/bin/del-ssws
wget -O /usr/bin/cek-vmess "${url}/xray/cek-vmess.sh" && chmod +x /usr/bin/cek-vmess
wget -O /usr/bin/cek-vless "${url}/xray/cek-vless.sh" && chmod +x /usr/bin/cek-vless
wget -O /usr/bin/cek-tr "${url}/xray/cek-tr.sh" && chmod +x /usr/bin/cek-tr
wget -O /usr/bin/cek-ssws "${url}/xray/cek-ssws.sh" && chmod +x /usr/bin/cek-ssws
wget -O /usr/bin/certv2ray "${url}/xray/certv2ray.sh" && chmod +x /usr/bin/certv2ray
wget -O /usr/bin/m-ip "${url}/menu/m-ip.sh" && chmod +x /usr/bin/m-ip
wget -O /usr/bin/m-dns "${url}/menu/m-dns.sh" && chmod +x /usr/bin/m-dns
wget -O /usr/bin/m-bot "${url}/menu/m-bot.sh" && chmod +x /usr/bin/m-bot
wget -O /usr/bin/update "${url}/menu/update.sh" && chmod +x /usr/bin/update
wget -O /usr/bin/backup2 "${url}/ssh/backup2.sh" && chmod +x /usr/bin/backup2
wget -O /usr/bin/restore2 "${url}/ssh/restore2.sh" && chmod +x /usr/bin/restore2
wget -O /usr/bin/ws-dropbear "${url}/sshws/ws-dropbear" && chmod +x /usr/bin/ws-dropbear
wget -O /usr/bin/autobackup "${url}/ssh/autobackup.sh" && chmod +x /usr/bin/autobackup
wget -O /usr/bin/user "${url}/xray/user.sh" && chmod +x /usr/bin/user
wget -O /usr/bin/uservless "${url}/xray/uservless.sh" && chmod +x /usr/bin/uservless
wget -O /usr/bin/delete "${url}/xray/delete.sh" && chmod +x /usr/bin/delete

chmod +x menu
chmod +x m-vmess
chmod +x m-vless
chmod +x m-trojan
chmod +x m-system
chmod +x m-sshovpn
chmod +x m-ssws
chmod +x m-webmin
chmod +x running
chmod +x bw
chmod +x m-tcp
chmod +x auto-reboot
chmod +x clearcache
chmod +x restart
chmod +x m-update
chmod +x m-backup
chmod +x limitspeed
chmod +x m-theme
chmod +x add-host
chmod +x usernew
chmod +x trial
chmod +x tendang
chmod +x member
chmod +x hapus
chmod +x cek
chmod +x autokill
chmod +x ceklim
chmod +x delete
chmod +x renew
chmod +x add-vmess
chmod +x add-vless
chmod +x add-tr
chmod +x add-ssws
chmod +x trialvmess
chmod +x trialvless
chmod +x trialtrojan
chmod +x trialssws
chmod +x renew-vmess
chmod +x renew-vless
chmod +x renew-tr
chmod +x renew-ssws
chmod +x del-vmess
chmod +x del-vless
chmod +x del-tr
chmod +x del-ssws
chmod +x cek-vmess
chmod +x cek-vless
chmod +x cek-tr
chmod +x cek-ssws
chmod +x certv2ray
chmod +x m-ip
chmod +x m-dns
chmod +x m-bot
chmod +x update
chmod +x backup2
chmod +x restore2
chmod +x autobackup
chmod +x user
chmod +x uservless
chmod +x delete
sleep 5

clear
echo -e "$COLOR1┌─────────────────────────────────────────────────┐${NC}"
echo -e "$COLOR1 ${NC} ${COLBG1}                 ${WH}⇱ UPDATE ⇲                    ${NC} $COLOR1 $NC"
echo -e "$COLOR1 ${NC} ${COLBG1}               ${WH}⇱ SELESAI....⇲                  ${NC} $COLOR1 $NC"
echo -e "$COLOR1└─────────────────────────────────────────────────┘${NC}"
sleep 1
cd
menu
