Describe 'string: _parseInt()'
  Include lib/string/trim.sh
  Include lib/string/trimLeft.sh

  Include lib/string/parseInt.sh

  It 'parses int from int'
    When call _parseInt 3
    The status should be success
    The output should equal '3'
  End

  It 'parses int from leading zero'
    When call _parseInt '03'
    The status should be success
    The output should equal '3'
  End

  It 'parses int from decimal'
    When call _parseInt 3.321
    The status should be success
    The output should equal '3'
  End

  It 'parses int from number and letters'
    When call _parseInt '3abc'
    The status should be success
    The output should equal '3'
  End

  It 'parses int from decimal with leading spaces'
    When call _parseInt '   3.4'
    The status should be success
    The output should equal '3'
  End

  It 'parses nothing'
    When call _parseInt abc
    The status should be success
    The output should equal ''
  End

  # Context 'errors'
  #   It 'with invalid array name'
  #     When call _parseInt
  #     The status should be failure
  #     The status should equal 1
  #     # The output should equal ''
  #   End
  # End
End
