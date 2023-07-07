Describe 'string: _length()'
  Include SOURCEME

  It 'calculates the correct length'
    When call _length 'hey there'
    The status should be success
    The output should equal 9
  End

  It 'calculates the correct length again'
    When call _length "i'm a bit longer"
    The status should be success
    The output should equal 16
  End

  # Context 'errors'
  #   It 'with invalid array name'
  #     When call _length
  #     The status should be failure
  #     The status should equal 1
  #     # The output should equal ''
  #   End
  # End
End
