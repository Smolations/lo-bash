Describe 'math: _max()'
  Include lib/math/max.sh

  It 'finds the max'
    nums=(5 9 2 24 12 1 19.1 24.01 -4)

    When call _max ${nums[@]}
    The status should be success
    The output should equal '24.01'
  End
End
