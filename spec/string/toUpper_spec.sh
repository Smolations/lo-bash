Describe 'string: _toUpper()'
  Include lib/string/toUpper.sh

  It 'with symbols'
    When call _toUpper '--Foo-Bar--'
    The status should be success
    The output should equal '--FOO-BAR--'
  End

  It 'just letters'
    When call _toUpper 'fooBar'
    The status should be success
    The output should equal 'FOOBAR'
  End

  It 'with symbols...again'
    When call _toUpper '__foo_bar__'
    The status should be success
    The output should equal '__FOO_BAR__'
  End

  # Context 'errors'
  #   It 'with invalid array name'
  #     When call _toUpper
  #     The status should be failure
  #     The status should equal 1
  #     # The output should equal ''
  #   End
  # End
End
