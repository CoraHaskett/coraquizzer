echo "What numbers would you like the average of?"
read first second third 

sum=$(( first + second + third ))
echo sum=$sum

avg=$(($sum / 3))
echo avg=$avg

 
