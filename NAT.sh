1#!/bin/bash
# 說明：
# a. 這個程式主要用來進行簡易 NAT 的功能的！使用的模組為 iptables 。
# b. 執行的方式為：
#    將檔案放在 /usr/local/nat 底下，檔名為 nat.sh (範例)
#    chmod 744 /usr/local/nat/nat.sh
#    /usr/local/nat/nat.sh
# c. 或者是直接在開機時啟動，可以使用：
#    vi /etc/rc.d/rc.local
#    寫入最後一行為： /usr/local/nat/nat.sh
#
# readme
# a.This script for simple NAT, depend iptables.
# b.Put this file to /usr/local/nat, name nat.sh
#    chmod 744 /usr/local/nat/nat.sh
#    /usr/local/nat/nat.sh
# c.or 
#    vi /etc/rc.d/rc.local
#    add /usr/local/nat/nat.sh
###########################################################################

# 0.  請輸入你的參數值：
  EXIF='ppp0'             # 這個是對外的介面，如果是 cable ，則可能為 eth0！
  EXNET='192.168.1.0/24'  # 這個是對內的網域！這裡我只設定一個網域而已！

# 底下如無需要，請不要變動了！
# 0.1 Testing your Kernel version ..
  echo -n "Check your kernel version...             "
  kver=`uname -r | cut -c 1-3`
  if [ "$kver" == "2.4" ] || [ "$kver" == "2.5" ]; then
	echo "[OK]"
	echo "Your Linux Kernel Version is no problem!"
  else
	echo "[Failure]"
	echo "Your Linux Kernel Version may not be suported by this script!"
	echo "This scripts will not be runing"
	exit 
  fi

# 0.2 Tell you what is this 
  echo "  "
  echo "Note:"
  echo "     This script will clear your iptables' rules"
  echo "     Please make sure that you want to do this script!"
  echo "     Ha Ha! No problem ! If you just want to be an NAT server !"
  echo " "
#  echo -n "     Please Keyin your choice ( y/n ) : "
#  read yn
#  until [ "$yn" == "y" ] || [ "$yn" == "Y" ] || [ "$yn" == "n" ] || [ "$yn" == "N" ]
#  do
#	if   [ "$yn" == "n" ] || [ "$yn" == "N" ]; then
#		echo " Do nothing ...."
#		exit
#	elif [ "$yn" == "y" ] || [ "$yn" == "Y" ]; then
#		echo " Running NAT script...."
#	else
#		echo -n "     Please Keyin your choice ( y/n ) : "
#		read yn
#	fi
#  done

# 0.3 remove ipchains modules
  ipchains=`lsmod | grep ipchains`
  if [ "$ipchains" != "" ]; then
	rmmod ipchains 2> /dev/null
	modprobe ip_tables 2> /dev/null
  fi

# 1. 宣告變數、啟動 Routing 與清除規則：
  PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin
  export PATH
  echo "1" > /proc/sys/net/ipv4/ip_forward
  modprobe ip_tables  2> /dev/null
  /sbin/iptables -F
  /sbin/iptables -X
  /sbin/iptables -Z
  /sbin/iptables -F -t nat
  /sbin/iptables -X -t nat
  /sbin/iptables -Z -t nat
  /sbin/iptables -P INPUT   ACCEPT
  /sbin/iptables -P OUTPUT  ACCEPT
  /sbin/iptables -P FORWARD ACCEPT
  /sbin/iptables -t nat -P PREROUTING  ACCEPT
  /sbin/iptables -t nat -P POSTROUTING ACCEPT
  /sbin/iptables -t nat -P OUTPUT      ACCEPT

# 2. 載入模組啦！
  modprobe ip_nat_ftp  2> /dev/null
  modprobe ip_nat_irc  2> /dev/null
  modprobe ip_conntrack  2> /dev/null
  modprobe ip_conntrack_ftp  2> /dev/null
  modprobe ip_conntrack_irc  2> /dev/null

# 3. 啟動 IP 偽裝：
  /sbin/iptables -t nat -A POSTROUTING -o $EXIF -s $EXNET -j MASQUERADE
  echo " "
  echo " OK! Your Linux Server Now have been an NAT Sever ! ^_^"
  echo " If you still have any question, please come here"
  echo " "
  echo " http://aerosol.ev.ncku.edu.tw/~vbird"
  echo " "
