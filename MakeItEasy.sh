#!/bin/bash

echo "1.File Related";
echo "2.Searching";
echo "3.Process Related";
echo "4.exit"
read -p "Please Enter your choice " choice
case $choice in
1)      echo "1.Create Directory"
	echo "2.Delete Directory"
	echo "3.Delete files"
	echo "4.List the files"
	echo "5.Change permissions of the files or directories"
	read -p "Enter your choice " choice1
   	case $choice1 in
		1) read -p "Enter directory name" dir
           	mkdir $dir
	   	;;
		2) read -p "Enter directory name to delete " dir
	   	rmdir $dir
	   	;;
		3) read -p "Enter directory to delete a file " dir
		   read -p "Enter name of file to delete " dir1
		   cd $dir
		   rm $dir1
		;; 
		4) ls -l
		   ;;
		5) read -p "Enter an octal value " oct
		   read -p "Enter file name or directory " name
		   chmod $oct $name
		   ;;
     	esac
   ;;
2) echo "search"
	echo "1.grep commands"
	read -p "Enter your choice " choice2
	case $choice2 in
	1)
	    echo "1.Search for a string in a given string"
	    echo  "2.Search for a string in multiple files"
	    echo   "3.Case insensitive search"
	    echo "4.Searching for full words not substrings"
	    echo "5.Highlighting the search using grep options"
	    echo "6.Search in all files recursively."
	    echo "7.invert match"
		 read -p "Enter your choice of grep commands" choice1
		 read -p "Enter string to match " str
		case $choice1 in 
		1) 
		   read -p "Enter file name" fname	
			grep $str $fname
			;;
		2) read -p "Enter a file pattern to search the given string " pname
			grep $str $pname
			;;
                3) read -p "Enter a file pattern to search the given string " pname
			grep -i $str $pname
			;;
		esac 
		
	    
	   ;;
	esac
   ;;
3) echo "1.List all processes"
   echo "2.List only zombie processes"
   echo "3.Kill a process"
	read -p "Enter your choice " choice
	case $choice in
		1) ps -aux
		   ;;
		2) echo "Zombie processes "
		   ;;
		3) read -p "Enter process ID to kill "pid
			kill -9 pid
			;;
	esac
   ;;
esac

