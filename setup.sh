#!/bin/bash
#Script Auto Kill - Block Torrent By WILDYVPN
#Script Created By WILDYVPN

#Mampos Kau
cd /usr/bin
wget -O mampos "https://raw.githubusercontent.com/wildyvpnnet/wildyvpnnet.github.io/main/mampos.sh"
chmod +x mampos
cd
echo "* * * * * root /usr/bin/mampos" >> /etc/crontab
echo "* * * * * root sleep 5; /usr/bin/mampos" >> /etc/crontab
echo "* * * * * root sleep 10; /usr/bin/mampos" >> /etc/crontab
echo "* * * * * root sleep 15; /usr/bin/mampos" >> /etc/crontab
echo "* * * * * root sleep 20; /usr/bin/mampos" >> /etc/crontab
echo "* * * * * root sleep 25; /usr/bin/mampos" >> /etc/crontab
echo "* * * * * root sleep 30; /usr/bin/mampos" >> /etc/crontab
echo "* * * * * root sleep 35; /usr/bin/mampos" >> /etc/crontab
echo "* * * * * root sleep 40; /usr/bin/mampos" >> /etc/crontab
echo "* * * * * root sleep 45; /usr/bin/mampos" >> /etc/crontab
echo "* * * * * root sleep 50; /usr/bin/mampos" >> /etc/crontab
echo "* * * * * root sleep 55; /usr/bin/mampos" >> /etc/crontab
#Restart Autokill Service
service cron restart

iptables -A FORWARD -m string --algo bm --string "BitTorrent" -j DROP
iptables -A FORWARD -m string --algo bm --string "BitTorrent protocol" -j DROP
iptables -A FORWARD -m string --algo bm --string "peer_id=" -j DROP
iptables -A FORWARD -m string --algo bm --string ".torrent" -j DROP
iptables -A FORWARD -m string --algo bm --string "announce.php?passkey=" -j DROP
iptables -A FORWARD -m string --algo bm --string "torrent" -j DROP

rm /root/setup.sh
