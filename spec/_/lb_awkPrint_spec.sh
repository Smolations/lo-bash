Describe '_: lb_awkPrint()'
  Include SOURCEME

  It 'does math'
    When call lb_awkPrint "2 + 4"
    The status should be success
    The output should equal 6
  End

  It 'just prints'
    When call lb_awkPrint '"just prints"'
    The status should be success
    The output should equal 'just prints'
  End
End
