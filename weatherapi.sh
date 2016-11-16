#!/bin/bash
#read -p "How many days of samples: "               days
#read -p "N) New sample or A) Append to previous: " file_op

days=$1
file_op=$2

if [ "$file_op" == "N" ]; then rm -f ~/tmp/weather_data.csv; fi
read samples <<< $(($days*24))
read weatherapi_key <<< $(cat weatherapi_key)

for i in $(seq 1 $samples); do

  read epoch temp humidity <<< \
    $(curl -s "http://api.openweathermap.org/data/2.5/weather?q=Minneapolis,us&units=imperial&APPID=$weatherapi_key" | \
    jq '.dt,.main.temp,.main.humidity')

  if [ $epoch -gt 1477570797 ]; then
    read epochtime <<<$(date -d @$epoch +'%m/%d/%Y %H:%M')
    echo "$epochtime temp=$temp humidity=$humidity"
    echo $epochtime,$temp,$humidity >> ~/tmp/weather_data.csv 
  else 
    echo "$(epoch +'%m/%d/%Y %H:%M') bad sample"
  fi

  sleep 3600
done

#read date temp humidity <<< $(cat weather.json  | jq '.dt,.main.temp,.main.humidity')
#read windspeed winddirection <<< $(cat /tmp/weather.json | jq '.wind.speed','.wind.deg')
