function C2F {
   echo "C2F $1"
   echo "9*$1/5+32" | bc -l
}

function F2C {
    echo "F2C $1"
}

read -p 'what temp would you like to convert? ' temp 
read -p 'convert C2F or F2C? ' convert 

if [ $convert == "C2F" ] ; then C2F $temp  
elif [ $convert == "F2C" ] ; then F2C $temp
else echo "$convert is not valid"
fi  
