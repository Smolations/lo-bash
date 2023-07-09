Describe 'string: _repeat()'
  Include lib/string/repeat.sh

  It 'repeats a single character'
    When call _repeat '*' 3
    The status should be success
    The output should equal '***'
  End

  It 'repeats a multi-character string'
    When call _repeat 'abc' 2
    The status should be success
    The output should equal 'abcabc'
  End

  It 'repeats nothing'
    When call _repeat 'abc' 0
    The status should be success
    The output should equal ''
  End

  # Context 'errors'
  #   It 'with invalid array name'
  #     When call _repeat
  #     The status should be failure
  #     The status should equal 1
  #     # The output should equal ''
  #   End
  # End
End
