# BE CAREFUL

xDescribe 'utility: _recurse()'
  Include lib/utility/recurse.sh

  It ''
    When call _recurse
    The status should be success
    # The output should equal '0123'
  End

  # Context 'errors'
  #   It 'with invalid array name'
  #     When call _times
  #     The status should be failure
  #     The status should equal 1
  #     # The output should equal ''
  #   End
  # End
End
