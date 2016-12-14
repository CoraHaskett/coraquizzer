read -p 'What grade are you in? ' g

if [ $g -lt 1 ]; then echo "You are in Preschool"
elif [ $g -lt 6 ]; then echo "You are in Elementary School"
elif [ $g -lt 9 ]; then echo "You are in Middle School"
elif [ $g -lt 13 ]; then echo "You are in High School"
else echo "You dont belong in school"
fi
