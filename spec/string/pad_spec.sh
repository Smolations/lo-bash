Describe 'string: _pad()'
  Include lib/string/repeat.sh

  Include lib/string/pad.sh

  It 'default padding with spaces'
    When call _pad 'abc' 8
    The status should be success
    The output should equal '  abc   '
  End

  It 'padding with symbols'
    When call _pad 'abc' 8 '_-'
    The status should be success
    The output should equal '_-abc_-_'
  End

  It 'padding with numbers'
    When call _pad 'abc' 8 '123'
    The status should be success
    The output should equal '12abc123'
  End

  It 'without padding amount'
    When call _pad 'abc'
    The status should be success
    The output should equal 'abc'
  End

  # Context 'errors'
  #   It 'with invalid array name'
  #     When call _pad
  #     The status should be failure
  #     The status should equal 1
  #     # The output should equal ''
  #   End
  # End
End
