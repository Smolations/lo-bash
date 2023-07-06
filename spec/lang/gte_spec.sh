Describe 'lang: _gte()'
  Include SOURCEME

  It 'two positive numbers'
    When call _gte 3 1
    The status should be success
  End

  It 'one positive number, one negative'
    When call _gte 3 -1
    The status should be success
  End

  It 'two equal, negative numbers'
    When call _gte -1 -1
    The status should be success
  End

  It 'two positive numbers, one a string'
    When call _gte '5' 2
    The status should be success
  End

  It 'two decimal strings'
    When call _gte '1.32' '1.233'
    The status should be success
  End

  It 'two letters'
    When call _gte 'g' 'b'
    The status should be success
  End

  It 'two of the same letters'
    When call _gte 'g' 'g'
    The status should be success
  End

  It 'two strings'
    When call _gte 'go' 'g'
    The status should be success
  End

  Context 'errors'
    It 'with two positive numbers'
      When call _gte 1 3
      The status should be failure
      The status should equal 1
    End

    It 'with two strings, one starting with a capital letter'
      When call _gte 'Bee' 'bee'
      The status should be failure
      The status should equal 1
    End

    It 'with two strings'
      When call _gte 'bee' 'bees'
      The status should be failure
      The status should equal 1
    End
  End
End
