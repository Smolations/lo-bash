Describe 'string: _startsWith()'
  Include lib/string/startsWith.sh

  It 'matches starting string'
    When call _startsWith 'abcdef' 'abc'
    The status should be success
  End

  Context 'errors'
    It 'does not match starting string'
      When call _startsWith 'abcdefg' 'bcd'
      The status should be failure
      The status should equal 1
    End
  End
End
