#1
add_numbers()
{
    sum=$(( $1 + $2 ))
    echo "Sum of $1 and $2 is : $sum"

}

add_numbers 10 20

#2
check_file()
{
    if [ -f "$1" ]; then
        echo " file '$1' exists"
    else 
        echo " file '$1' does not exits"
    fi  
}

check_file "testfile.txt"

#3
system_info(){
    echo "operating system: $( uname -o )"
    echo "kernal version: $(uname -r)"
    echo "disk usage:"
    df -h 
}

system_info

