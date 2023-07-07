Describe 'string: _trim()'
  Include SOURCEME

  It 'trims spaces by default'
    When call _trim '  3456  '
    The status should be success
    The output should equal 3456
  End

  It 'trims a number'
    When call _trim '003456 0' 0
    The status should be success
    The output should equal '3456 '
  End

  It 'trims with a space and number'
    When call _trim '003456 0' ' 0'
    The status should be success
    The output should equal 3456
  End

  It 'trims numbers'
    When call _trim '0120345601230' '012'
    The status should be success
    The output should not equal '34563'
  End

  # Context 'errors'
  #   It 'with invalid array name'
  #     When call _trim '0120345601230' '012'
  #     The status should be failure
  #     The status should equal 1
  #     The output should not equal '34563'
  #   End
  # End
End
