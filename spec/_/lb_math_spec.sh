Describe '_: lb_math()'
  Include SOURCEME

  It 'adds'
    When call lb_math '1 + 2'
    The status should be success
    The output should equal 3
  End

  It 'subtracts'
    When call lb_math '8 - 7'
    The status should be success
    The output should equal 1
  End

  It 'multiplies'
    When call lb_math '5 * 5'
    The status should be success
    The output should equal 25
  End

  It 'divides with result precision 1'
    When call lb_math '7 / 2'
    The status should be success
    The output should equal '3.5'
  End

  It 'divides with result precision 1'
    When call lb_math '5 / 4'
    The status should be success
    The output should equal '1.25'
  End

  It 'divides with result repeating decimal'
    When call lb_math '2 / 3'
    The status should be success
    The output should equal '0.6666666666666666'
  End
End
