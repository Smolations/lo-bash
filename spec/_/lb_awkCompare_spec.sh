Describe '_: lb_awkCompare()'
  Include lib/_/lb_awkPrint.sh

  Include lib/_/lb_awkCompare.sh

  It 'compares numbers'
    When call lb_awkCompare '4 > 3'
    The status should be success
  End
End
