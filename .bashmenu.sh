#!/usr/bin/env bash

## Collect the files in the array $files
files=( ~/bash_menu/* )
## Enable extended globbing. This lets us use @(foo|bar) to
## match either 'foo' or 'bar'.
shopt -s extglob

## Start building the string to match against.
string="@(${files[0]}"
## Add the rest of the files to the string
for((i=1;i<${#files[@]};i++))
do
    string+="|${files[$i]}"
done
## Close the parenthesis. $string is now @(file1|file2|...|fileN)
string+=")"

## Show the menu. This will list all files
#echo "q) quit"
#echo "n) new"
select file in "${files[@]}" "quit" "new"
do
    case $file in
    ## If the choice is one of the files (if it matches $string)
    $string)
        ## Do something here
        cat "$file"
	command=`cat $file`
	exec $command
        ;;
    "quit")
        ## Exit
        exit;;
    "new")
	echo "Type in the command f.ex: ssh -p 2222 pi@123.123.123.1"
	read -p 'command: ' new_command
	echo Command was: $new_command
	read -p 'Nickname for this command: ' nick
	touch ./$nick
	echo $new_command > ./$nick
	exec ./sshmenu.sh
	;;
    *)
        file=""
        echo "Please choose a number from 1 to $((${#files[@]}+2))";;
    esac
done
