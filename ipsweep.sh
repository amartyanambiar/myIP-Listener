#/bin/bash
#shell script ..hence the .sh
#$ sign is the user input

if [ "$1" == "" ]
then
echo "You Forgot an IP address!"
echo "Example Syntax: ./ipsweep.sh 122.168.1"

else
for ip in `seq 1 254`; do
ping -c 1 $1.$ip | grep "64 bytes" | cut -d " " -f 4 | tr -d ":" & done
fi

