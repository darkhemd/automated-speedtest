#!/bin/bash

if ! command -v speedtest &> /dev/null
then
    sudo apt-get update
    sudo apt-get install curl
    curl -s https://install.speedtest.net/app/cli/install.deb.sh | sudo bash
    sudo apt-get install speedtest
fi

declare -i x=0
while true
do
    echo Test $x
    dt=$(date '+%d/%m/%Y %H:%M:%S');
    speedtest -s 31470 -f csv>>Speedtest.log
    echo "\"$dt\"">>SpeedtestDate.log
    let "x+=1"
    sleep 600
done
