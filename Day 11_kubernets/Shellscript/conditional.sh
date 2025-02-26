echo "enter the number:"
read num
if [ $num -gt 10 ];then
    echo "the number is greater then 10"
else
    echo "the num is less or 10"
fi

echo "enter the age:"
read age
echo " are you Indian"
read citizen
if [ $age -ge 18 ]&&[ $citizen=="yes" ] || [ $citizen =="YES" ]; then
    echo "You are eligible"
else
    echo "you are'nt eligible"
fi