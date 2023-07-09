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

color="${yellow}hey yellow${reset}"
style="${underline}hey underlined${reset}"
style_color="${underline}${green}hey bold, underlined and green${reset}"
combo="${underline}${bold}${magenta}hey bold, underlined and magenta${reset}"

xDescribe 'utility: _stripStyles()'
  Include lib/utility/stripStyles.sh

# echo "${combo}" | grep -q '\[' && pass || fail
# echo "${combo}" | grep -q '\x1b' && pass || fail
# echo "${combo}" | grep -q '\e' && pass || fail
# echo "${combo}" | grep -q '\033' && fail || pass
# echo "${combo}" | grep -q $'\033' && pass || fail
#
# _stripStyles "${color}" | grep -q "$'\x1b'" && fail || pass
# _stripStyles "${color}" | grep -q "\[" && fail || pass
# _stripStyles "${style}" | grep -q "\[" && fail || pass
# _stripStyles "${style_color}" | grep -q '\[' && fail || pass
# _stripStyles "${combo}" | grep -q '\[' && fail || pass
  # It ''
  #   When call _stripStyles
  #   The status should be success
  #   The value true should equal false
  # End

  Context 'errors'
    It 'with invalid array name'
      When call _stripStyles
      The status should be failure
      The status should equal 1
      # The output should equal ''
    End
  End
End
