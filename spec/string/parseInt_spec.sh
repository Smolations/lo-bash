xDescribe 'string: _parseInt()'
  Include SOURCEME

# [[ "`_parseInt 3`" == '3' ]] && pass || fail
# [[ "`_parseInt '03'`" == '3' ]] && pass || fail
# [[ "`_parseInt 3.321`" == '3' ]] && pass || fail
# [[ "`_parseInt '3abc'`" == '3' ]] && pass || fail
# [[ "`_parseInt '   3.4'`" == '3' ]] && pass || fail
# [[ "`_parseInt abc`" == '' ]] && pass || fail
  It ''
    When call _parseInt 3
    The status should be success
    The output should equal '3'
  End

  It ''
    When call _parseInt '03'
    The status should be success
    The output should equal '3'
  End

  It ''
    When call _parseInt 3.321
    The status should be success
    The output should equal '3'
  End

  It ''
    When call _parseInt '3abc'
    The status should be success
    The output should equal '3'
  End

  It ''
    When call _parseInt '   3.4'
    The status should be success
    The output should equal '3'
  End

  It ''
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
