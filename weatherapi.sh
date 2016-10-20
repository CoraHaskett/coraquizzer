read weatherapi_key <<< $(cat weatherapi_key)
read date temp humidity <<< $(cat /tmp/weather.json | jq '.dt,.main.temp,.main.humidity')
curl -s "http://api.openweathermap.org/data/2.5/weather?q=Minneapolis,us&units=imperial&APPID=$weatherapi_key"
#while [ 1 == 1 ]
#do 
   #!/bin/bash
   #sleep 600
#done 
