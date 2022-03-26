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