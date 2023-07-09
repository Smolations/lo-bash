function iteratee {
  local ndx="$1"
  echo -n $ndx
}

Describe 'utility: _times()'
  Include lib/_/lb_arrayCopy.sh
  Include lib/lang/isArray.sh
  Include lib/lang/isFunction.sh

  Include lib/utility/times.sh

  It 'executes function multiple times'
    When call _times 4 iteratee
    The status should be success
    The output should equal '0123'
  End

  It 'populates array with output of iteratee'
    When call _times 4 iteratee resultArray
    The status should be success
    The variable resultArray[0] should equal 0
    The variable resultArray[1] should equal 1
    The variable resultArray[2] should equal 2
    The variable resultArray[3] should equal 3
  End

  # Context 'errors'
  #   It 'with invalid array name'
  #     When call _times
  #     The status should be failure
  #     The status should equal 1
  #     # The output should equal ''
  #   End
  # End
End
