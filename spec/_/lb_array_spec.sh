Describe '_: lb_array()'
  Include lib/_/lb_slash.sh

  Include lib/_/lb_array.sh

  isArray() {
    declare -ap $1 2> /dev/null | grep -q '^declare -a'
  }

  It 'creates an array of numbers'
    When call lb_array myArray 1 2 3
    The status should be success
    The variable myArray[1] should equal '2'
  End

  It 'creates an array of strings'
    When call lb_array myArray 'i' 'have several' 'elements'
    The status should be success
    The variable myArray[1] should equal 'have several'
  End

  It 'creates an array of strings that include quotes'
    When call lb_array myArray 'i hope' 'strings with "quotes"' 'will work'
    The status should be success
    The variable myArray[1] should equal 'strings with "quotes"'
  End

  It 'creates an array of strings that include quotes'
    When call lb_array emptyArray
    The status should be success
    Assert isArray emptyArray
  End

  Context 'errors'
    It 'when no arguments given'
      When call lb_array
      The status should be failure
      The status should equal 1
    End
  End
End
