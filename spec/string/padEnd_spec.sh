Describe 'string: _padEnd()'
  Include lib/string/repeat.sh

  Include lib/string/padEnd.sh

  It 'default padding with spaces'
    When call _padEnd 'abc' 6
    The status should be success
    The output should equal 'abc   '
  End

  It 'padding with symbols'
    When call _padEnd 'abc' 6 '_-'
    The status should be success
    The output should equal 'abc_-_'
  End

  It 'not enough padding'
    When call _padEnd 'abc' 3
    The status should be success
    The output should equal 'abc'
  End

  # Context 'errors'
  #   It 'with invalid array name'
  #     When call _padEnd
  #     The status should be failure
  #     The status should equal 1
  #     # The output should equal ''
  #   End
  # End
End
