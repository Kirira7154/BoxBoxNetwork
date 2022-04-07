#!/bin/bash
#System Requirements, Sets variables

#System Variables
Computer_Name=$(whoami)
Text_System='text_callback/text_system/'

#Color Variables
Percent='\033[0m\n'        # Percent Reset
Reset='\033[0m'            # Text Reset
New_Line='\n'              # New Line

# Regular Colors
Black='\033[90m'           # Black
Red='\033[91m'             # Red
Green='\033[92m'           # Green
Blue='\033[96m'            # Blue
Purple='\033[38;5;165m'    # Purple (Different color code. Old vers '\033[35m')
White='\033[97m'           # White
Grey='\033[37m'            # Grey

# Text Effects
Bright='\033[1m'           # Bright
Dim='\033[2m'              # Dim
Underscore='\033[4m'       # Underscore
Blink='\033[5m'            # Blink
Reverse='\033[7m'          # Reverse
Hidden='\033[8m'           # Hidden

#BoxBox Main Menu, The main menu for navigating the console.
printf "${Purple}$(<${Text_System}ascii.txt)"

#echo - Creates a new line
echo
printf "${Purple}BoxBox"
printf "${Grey} is a project from Kirira#7154"
printf "${New_Line}${Grey}Further information and all features type: "
printf "${Purple}help"

#BoxBox Object Recall, Objects to recall storing commands and other snippets.
echo_one() {
  echo "Hello John!!!"
}

manual() {
  echo "Help manual. Imagen text here idk xD"
}

press_enter() {
  echo -n "	Press Enter to continue "
  read
}

Command_Not_Found() {
  echo "Incorrect selection! Try again."
}

#BoxBox Cli Input, The user input for the cli.
until [ "$selection" = "0" ]; do
echo
printf "${New_Line}${Green}${Computer_Name}"
printf "${Purple}@BoxBox"
printf "${Grey}:"
printf "${Blue}~"
printf "${Grey}$"
read Selection
  case $Selection in
    echo1 ) clear ; echo_one ; press_enter ;;
    manual ) clear ; manual ; press_enter ;;
    exit ) clear ; exit ;;
    * ) clear ; Command_Not_Found ; press_enter ;;
  esac
done