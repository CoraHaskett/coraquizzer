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

for e in ${temp_array[0]}
do
     if [ $(round ${temp_array[0]}) -gt $(round ${temp_array[0]}) ]
     then
        e=$(round ${temp_array[0]})
     fi

     if [ $(round ${temp_array[0]}) -lt $(round ${temp_array[0]}) ]
     then
        e=$(round ${temp_array[0]})

echo "max= $max"
echo "min= $min"
     fi
done
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

echo "sum= $sum"
echo "samples= $samples"
average
maxmin
