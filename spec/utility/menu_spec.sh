Describe 'utility: _menu()'
  Include lib/_/lb_arrayCopy.sh
  Include lib/array/indexOf.sh
  Include lib/lang/isArray.sh
  Include lib/utility/inArgs.sh

  Include lib/utility/menu.sh

  Describe 'makes a basic menu'
    Parameters
      '#1' '' '' 'and aborts'
      '#2' 3 'orange' 'and makes a selection'
    End

    Example "$1: $4"
      Data "$2"

      When call _menu --prompt='favorite color?' pink blue orange
      The status should be success
      The line 1 of stdout should equal ''
      The line 2 of stdout should include 'favorite color? (or press Enter to abort):'
      The line 3 of stdout should equal ''
      The line 4 of stdout should include '1:  pink'
      The line 5 of stdout should include '2:  blue'
      The line 6 of stdout should include '3:  orange'
      The line 7 of stdout should include ''
      The line 8 of stdout should include 'favorite color? (or press Enter to abort):'
      The variable _menu_sel_index should equal "$2"
      The variable _menu_sel_value should equal "$3"
    End
  End

  It 'makes a menu with extra indexed keys and makes a selection'
    Data 'unreal'

    When call _menu --prompt='favorite color?' pink blue orange -k ':unreal:semi-translucent black'
    The status should be success
    The line 1 of stdout should equal ''
    The line 2 of stdout should include 'favorite color? (or press Enter to abort):'
    The line 3 of stdout should equal ''
    The line 4 of stdout should include '1:  pink'
    The line 5 of stdout should include '2:  blue'
    The line 6 of stdout should include '3:  orange'
    The line 7 of stdout should include '-----------------'
    The line 8 of stdout should include 'unreal:  semi-translucent black'
    The line 9 of stdout should include ''
    The line 10 of stdout should include 'favorite color? (or press Enter to abort):'
    The line 11 of stdout should include ''
    The variable _menu_sel_index should equal 'unreal'
    The variable _menu_sel_value should equal 'semi-translucent black'
  End

  Context 'errors'
    It 'makes a basic menu and makes an incorrect selection'
      Data '4'

      When call _menu --prompt='favorite color?' pink blue orange
      The status should be failure
      The line 1 of stdout should equal ''
      The line 2 of stdout should include 'favorite color? (or press Enter to abort):'
      The line 3 of stdout should equal ''
      The line 4 of stdout should include '1:  pink'
      The line 5 of stdout should include '2:  blue'
      The line 6 of stdout should include '3:  orange'
      The line 7 of stdout should include ''
      The line 8 of stdout should include 'favorite color? (or press Enter to abort):'
      The variable _menu_sel_index should equal 4
      The variable _menu_sel_value should be blank
    End
  End
End
