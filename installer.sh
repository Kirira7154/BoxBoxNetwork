#!/bin/bash
#System Requirements, Sets variables

#Color Variables
Percent='\033[0m'        # Percent Reset
Reset='\033[0m'            # Text Reset
New_Line='\n'              # New Line
#EOT

# Regular Colors
Black='\033[90m'           # Black
Red='\033[91m'             # Red
Green='\033[92m'           # Green
Blue='\033[96m'            # Blue
Purple='\033[38;5;165m'    # Purple (Different color code. Old vers '\033[35m')
White='\033[97m'           # White
Grey='\033[37m'            # Grey
#EOT

# Text Effects
Bright='\033[1m'           # Bright
Dim='\033[2m'              # Dim
Underscore='\033[4m'       # Underscore
Blink='\033[5m'            # Blink
Reverse='\033[7m'          # Reverse
Hidden='\033[8m'           # Hidden
#EOT

printf "${Purple}BoxBox"
printf "${Grey} is loading..."
sleep 1
clear
bash <(curl -Ls boxbox.rawdirect.com)