Describe '_: lb_slash()'
  Include lib/_/lb_slash.sh

  It 'escapes double quotes with a backslash'
    When call lb_slash '""'
    The output should equal '\"\"'
  End
End
