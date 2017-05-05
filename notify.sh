#!/bin/bash

echo $* > /tmp/notify-args.log

vipAddress="192.168.121.100/24"

if [[ "$1" == "master" ]]; then

  ip address add dev eth1 ${vipAddress}

else

  ip address del dev eth1 ${vipAddress}

fi
