read -p 'how many kids are in you family: ' ks
read -p 'what is the age of the oldest kid: ' ot
read -p 'what is the the age of the youngest kid: ' yt

echo "total kids=$ks"
echo "oldest kid=$ot"
echo "youngest kid=$yt"

sum=$(( ot - yt ))
avg=$(($sum/$ks))

echo "time between kids=$sum"
echo "avg time between kids=$avg years"

