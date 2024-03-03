#!/usr/bin/env bash

## Collect the files with .menuitem extension in the bash menu folder to an array $files
MYPATH="$(dirname "$0")"
cd "$MYPATH"
curdir=$(pwd)
files=(*.menuitem)
## Enable extended globbing. This lets us use @(foo|bar) to
## match either 'foo' or 'bar'.
shopt -s extglob

## Start building the string to match against.
string="@(${files[0]%.menuitem}"  # Remove the .menuitem extension for matching
## Add the rest of the files to the string
for((i=1; i<${#files[@]}; i++))
do
    string+="|${files[$i]%.menuitem}"  # Remove the .menuitem extension
done
string+=")"

## Modify the display of files to exclude the .menuitem extension
display_files=("${files[@]/%.menuitem/}")

## Show the menu. This will list all files without the .menuitem extension
select file in "${display_files[@]}" "quit" "new"
do
    case $file in
    $string)
        # Convert back to the actual filename to read the command
        actual_file="$file.menuitem"
        command=$(cat "$actual_file")
        $command
        exit
        ;;
    "quit")
        exit
        ;;
    "new")
        echo "Type in the command f.ex: ssh -p 2222 pi@123.123.123.1"
        read -p 'command: ' new_command
        echo "Command was: $new_command"
        read -p 'Nickname for this command: ' nick
        touch "./$nick.menuitem"  # Save with .menuitem extension
        echo "$new_command" > "./$nick.menuitem"
        exec ./.bashmenu.sh  # Return to the menu; adjust this as needed
        ;;
    *)
        echo "Please choose a number from 1 to $((${#display_files[@]} + 2))"
        ;;
    esac
done
