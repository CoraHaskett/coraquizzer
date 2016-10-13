function nextBracket {
  fagi=$1
  topOfBracket=$2
  taxRate=$3
  echo "your marginal tax rate is : $taxRate"
  (( delta = $topOfBracket - $fagi ))  
  echo "$delta more dollars untill the next bracket"  
}
 
read -p 'what is  your Federal Adjusted Gross Income? ' fagi 

if [ $fagi -le 9275 ] ; then nextBracket $fagi 9275 10%  
elif [ $fagi -ge 9276 ] && [ $fagi -le 37650 ] ; then nextBracket $fagi 37650 15%
elif [ $fagi -ge 37651 ] && [ $fagi -le 91150 ] ; then nextBracket $fagi 91150 35%
elif [ $fagi -ge 91151 ] && [ $fagi -le 190150 ] ; then nextBracket $fagi 190150 28%
elif [ $fagi -ge 190151 ] && [ $fagi -le 413350 ] ; then nextBracket $fagi 413350 33%
elif [ $fagi -ge 413351 ] && [ $fagi -le 415050 ] ; then nextBracket $fagi 415050 35%
elif [ $fagi -ge 415051 ] ; then echo 39.6% ; echo "there is no higher bracket" 
else echo " try again :) "
fi  
