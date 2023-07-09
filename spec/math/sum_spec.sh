Describe 'math: _sum()'
  Include lib/math/sum.sh

  It 'sums array of positive integers'
    sum=(1 1 2 1 1)

    When call _sum ${sum[@]}
    The status should be success
    The output should equal 6
  End

  It 'sums a string of positive integers'
    sum='2 2 2 2'

    When call _sum $sum
    The status should be success
    The output should equal 8
  End

  It 'sums a mix of positive and negative integers'
    sum=(-1 2 -3 4 -5)

    When call _sum ${sum[@]}
    The status should be success
    The output should equal -3
  End
End
