Describe 'lang: _lte()'
  Include lib/_/lb_awkCompare.sh
  Include lib/_/lb_awkPrint.sh
  Include lib/lang/isNumber.sh
  Include lib/lang/gt.sh

  Include lib/lang/lte.sh

  It 'two positive integers'
    When call _lte 1 3
    The status should be success
  End

  It 'two integers, one negative'
    When call _lte -1 3
    The status should be success
  End

  It 'two negative, equal integers'
    When call _lte -1 -1
    The status should be success
  End

  It 'two positive integers, one a string'
    When call _lte 2 '5'
    The status should be success
  End

  It 'two decimal strings'
    When call _lte '1.233' '1.32'
    The status should be success
  End

  It 'two letter strings'
    When call _lte 'b' 'g'
    The status should be success
  End

  It 'two identical letter strings'
    When call _lte 'g' 'g'
    The status should be success
  End

  It 'two strings of different lengths'
    When call _lte 'g' 'go'
    The status should be success
  End

  Context 'errors'
    It 'with two positive integers'
      When call _lte 3 1
      The status should be failure
      The status should equal 1
    End

    It 'with two strings, one starting with a capital letter'
      When call _lte 'bee' 'Bee'
      The status should be failure
      The status should equal 1
    End

    It 'with two strings of different lengths'
      When call _lte 'bees' 'bee'
      The status should be failure
      The status should equal 1
    End
  End
End
