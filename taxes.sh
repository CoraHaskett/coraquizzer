function nextBracket {
   echo "nextBracket"
}
 
read -p 'what is  your Federal Adjusted Gross Income? ' fagi 

if [ $fagi -le 9275 ] ; then echo 10%; nextBracket #15percent $fagi  
elif [ $fagi -ge 9276 ] && [ $fagi -le 37650 ] ; then echo 15%; nextBracket #15percent $fagi
elif [ $fagi -ge 37651 ] && [ $fagi -le 91150 ] ; then echo 25%; nextBracket #25percent $fagi
elif [ $fagi -ge 91151 ] && [ $fagi -le 190150 ] ; then echo 28%; nextBracket #28percent $fagi
elif [ $fagi -ge 190151 ] && [ $fagi -le 413350 ] ; then echo 33%; nextBracket #33percent $fagi
elif [ $fagi -ge 413351 ] && [ $fagi -le 415050 ] ; then echo 35%; nextBracket #35percent $fagi
elif [ $fagi -ge 415051 ] ; then echo 39.6% 
else echo " try again :) "
fi  
