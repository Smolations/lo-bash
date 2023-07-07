Describe 'math: _min()'
  Include SOURCEME

  It 'finds the min'
    nums=(5 9 2 24 12 1 19.1 24.01 -4)

    When call _min ${nums[@]}
    The status should be success
    The output should equal '-4'
  End
End
