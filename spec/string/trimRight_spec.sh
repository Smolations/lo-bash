Describe 'string: _trimRight()'
  Include SOURCEME

  It ''
    When call _trimRight '  3456  '
    The status should be success
    The output should equal '  3456'
  End

  It 'trims characters'
    When call _trimRight '345600' 0
    The status should be success
    The output should equal '3456'
  End

  # Context 'errors'
  #   It 'with invalid array name'
  #     When call _trimRight
  #     The status should be failure
  #     The status should equal 1
  #     # The output should equal ''
  #   End
  # End
End
