er@ip-172-31-43-186 ~]$ for i in {1..10}; do echo $i; done
1
2
3
4
5
6
7
8
9
10


[ec2-user@ip-172-31-43-186 ~]$ for i in $(seq 5 $a); do echo $i; done
1
2
3
4
5

[ec2-user@ip-172-31-43-186 ~]$ myarray=(jo pam steve)
[ec2-user@ip-172-31-43-186 ~]$ for name in ${myarray[@]}; do echo $name; done
jo
pam
steve

[ec2-user@ip-172-31-43-186 ~]$ myarray=(jo pam steve)
[ec2-user@ip-172-31-43-186 ~]$ for name in ${myarray[@]}; do echo $name; done
jo
pam
steve
[ec2-user@ip-172-31-43-186 ~]$ for name in ${myarray[0]}; do echo $name; done
jo
[ec2-user@ip-172-31-43-186 ~]$ echo ${#myarray[@]}
3

[ec2-user@ip-172-31-43-186 coraquizzer]$ echo "steve jo pam" >/tmp/names.text
[ec2-user@ip-172-31-43-186 coraquizzer]$ cat /tmp/names.text
steve jo pam
[ec2-user@ip-172-31-43-186 coraquizzer]$ mv /tmp/names.text /tmp/names.txt
[ec2-user@ip-172-31-43-186 coraquizzer]$ echo "steve jo pam" >>>/tmp/names.txt
-bash: syntax error near unexpected token `>'
[ec2-user@ip-172-31-43-186 coraquizzer]$ echo "steve jo pam" >>/tmp/names.txt
[ec2-user@ip-172-31-43-186 coraquizzer]$ cat /tmp/names.txt
steve jo pam
steve jo pam


[ec2-user@ip-172-31-43-186 coraquizzer]$ read name <<< $(echo "cora")
[ec2-user@ip-172-31-43-186 coraquizzer]$ echo $name
cora

[ec2-user@ip-172-31-43-186 coraquizzer]$ echo "2.5*2" | bc
5.0

[ec2-user@ip-172-31-43-186 coraquizzer]$ echo "scale=2; 2.5/2" | bc
1.25


[ec2-user@ip-172-31-43-186 coraquizzer]$ cat weather.sample.json
{"coord":{"lon":-93.26,"lat":44.98},"weather":[{"id":800,"main":"Clear","description":"clear sky","icon":"01n"}],"base":"stations","main":{"temp":54.38,"pressure":991.8,"humidity":88,"temp_min":54.38,"temp_max":54.38,"sea_level":1025.18,"grnd_level":991.8},"wind":{"speed":8.43,"deg":255.006},"clouds":{"all":0},"dt":1476840436,"sys":{"message":0.0256,"country":"US","sunrise":1476880484,"sunset":1476919217},"id":5037649,"name":"Minneapolis","cod":200}
[ec2-user@ip-172-31-43-186 coraquizzer]$ cat weather.sample.json | jq
{
  "coord": {
    "lon": -93.26,
    "lat": 44.98
  },
  "weather": [
    {
      "id": 800,
      "main": "Clear",
      "description": "clear sky",
      "icon": "01n"
    }
  ],
  "base": "stations",
  "main": {
    "temp": 54.38,
    "pressure": 991.8,
    "humidity": 88,
    "temp_min": 54.38,
    "temp_max": 54.38,
    "sea_level": 1025.18,
    "grnd_level": 991.8
  },
  "wind": {
    "speed": 8.43,
    "deg": 255.006
  },
  "clouds": {
    "all": 0
  },
  "dt": 1476840436,
  "sys": {
    "message": 0.0256,
    "country": "US",
    "sunrise": 1476880484,
    "sunset": 1476919217
  },
  "id": 5037649,
  "name": "Minneapolis",
  "cod": 200
}
[ec2-user@ip-172-31-43-186 coraquizzer]$ cat weather.sample.json | jq '.weather'
[
  {
    "id": 800,
    "main": "Clear",
    "description": "clear sky",
    "icon": "01n"
  }
]
[ec2-user@ip-172-31-43-186 coraquizzer]$ cat weather.sample.json | jq '.wind.speed'
8.43
[ec2-user@ip-172-31-43-186 coraquizzer]$

[ec2-user@ip-172-31-43-186 coraquizzer]$ cat weather_data.csv | awk -F',' '{print $2}'
51.28
51.28
51.28
50.47
50.49
50.36
50.13
50.13
50.13
