Describe 'math: _add()'
  Include SOURCEME

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
