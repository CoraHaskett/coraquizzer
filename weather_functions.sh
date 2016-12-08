#the following will sum all the values of the temp_array and put them in a variable called 'sum'

function average {
   echo average= $(echo "scale=1; $sum / $samples" | bc)
}

function round {
  printf "%.*f\n" 0 $1
}

function maxmin {

  max=$(round ${temp_array[0]})
  min=$(round ${temp_array[0]})
  e=$(round ${temp_array[0]})

for e in ${temp_array[@]}
do
     if [ $(round $e) -gt $(round $max) ]
     then
     max=$e 
     fi

     if [ $(round $e) -lt $(round $min) ]
     then
        min=$e
     fi
done

echo "max= $max"
echo "min= $min"
     
}

declare -a temp_array
for temp in $(cat ~/tmp/weather_data.csv | awk -F',' '{ print $2 }'); do
  temp_array=("${temp_array[@]}" $temp)
done

samples=$((${#temp_array[@]}-1))

sum=0
for temp in $(seq 0 $samples); do
  sum=$(echo "$sum + ${temp_array[$temp]}"|bc)
done

echo "Computer Programming Fundamentals"
echo " first date  = $(head -n 1 ~/tmp/weather_data.csv | awk -F',' '{ print $1 }')"
echo " last date  = $(tail -n 1 ~/tmp/weather_data.csv | awk -F',' '{ print $1 }')"
echo "sum= $sum"
echo "samples= $samples"
average
maxmin
