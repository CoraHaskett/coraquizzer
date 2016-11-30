declare -a avg
echo "Enter numbers"
read nums
echo $nums

samples=$((${#avg[@]}-1))

function average {
  echo average= $(echo "scale=1; $sum / $samples" | bc)
}

sum=0
for e in ${avg[@]}
 do 
  sum=$( "$sum + ${avg}" )
done

average
