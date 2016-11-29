echo "What numbers would you like the average of?"
read $1 $2 $3 

sum=$((echo "$1 + $2 + $3"))
echo $sum

echo average= $(echo "scale=1; $sum / 3")


