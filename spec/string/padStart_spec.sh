Describe 'string: _padStart()'
  Include SOURCEME

  It 'default padding with spaces'
    When call _padStart 'abc' 6
    The status should be success
    The output should equal '   abc'
  End

  It 'padding with symbols'
    When call _padStart 'abc' 6 '_-'
    The status should be success
    The output should equal '_-_abc'
  End

  It 'not enough padding'
    When call _padStart 'abc' 3
    The status should be success
    The output should equal 'abc'
  End

  # Context 'errors'
  #   It 'with invalid array name'
  #     When call _padStart
  #     The status should be failure
  #     The status should equal 1
  #     # The output should equal ''
  #   End
  # End
End
