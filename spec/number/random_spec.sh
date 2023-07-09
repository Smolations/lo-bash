lte_max() {
  _lte $lte_max $1
}

gte_min() {
  _gte $gte_min $1
}

Describe 'number: _random()'
  Include lib/_/lb_awkCompare.sh
  Include lib/_/lb_awkPrint.sh
  Include lib/lang/gt.sh
  Include lib/lang/gte.sh
  Include lib/lang/isNumber.sh
  Include lib/lang/lte.sh

  Include lib/number/random.sh

  It 'default args'
    When call _random
    The status should be success
    The output should satisfy gte_min 0
    The output should satisfy lte_max 100
  End

  It 'custom max'
    When call _random 10
    The status should be success
    The output should satisfy gte_min 0
    The output should satisfy lte_max 10
  End

  It 'custom min and max'
    When call _random 110 150
    The status should be success
    The output should satisfy gte_min 110
    The output should satisfy lte_max 150
  End
End
