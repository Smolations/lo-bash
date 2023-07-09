Describe 'lang: _eq()'
  Include lib/_/lb_awkCompare.sh
  Include lib/_/lb_awkPrint.sh
  Include lib/lang/isEqual.sh
  Include lib/lang/isNumber.sh

  Include lib/lang/eq.sh

  It 'compares two numbers'
    When call _eq 4 4
    The status should be success
  End

  It 'compares a number and a string number'
    When call _eq 2 '2'
    The status should be success
  End

  It 'compares two strings'
    When call _eq '2a' '2a'
    The status should be success
  End

  Context 'errors'
    It 'with two different numbers'
      When call _eq 3 4
      The status should be failure
      The status should equal 1
    End

    It 'with two different strings'
      When call _eq '2a' '2b'
      The status should be failure
      The status should equal 1
    End
  End
End
