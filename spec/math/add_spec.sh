Describe 'math: _add()'
  Include lib/_/lb_math.sh

  Include lib/math/add.sh

  It 'adds two positive integers'
    When call _add 1 3
    The status should be success
    The output should equal 4
  End

  It 'adds positive and negative integers'
    When call _add 2 -5
    The status should be success
    The output should equal -3
  End
End
