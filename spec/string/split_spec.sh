Describe 'string: _split()'
  Include lib/_/lb_array.sh
  Include lib/_/lb_awkPrint.sh
  Include lib/_/lb_slash.sh

  Include lib/string/split.sh

  It 'splits on excluded letter'
    When call _split "what's up guys?" 'z' splitArray
    The status should be success
    The value ${#splitArray[*]} should equal 1
    The variable splitArray[0] should equal "what's up guys?"
  End

  It 'splits on space'
    When call _split "what's up guys?" ' ' splitArray
    The status should be success
    The value ${#splitArray[*]} should equal 3
    The variable splitArray[1] should equal 'up'
  End

  It 'splits on single quote'
    When call _split "what's up guys?" "'" splitArray
    The status should be success
    The value ${#splitArray[*]} should equal 2
    The variable splitArray[1] should equal 's up guys?'
  End

  It 'splits on trailing character'
    When call _split "what's up guys?" '?' splitArray
    The status should be success
    The value ${#splitArray[*]} should equal 2
    The variable splitArray[1] should equal ''
  End

  It 'splits on leading character'
    When call _split "what's up guys?" 'w' splitArray
    The status should be success
    The value ${#splitArray[*]} should equal 2
    The variable splitArray[1] should equal "hat's up guys?"
  End

  It 'splits on space-padded word'
    When call _split "what's up guys?" ' up ' splitArray
    The status should be success
    The value ${#splitArray[*]} should equal 2
    The variable splitArray[1] should equal 'guys?'
  End

  # Context 'errors'
  #   It 'with invalid array name'
  #     When call _split
  #     The status should be failure
  #     The status should equal 1
  #     # The output should equal ''
  #   End
  # End
End
