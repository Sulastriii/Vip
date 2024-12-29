#!/bin/bash
sysctl -w net.ipv6.conf.all.disable_ipv6=1 >/dev/null 2>&1
sysctl -w net.ipv6.conf.default.disable_ipv6=1 >/dev/null 2>&1
REPO="https://raw.githubusercontent.com/Sulastriii/vip/main/"
function CEKIP () {
MYIP=$(curl -sS ipv4.icanhazip.com)
IPVPS=$(curl -sS https://raw.githubusercontent.com/Sulastriii/izin/main/ip | grep $MYIP | awk '{print $4}')
if [[ $MYIP == $IPVPS ]]; then
domain
Pasang
else
  key2
  domain
  Pasang
fi
}
clear
red='\e[1;31m'
green='\e[0;32m'
yell='\e[1;33m'
tyblue='\e[1;36m'
NC='\033[0m'
purple() { echo -e "\\033[35;1m${*}\${NC}"; }
tyblue() { echo -e "\\033[36;1m${*}\${NC}"; }
yellow() { echo -e "\\033[33;1m${*}\${NC}"; }
green() { echo -e "\\033[32;1m${*}\${NC}"; }
red() { echo -e "\\033[31;1m${*}\${NC}"; }
cd /root
if [ "${EUID}" -ne 0 ]; then
echo "You need to run this script as root"
exit 1
fi
if [ "$(systemd-detect-virt)" == "openvz" ]; then
echo "OpenVZ is not supported"
exit 1
fi
localip=$(hostname -I | cut -d\  -f1)
hst=( `hostname` )
dart=$(cat /etc/hosts | grep -w `hostname` | awk '{print $2}')
if [[ "$hst" != "$dart" ]]; then
echo "$localip $(hostname)" >> /etc/hosts
fi
secs_to_human() {
echo "Installation time : $(( ${1} / 3600 )) hours $(( (${1} / 60) % 60 )) minute's $(( ${1} % 60 )) seconds"
}
mkdir -p /etc/xray
mkdir -p /var/lib/ >/dev/null 2>&1
echo "IP=" >> /var/lib/ipvps.conf
clear
echo -e "${YELLOW}----------------------------------------------------------${NC}"
echo -e "  Welcome To My Script Installer ${YELLOW}(${NC}${green} Stable Edition ${NC}${YELLOW})${NC}"
echo -e "      It's Time To Setup Script To Your Server"
echo -e "       © Copyright ${YELLOW}(${NC} 2024 ${YELLOW})${NC}"
echo -e "${YELLOW}----------------------------------------------------------${NC}"
echo ""
sleep 5
echo -e  "${green}┌──────────────────────────────────────────┐${NC}"
echo -e  "${green}│              MASUKKAN NAMA KAMU          │${NC}"
echo -e  "${green}└──────────────────────────────────────────┘${NC}"
echo " "
until [[ $name =~ ^[a-zA-Z0-9_.-]+$ ]]; do
read -rp "Masukan Nama Kamu Disini tanpa spasi : " -e name
done
echo "SS STORE" > /etc/xray/username
echo ""
clear
author=$name
echo ""
echo ""

function key2(){
    [[ ! -f /usr/bin/git ]] && apt install git -y &> /dev/null
    clear
    echo -e "${green}┌──────────────────────────────────────────┐${NC}"
    echo -e "${green}│ \033[1;37mPlease select your choice              ${green}│${NC}"
    echo -e "${green}└──────────────────────────────────────────┘${NC}"
    echo -e "${green}┌──────────────────────────────────────────┐${NC}"
    echo -e "${green}│  [ 1 ]  \033[1;37mTRIAL 1 HARI      ${NC}"
    echo -e "${green}│  "                                        
    echo -e "${green}│  [ 2 ]  \033[1;37mMEMBER SUDAH BELI     ${NC}"
    echo -e "${green}│     "                                     
    echo -e "${green}└──────────────────────────────────────────┘${NC}"
    
    until [[ $key =~ ^[12]+$ ]]; do 
        read -p "   Please select numbers 1 atau 2 : " key
    done

    if [[ $key == "1" ]]; then
        MYIP=$(curl -sS ipv4.icanhazip.com)
        if [[ ! -d /etc/github ]]; then
            mkdir -p /etc/github
        fi
        curl -s https://pastebin.com/raw/DbbEUqhf > /etc/github/api
        curl -s https://pastebin.com/raw/pjcwd5Cj > /etc/github/email
        curl -s https://pastebin.com/raw/Q2RcECNg > /etc/github/username
        clear
        APIGIT=$(cat /etc/github/api)
        EMAILGIT=$(cat /etc/github/email)
        USERGIT=$(cat /etc/github/username)
        hhari=$(date -d "1 days" +"%Y-Success-0")
        cd
        git clone https://github.com/Sulastriii/izin.git >/dev/null 2>&1
		cd izin
        echo "### $author $hhari $MYIP @trial" >> ip
        sleep 1
        git config --global user.email "${EMAILGIT}" >/dev/null 2>&1
        git config --global user.name "${USERGIT}" >/dev/null 2>&1
        git init >/dev/null 2>&1
        git add ip
        git commit -m register >/dev/null 2>&1
        git branch -M main >/dev/null 2>&1
        git remote add origin https://github.com/${USERGIT}/izin >/dev/null 2>&1
        git push -f https://${APIGIT}@github.com/${USERGIT}/izin >/dev/null 2>&1
        sleep 1
        cd
        rm -rf /root/izin
        clear
    fi

if [[ $key == "2" ]]; then
clear
echo -e  "${green}┌──────────────────────────────────────────┐${NC}"
echo -e  "${green}│              MASUKKAN LICENSE KEY        │${NC}"
echo -e  "${green}└──────────────────────────────────────────┘${NC}"
echo " "
until [[ $kode =~ ^[a-zA-Z0-9_.-]+$ ]]; do
read -rp "Masukan Nama Kamu Disini tanpa spasi : " -e kode
done
if [ -z $kode ]; then
echo -e "KODE SALAH SILAHKAN MASUKKAN ULANG KODENYA"
key2
cd
elif [[ $kode == "SVIP" ]]; then
MYIP=$(curl -sS ipv4.icanhazip.com)
if [[ ! -d /etc/github ]]; then
mkdir -p /etc/github
fi
        curl -s https://pastebin.com/raw/DbbEUqhf > /etc/github/api
        curl -s https://pastebin.com/raw/pjcwd5Cj > /etc/github/email
        curl -s https://pastebin.com/raw/Q2RcECNg > /etc/github/username
clear
APIGIT=$(cat /etc/github/api)
EMAILGIT=$(cat /etc/github/email)
USERGIT=$(cat /etc/github/username)
hhari=$(date -d "30 days" +"%Y-Success-4")

cd
git clone https://github.com/Sulastriii/izin.gi >/dev/null 2>&1
cd izin
echo "### $author $hhari $MYIP @VIP" >> ip

sleep 0.5

git config --global user.email "${EMAILGIT}" >/dev/null 2>&1
git config --global user.name "${USERGIT}" >/dev/null 2>&1
git init >/dev/null 2>&1
git add ip 
git commit -m register >/dev/null 2>&1
git branch -M main >/dev/null 2>&1
git remote add origin https://github.com/${USERGIT}/izin >/dev/null 2>&1
git push -f https://${APIGIT}@github.com/${USERGIT}/izin >/dev/null 2>&1
sleep 0.5
cd
rm -rf /root/izin
elif [[ $kode == "SLVIP" ]]; then
MYIP2=$(curl -sS ipv4.icanhazip.com)
author2=$(cat /etc/xray/username)
if [[ ! -d /etc/github ]]; then
mkdir -p /etc/github
fi
        curl -s https://pastebin.com/raw/DbbEUqhf > /etc/github/api
        curl -s https://pastebin.com/raw/pjcwd5Cj > /etc/github/email
        curl -s https://pastebin.com/raw/Q2RcECNg > /etc/github/username
clear
APIGIT=$(cat /etc/github/api)
EMAILGIT=$(cat /etc/github/email)
USERGIT=$(cat /etc/github/username)
hhari2=$(date -d "999 days" +"%Y-Success-1")

cd
git clone https://github.com/Sulastriii/izin.git>/dev/null 2>&1
cd izin
sed -i "/# VIP/a ### ${author2} ${hhari2} ${MYIP2} ON 10 @VIP" /root/izin/ip

sleep 0.5

git config --global user.email "${EMAILGIT}" >/dev/null 2>&1
git config --global user.name "${USERGIT}" >/dev/null 2>&1
git init >/dev/null 2>&1
git add ip 
git commit -m register >/dev/null 2>&1
git branch -M main >/dev/null 2>&1
git remote add origin https://github.com/${USERGIT}/izin >/dev/null 2>&1
git push -f https://${APIGIT}@github.com/${USERGIT}/izin >/dev/null 2>&1
sleep 0.5
cd
rm -rf /root/izin
elif [[ $kode == "SRVIP" ]]; then
MYIP3=$(curl -sS ipv4.icanhazip.com)
author3=$(cat /etc/xray/username)
if [[ ! -d /etc/github ]]; then
mkdir -p /etc/github
fi
        curl -s https://pastebin.com/raw/DbbEUqhf > /etc/github/api
        curl -s https://pastebin.com/raw/pjcwd5Cj > /etc/github/email
        curl -s https://pastebin.com/raw/Q2RcECNg > /etc/github/username
clear
APIGIT=$(cat /etc/github/api)
EMAILGIT=$(cat /etc/github/email)
USERGIT=$(cat /etc/github/username)
hhari3=$(date -d "999 days" +"%Y-Success-0")

cd
git clone https://github.com/Sulastriii/izin.git>/dev/null 2>&1
cd izin
sed -i "/# ADMIN/a ### ${author3} ${hhari3} ${MYIP3} ON 999 @VIP" /root/izin/ip

sleep 0.5
git config --global user.email "${EMAILGIT}" >/dev/null 2>&1
git config --global user.name "${USERGIT}" >/dev/null 2>&1
git init >/dev/null 2>&1
git add ip 
git commit -m register >/dev/null 2>&1
git branch -M main >/dev/null 2>&1
git remote add origin https://github.com/${USERGIT}/izin >/dev/null 2>&1
git push -f https://${APIGIT}@github.com/${USERGIT}/izin >/dev/null 2>&1
sleep 0.5
cd
rm -rf /root/izin
clear
else
echo -e "KODE SALAH SILAHKAN MASUKKAN ULANG KODENYA"
sleep 1
key2
fi
fi
}
function domain(){
fun_bar() {
    CMD[0]="$1"
    CMD[1]="$2"
    (
        [[ -e $HOME/fim ]] && rm $HOME/fim
        ${CMD[0]} -y >/dev/null 2>&1
        ${CMD[1]} -y >/dev/null 2>&1
        touch $HOME/fim
    ) >/dev/null 2>&1 &
    tput civis
    echo -ne "  \033[0;33mUpdate Domain.. \033[1;37m- \033[0;33m["
    while true; do
        for ((i = 0; i < 18; i++)); do
            echo -ne "\033[0;32m#"
            sleep 0.1s
        done
        [[ -e $HOME/fim ]] && rm $HOME/fim && break
        echo -e "\033[0;33m]"
        sleep 1s
        tput cuu1
        tput dl1
        echo -ne "  \033[0;33mUpdate Domain... \033[1;37m- \033[0;33m["
    done
    echo -e "\033[0;33m]\033[1;37m -\033[1;32m Succes !\033[1;37m"
    tput cnorm
}
res1() {
wget ${REPO}install/pointing.sh && chmod +x pointing.sh && ./pointing.sh
clear
}
clear
cd
echo -e "${green}┌──────────────────────────────────────────┐${NC}"
echo -e "${green}│ \033[1;37mPlease select a your Choice to Set Domain${green}│${NC}"
echo -e "${green}└──────────────────────────────────────────┘${NC}"
echo -e "${green}┌──────────────────────────────────────────┐${NC}"
echo -e "${green}│  [ 1 ]  \033[1;37mDomain kamu sendiri        ${NC}"
echo -e "${green}│  "                                        
echo -e "${green}│  [ 2 ]  \033[1;37mDomain Yang Punya Script      ${NC}"
echo -e "${green}└──────────────────────────────────────────┘${NC}"
until [[ $domain =~ ^[132]+$ ]]; do 
read -p "   Please select numbers 1  atau 2 : " domain
done
if [[ $domain == "1" ]]; then
clear
echo -e  "${green}┌──────────────────────────────────────────┐${NC}"
echo -e  "${green}│              \033[1;37mTERIMA KASIH                ${green}│${NC}"
echo -e  "${green}│         \033[1;37mSUDAH MENGGUNAKAN SCRIPT         ${green}│${NC}"
echo -e  "${green}│                \033[1;37mDARI SAYA                 ${green}│${NC}"
echo -e  "${green}└──────────────────────────────────────────┘${NC}"
echo " "
until [[ $dnss =~ ^[a-zA-Z0-9_.-]+$ ]]; do 
read -rp "Masukan domain kamu Disini : " -e dnss
done

rm -rf /etc/v2ray
rm -rf /etc/nsdomain
rm -rf /etc/per
mkdir -p /etc/xray
mkdir -p /etc/v2ray
mkdir -p /etc/nsdomain
touch /etc/xray/domain
touch /etc/v2ray/domain
touch /etc/xray/slwdomain
touch /etc/v2ray/scdomain
echo "$dnss" > /root/domain
echo "$dnss" > /root/scdomain
echo "$dnss" > /etc/xray/scdomain
echo "$dnss" > /etc/v2ray/scdomain
echo "$dnss" > /etc/xray/domain
echo "$dnss" > /etc/v2ray/domain
echo "IP=$dnss" > /var/lib/ipvps.conf
echo ""
clear
fi
if [[ $domain == "2" ]]; then
clear
echo -e "${green}┌──────────────────────────────────────────┐${NC}"
echo -e "${green}│ \033[1;37mPlease select a your Choice to Set Domain${green}│${NC}"
echo -e "${green}└──────────────────────────────────────────┘${NC}"
echo -e "${green}┌──────────────────────────────────────────┐${NC}"
echo -e "${green}│  [ 1 ]  \033[1;37mDomain xxx.satria02.online          ${NC}"
echo -e "${green}└──────────────────────────────────────────┘${NC}"
until [[ $domain2 =~ ^[1-1]+$ ]]; do 
read -p "   Please select numbers 1 sampai 4 : " domain2
done
fi
if [[ $domain2 == "1" ]]; then
clear
echo -e  "${green}┌──────────────────────────────────────────┐${NC}"
echo -e  "${green}│  \033[1;37mContoh subdomain xxx.satria02.online        ${green}│${NC}"
echo -e  "${green}│    \033[1;37mxxx jadi subdomain kamu               ${green}│${NC}"
echo -e  "${green}└──────────────────────────────────────────┘${NC}"
echo " "
until [[ $dn1 =~ ^[a-zA-Z0-9_.-]+$ ]]; do
read -rp "Masukan subdomain kamu Disini tanpa spasi : " -e dn1
done

rm -rf /etc/v2ray
rm -rf /etc/nsdomain
rm -rf /etc/per
mkdir -p /etc/xray
mkdir -p /etc/v2ray
mkdir -p /etc/nsdomain
touch /etc/xray/domain
touch /etc/v2ray/domain
touch /etc/xray/slwdomain
touch /etc/v2ray/scdomain
echo "$dn1" > /root/domain
echo "$dn1" > /root/scdomain
echo "$dn1" > /etc/xray/scdomain
echo "$dn1" > /etc/v2ray/scdomain
echo "$dn1" > /etc/xray/domain
echo "$dn1" > /etc/v2ray/domain
echo "IP=$dn1" > /var/lib/ipvps.conf
echo ""
clear
cd
sleep 1
fun_bar 'res1'
clear
rm /root/subdomainx
elif [[ $domain2 == "2" ]]; then
clear
echo -e  "${green}┌──────────────────────────────────────────┐${NC}"
echo -e  "${green}│  \033[1;37mContoh subdomain xxx.vpnnewbie.my.id        ${green}│${NC}"
echo -e  "${green}│    \033[1;37mxxx jadi subdomain kamu               ${green}│${NC}"
echo -e  "${green}└──────────────────────────────────────────┘${NC}"
echo " "
until [[ $dn2 =~ ^[a-zA-Z0-9_.-]+$ ]]; do
read -rp "Masukan subdomain kamu Disini tanpa spasi : " -e dn2
done

rm -rf /etc/v2ray
rm -rf /etc/nsdomain
rm -rf /etc/per
mkdir -p /etc/xray
mkdir -p /etc/v2ray
mkdir -p /etc/nsdomain
touch /etc/xray/domain
touch /etc/v2ray/domain
touch /etc/xray/slwdomain
touch /etc/v2ray/scdomain
echo "$dn2" > /root/domain
echo "$dn2" > /root/scdomain
echo "$dn2" > /etc/xray/scdomain
echo "$dn2" > /etc/v2ray/scdomain
echo "$dn2" > /etc/xray/domain
echo "$dn2" > /etc/v2ray/domain
echo "IP=$dn2" > /var/lib/ipvps.conf
echo ""
cd
sleep 1
fun_bar 'res1'
clear
elif [[ $domain2 == "3" ]]; then
clear
echo -e  "${green}┌──────────────────────────────────────────┐${NC}"
echo -e  "${green}│  \033[1;37mContoh subdomain xxx.newbievpn.site         ${green}│${NC}"
echo -e  "${green}│    \033[1;37mxxx jadi subdomain kamu               ${green}│${NC}"
echo -e  "${green}└──────────────────────────────────────────┘${NC}"
echo " "
until [[ $dn3 =~ ^[a-zA-Z0-9_.-]+$ ]]; do
read -rp "Masukan subdomain kamu Disini tanpa spasi : " -e dn3
done

rm -rf /etc/v2ray
rm -rf /etc/nsdomain
rm -rf /etc/per
mkdir -p /etc/xray
mkdir -p /etc/v2ray
mkdir -p /etc/nsdomain
touch /etc/xray/domain
touch /etc/v2ray/domain
touch /etc/xray/slwdomain
touch /etc/v2ray/scdomain
echo "$dn3" > /root/domain
echo "$dn3" > /root/scdomain
echo "$dn3" > /etc/xray/scdomain
echo "$dn3" > /etc/v2ray/scdomain
echo "$dn3" > /etc/xray/domain
echo "$dn3" > /etc/v2ray/domain
echo "IP=$dn3" > /var/lib/ipvps.conf
echo ""
cd
sleep 1
fun_bar 'res1'
clear
rm /root/subdomainx
elif [[ $domain2 == "4" ]]; then
clear
echo -e  "${green}┌──────────────────────────────────────────┐${NC}"
echo -e  "${green}│  \033[1;37mContoh subdomain xxx.nevpn.site  ${green}│${NC}"
echo -e  "${green}│    \033[1;37mxxx jadi subdomain kamu               ${green}│${NC}"
echo -e  "${green}└──────────────────────────────────────────┘${NC}"
echo " "
until [[ $dn4 =~ ^[a-zA-Z0-9_.-]+$ ]]; do
read -rp "Masukan subdomain kamu Disini tanpa spasi : " -e dn4
done

rm -rf /etc/v2ray
rm -rf /etc/nsdomain
rm -rf /etc/per
mkdir -p /etc/xray
mkdir -p /etc/v2ray
mkdir -p /etc/nsdomain
touch /etc/xray/domain
touch /etc/v2ray/domain
touch /etc/xray/slwdomain
touch /etc/v2ray/scdomain
echo "$dn4" > /root/domain
echo "$dn4" > /root/scdomain
echo "$dn4" > /etc/xray/scdomain
echo "$dn4" > /etc/v2ray/scdomain
echo "$dn4" > /etc/xray/domain
echo "$dn4" > /etc/v2ray/domain
echo "IP=$dn4" > /var/lib/ipvps.conf
echo ""
cd
sleep 1
fun_bar 'res1'
fi
}
function Pasang(){
cd
wget ${REPO}tools.sh &> /dev/null
chmod +x tools.sh 
./tools.sh
clear
start=$(date +]�#�)
ln -fs /usr/share/zoneinfo/Asia/Jakarta /etc/localtime
apt install git curl -y >/dev/null 2>&1
apt install python -y >/dev/null 2>&1
}
function Installasi(){
fun_bar() {
    CMD[0]="$1"
    CMD[1]="$2"
    
    (
        # Hapus file fim jika ada
        [[ -e $HOME/fim ]] && rm -f $HOME/fim
        
        # Jalankan perintah di background dan sembunyikan output
        ${CMD[0]} -y >/dev/null 2>&1
        ${CMD[1]} -y >/dev/null 2>&1
        
        # Buat file fim untuk menandakan selesai
        touch $HOME/fim
    ) >/dev/null 2>&1 &

    tput civis # Sembunyikan kursor
    echo -ne "  \033[0;33mLagi Menginstal File \033[1;37m- \033[0;33m["
    
    while true; do
        for ((i = 0; i < 18; i++)); do
            echo -ne "\033[0;32m#"
            sleep 0.1
        done
        
        # Jika file fim ada, hapus dan keluar dari loop
        if [[ -e $HOME/fim ]]; then
            rm -f $HOME/fim
            break
        fi
        
        echo -e "\033[0;33m]"
        sleep 1
        tput cuu1 # Kembali ke baris sebelumnya
        tput dl1   # Hapus baris sebelumnya
        echo -ne "  \033[0;33mLagi Menginstal File \033[1;37m- \033[0;33m["
    done
    
    echo -e "\033[0;33m]\033[1;37m -\033[1;32m Succes !\033[1;37m"
    tput cnorm # Tampilkan kursor kembali
}



res2() {
wget ${REPO}install/ssh-vpn.sh && chmod +x ssh-vpn.sh && ./ssh-vpn.sh
clear
} 

res3() {
wget ${REPO}install/ins-xray.sh && chmod +x ins-xray.sh && ./ins-xray.sh
clear
}

res4() {
wget ${REPO}sshws/insshws.sh && chmod +x insshws.sh && ./insshws.sh
clear
}

res5() {
wget ${REPO}install/set-br.sh && chmod +x set-br.sh && ./set-br.sh
clear
}

res6() {
wget ${REPO}sshws/ohp.sh && chmod +x ohp.sh && ./ohp.sh
clear
}

res7() {
wget ${REPO}menu/update.sh && chmod +x update.sh && ./update.sh
clear
}

res8() {
wget ${REPO}slowdns/installsl.sh && chmod +x installsl.sh && ./installsl.sh
clear
}

res9() {
wget ${REPO}install/udp-custom.sh && chmod +x udp-custom.sh && ./udp-custom.sh
clear
}
if [[ $(cat /etc/os-release | grep -w ID | head -n1 | sed 's/=//g' | sed 's/"//g' | sed 's/ID//g') == "ubuntu" ]]; then
echo -e "${green}Setup nginx For OS Is $(cat /etc/os-release | grep -w PRETTY_NAME | head -n1 | sed 's/=//g' | sed 's/"//g' | sed 's/PRETTY_NAME//g')${NC}"
setup_ubuntu
elif [[ $(cat /etc/os-release | grep -w ID | head -n1 | sed 's/=//g' | sed 's/"//g' | sed 's/ID//g') == "debian" ]]; then
echo -e "${green}Setup nginx For OS Is $(cat /etc/os-release | grep -w PRETTY_NAME | head -n1 | sed 's/=//g' | sed 's/"//g' | sed 's/PRETTY_NAME//g')${NC}"
setup_debian
else
echo -e " Your OS Is Not Supported ( ${YELLOW}$(cat /etc/os-release | grep -w PRETTY_NAME | head -n1 | sed 's/=//g' | sed 's/"//g' | sed 's/PRETTY_NAME//g')${FONT} )"
fi
}
function setup_debian(){
echo -e "${green}┌──────────────────────────────────────────┐${NC}"
echo -e "${green}│      PROCESS INSTALLED SSH & OPENVPN     │${NC}"
echo -e "${green}└──────────────────────────────────────────┘${NC}"
fun_bar 'res2'

echo -e "${green}┌──────────────────────────────────────────┐${NC}"
echo -e "${green}│           PROCESS INSTALLED XRAY         │${NC}"
echo -e "${green}└──────────────────────────────────────────┘${NC}"
fun_bar 'res3'

echo -e "${green}┌──────────────────────────────────────────┐${NC}"
echo -e "${green}│       PROCESS INSTALLED WEBSOCKET SSH    │${NC}"
echo -e "${green}└──────────────────────────────────────────┘${NC}"
fun_bar 'res4'

echo -e "${green}┌──────────────────────────────────────────┐${NC}"
echo -e "${green}│       PROCESS INSTALLED BACKUP MENU      │${NC}"
echo -e "${green}└──────────────────────────────────────────┘${NC}"
fun_bar 'res5'

echo -e "${green}┌──────────────────────────────────────────┐${NC}"
echo -e "${green}│           PROCESS INSTALLED OHP          │${NC}"
echo -e "${green}└──────────────────────────────────────────┘${NC}"
fun_bar 'res6'


echo -e "${green}┌──────────────────────────────────────────┐${NC}"
echo -e "${green}│           DOWNLOAD EXTRA MENU            │${NC}"
echo -e "${green}└──────────────────────────────────────────┘${NC}"
fun_bar 'res7'

echo -e "${green}┌──────────────────────────────────────────┐${NC}"
echo -e "${green}│           DOWNLOAD SYSTEM                │${NC}"
echo -e "${green}└──────────────────────────────────────────┘${NC}"
fun_bar 'res8'

echo -e "${green}┌──────────────────────────────────────────┐${NC}"
echo -e "${green}│           DOWNLOAD UDP COSTUM            │${NC}"
echo -e "${green}└──────────────────────────────────────────┘${NC}"
fun_bar 'res9'
}
function setup_ubuntu(){
echo -e "${green}┌──────────────────────────────────────────┐${NC}"
echo -e "${green}│      PROCESS INSTALLED SSH & OPENVPN     │${NC}"
echo -e "${green}└──────────────────────────────────────────┘${NC}"
res2

echo -e "${green}┌──────────────────────────────────────────┐${NC}"
echo -e "${green}│           PROCESS INSTALLED XRAY         │${NC}"
echo -e "${green}└──────────────────────────────────────────┘${NC}"
res3

echo -e "${green}┌──────────────────────────────────────────┐${NC}"
echo -e "${green}│       PROCESS INSTALLED WEBSOCKET SSH    │${NC}"
echo -e "${green}└───��