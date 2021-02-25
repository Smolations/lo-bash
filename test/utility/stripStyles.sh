#!/bin/bash

h1 'lo::stripStyles'

bold=$(tput bold)
underline=$(tput sgr 0 1)
reset=$(tput sgr0)

black=$(tput setaf 0)
red=$(tput setaf 1)
green=$(tput setaf 2)
yellow=$(tput setaf 3)
blue=$(tput setaf 4)
magenta=$(tput setaf 5)
cyan=$(tput setaf 6)
white=$(tput setaf 7)

black_bg=$(tput setab 0)
red_bg=$(tput setab 1)
green_bg=$(tput setab 2)
yellow_bg=$(tput setab 3)
blue_bg=$(tput setab 4)
magenta_bg=$(tput setab 5)
cyan_bg=$(tput setab 6)
white_bg=$(tput setab 7)

# echo "${bold}${green}hey bold and green${reset}"
# echo "${underline}${bold}${green}hey bold, underlined and green${reset}"
# echo "${underline}${blue}hey underline and blue${reset}"
# echo "${underline}${dim}${magenta}hey dim, underlined and magenta${reset}"
# echo "hey ${yellow}yellow${reset}, ${dim}${yellow}dim yellow${reset}, ${bold}${yellow}bold yellow${reset}"

color="${yellow}hey yellow${reset}"
style="${underline}hey underlined${reset}"
style_color="${underline}${green}hey bold, underlined and green${reset}"
combo="${underline}${bold}${magenta}hey bold, underlined and magenta${reset}"

echo "${combo}" | grep -q '\[' && pass || fail
echo "${combo}" | grep -q '\x1b' && pass || fail
echo "${combo}" | grep -q '\e' && pass || fail
echo "${combo}" | grep -q '\033' && fail || pass
echo "${combo}" | grep -q $'\033' && pass || fail


lo::stripStyles "${color}" | grep -q "$'\x1b'" && fail || pass
lo::stripStyles "${color}" | grep -q "\[" && fail || pass
lo::stripStyles "${style}" | grep -q "\[" && fail || pass
lo::stripStyles "${style_color}" | grep -q '\[' && fail || pass
lo::stripStyles "${combo}" | grep -q '\[' && fail || pass
