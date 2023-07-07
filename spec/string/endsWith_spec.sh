Describe 'string: _endsWith()'
  Include SOURCEME

  It 'matches the end of a string'
    When call _endsWith "abcdef" "def"
    The status should be success
  End

  Context 'errors'
    It 'with non-matching end of a string'
      When call _endsWith "abcdefg" "def"
      The status should be failure
      The status should equal 1
    End
  End
End
