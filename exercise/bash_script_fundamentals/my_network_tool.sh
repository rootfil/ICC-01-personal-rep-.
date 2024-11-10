#!/bin/bash -i
#
#
# TASK: Bash Scripting Fundamentals
#
# NETWORK TOOL MENU


input=0

clear

echo -e "\n\n *** HELLO, WELCOME TO YOUR NETWORK TOOL MENU *** \n"

while [ "$input" != "6" ];
do
	
	echo -e "\n\n1) Check Network Interface Information"
	echo "2) Ping a Host"
	echo "3) Port Scan with Nmap"
	echo "4) Display Routing Table"
	echo "5) Traceroute to Host"
	echo -e "6) Exit \n\n"

	read -p "Please choose a correct option > " input
	echo -e "\n"
	
	if [ "$input" == 1 ]; then
		
		clear
		echo -e "\n\n1) Check Network Interface Information\n\n"	
		ifconfig

	elif [ "$input" == "2" ]; then
		
		clear
		echo -e "\n\n2) Ping a Host\n\n"
		read -p "Please type the Host you wish to Ping > " ipadd
	
		ping -c 4 $ipadd

	elif [ "$input" == "3" ]; then
	
		clear		
		echo -e "\n\n3) Port Scan with Nmap\n\n"
		read -p "Please type the IP Address or the Network you wish to Scan > " ipadd
		read -p "Port to be Scanned > " port
		nmap -p $port $ipadd

	elif [ "$input" == "4" ]; then
		
		clear
		echo -e "\n\n4) Display Routing Table\n\n"
		route

	elif [ "$input" == "5" ]; then
		
		clear
		echo -e "\n\n5) Traceroute to Host\n\n"
		read -p "Please type the Host you wish to Trace > " ipadd
		traceroute $ipadd

	elif [ "$input" != "6" ]; then
		clear
		echo -e "\n\nWrong Option! Please select a valid option"
	fi

done

clear
echo -e "\n\nSee you soon! \n\n"

exit
