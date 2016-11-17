#the following will sum all the values of the temp_array and put them in a variable called 'sum'
declare -a temp_array

for temp in $(cat ~/tmp/weather_data.csv | awk -F',' '{ print $2 }'); do
  temp_array=("${temp_array[@]}" $temp)


samples=$((${#temp_array[@]}-1))
sum=0
for temp in $(seq 0 $samples); do
  sum=$(echo "$sum + ${temp_array[$temp]}"|bc)


echo $sum

sum=$1
samples=$((${#temp_array[@]}-1))

function avg {
   echo "avg temp"

if [ 1=1 ] 
then
  avtp=$(($1 / $((${#temp_array[@]}-1))))
  echo $avtp }
  fi
done
