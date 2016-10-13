echo $1
name=$1
echo $name
#!/bin/bash
curl -s "http://api.openweathermap.org/data/2.5/weather?q=Minneapolis,us&units=imperial&APPID=cb2b567c1c70fe5271ad298b5fec613f"
