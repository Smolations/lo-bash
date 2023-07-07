Describe 'string: _trimLeft()'
  Include SOURCEME

  It 'trims spaces'
    When call _trimLeft '  3456  '
    The status should be success
    The output should equal '3456  '
  End

  It 'trims numbers'
    When call _trimLeft '003456' 0
    The status should be success
    The output should equal '3456'
  End

  # Context 'errors'
  #   It 'with invalid array name'
  #     When call _trimLeft
  #     The status should be failure
  #     The status should equal 1
  #     # The output should equal ''
  #   End
  # End
End
