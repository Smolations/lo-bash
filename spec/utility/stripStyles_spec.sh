%const BOLD:      $(tput bold)
%const UNDERLINE: $(tput sgr 0 1)
%const RESET:     $(tput sgr0)

%const BLACK:   $(tput setaf 0)
%const RED:     $(tput setaf 1)
%const GREEN:   $(tput setaf 2)
%const YELLOW:  $(tput setaf 3)
%const BLUE:    $(tput setaf 4)
%const MAGENTA: $(tput setaf 5)
%const CYAN:    $(tput setaf 6)
%const WHITE:   $(tput setaf 7)

%const BLACK_BG:   $(tput setab 0)
%const RED_BG:     $(tput setab 1)
%const GREEN_BG:   $(tput setab 2)
%const YELLOW_BG:  $(tput setab 3)
%const BLUE_BG:    $(tput setab 4)
%const MAGENTA_BG: $(tput setab 5)
%const CYAN_BG:    $(tput setab 6)
%const WHITE_BG:   $(tput setab 7)

Describe 'utility: _stripStyles()'
  Include lib/utility/stripStyles.sh

  Describe 'testing all sequences'
    Parameters
      '#1' '['
      '#2' $'\x1b'
      '#3' $'\e'
      '#4' $'\033'
    End

    It "checks bold with sequence $1"
      Data "${BOLD}hey"

      When call grep -Fq $2 -
      The status should be success
    End

    It "checks underline with sequence $1"
      Data "${UNDERLINE}hey"

      When call grep -Fq $2 -
      The status should be success
    End

    It "checks reset with sequence $1"
      Data "${RESET}hey"

      When call grep -Fq $2 -
      The status should be success
    End

    It "checks foreground color with sequence $1"
      Data "${BLUE}hey"

      When call grep -Fq $2 -
      The status should be success
    End

    It "checks bg color with sequence $1"
      Data "${GREEN_BG}hey"

      When call grep -Fq $2 -
      The status should be success
    End
  End

  It 'strips all sequences'
    When call _stripStyles "${UNDERLINE}${BOLD}${MAGENTA}hey ${RED_BG}there${RESET}"
    The status should be success
    The output should equal 'hey there'
  End

  # Context 'errors'
  #   It 'with invalid array name'
  #     When call _stripStyles
  #     The status should be failure
  #     The status should equal 1
  #     # The output should equal ''
  #   End
  # End
End
