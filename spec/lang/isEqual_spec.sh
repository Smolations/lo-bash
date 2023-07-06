Describe 'lang: _isEqual()'
  Include SOURCEME

  It 'with two numbers'
    When call _isEqual 4 4
    The status should be success
  End

  It 'with two numbers, one a string'
    When call _isEqual 2 '2'
    The status should be success
  End

  It 'with two strings'
    When call _isEqual '2a' '2a'
    The status should be success
  End

  Context 'errors'
    It 'with two numbers'
      When call _isEqual 3 4
      The status should be failure
      The status should equal 1
    End

    It 'with two strings'
      When call _isEqual '2a' '2b'
      The status should be failure
      The status should equal 1
    End
  End
End
