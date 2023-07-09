Describe 'lang: _lt()'
  Include lib/_/lb_awkCompare.sh
  Include lib/_/lb_awkPrint.sh
  Include lib/lang/gte.sh
  Include lib/lang/isNumber.sh

  Include lib/lang/lt.sh

  It 'two positive integers'
    When call _lt 1 3
    The status should be success
  End

  It 'two integers, one negative'
    When call _lt -1 3
    The status should be success
  End

  It 'two positive integers, one a string'
    When call _lt 2 '5'
    The status should be success
  End

  It 'two decimal strings'
    When call _lt '1.233' '1.32'
    The status should be success
  End

  It 'two strings'
    When call _lt 'b' 'g'
    The status should be success
  End

  Context 'errors'
    It 'with two positive integers'
      When call _lt 3 1
      The status should be failure
      The status should equal 1
    End

    It 'with two positive, equal integers'
      When call _lt 2 2
      The status should be failure
      The status should equal 1
    End

    It 'with two strings'
      When call _lt 'bees' 'bee'
      The status should be failure
      The status should equal 1
    End
  End
End
