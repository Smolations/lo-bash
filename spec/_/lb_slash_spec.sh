xDescribe '_: lb_slash()'
  Include SOURCEME

  It 'removes slashes'
    When call lb_slash
    The value true should equal false
  End
End
