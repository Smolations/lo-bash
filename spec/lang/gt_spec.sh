Describe 'lang: _gt()'
  Include lib/_/lb_awkCompare.sh
  Include lib/_/lb_awkPrint.sh
  Include lib/lang/isNumber.sh

  Include lib/lang/gt.sh

  It 'compares two positive numbers'
    When call _gt 3 1
    The status should be success
  End

  It 'compares a positive number and negative number'
    When call _gt 3 -1
    The status should be success
  End

  It 'compares two positive numbers, one a string'
    When call _gt '5' 2
    The status should be success
  End

  It 'compares two string decimals'
    When call _gt '1.32' '1.233'
    The status should be success
  End

  It 'compares two letters'
    When call _gt 'g' 'b'
    The status should be success
  End

  Context 'errors'
    It 'with two positive numbers'
      When call _gt 1 3
      The status should be failure
      The status should equal 1
    End

    It 'with two equal, positive numbers'
      When call _gt 2 2
      The status should be failure
      The status should equal 1
    End

    It 'with two strings'
      When call _gt 'bee' 'bees'
      The status should be failure
      The status should equal 1
    End
  End
End
