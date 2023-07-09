Describe 'string: _truncate()'
  Include lib/utility/inArgs.sh

  Include lib/string/truncate.sh

  It 'truncates with default options'
    When call _truncate 'hi-diddly-ho there, neighborino'
    The status should be success
    The output should equal 'hi-diddly-ho there, neighbo...'
  End

  It 'truncates with specified length and separator'
    When call _truncate --length=24 --separator=' ' 'hi-diddly-ho there, neighborino'
    The status should be success
    The output should equal 'hi-diddly-ho there,...'
  End

  It 'truncates with omission'
    When call _truncate --omission=' [...]' 'hi-diddly-ho there, neighborino'
    The status should be success
    The output should equal 'hi-diddly-ho there, neig [...]'
  End

  # Context 'errors'
  #   It 'with invalid array name'
  #     When call _truncate
  #     The status should be failure
  #     The status should equal 1
  #     # The output should equal ''
  #   End
  # End
End
