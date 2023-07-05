xDescribe '_: lb_awkCompare()'
  Include SOURCEME

  It 'compares'
    When call lb_awkCompare
    The value "${#result_array[@]}" should equal '5'
  End
End
