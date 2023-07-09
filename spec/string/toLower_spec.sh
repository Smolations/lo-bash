Describe 'string: _toLower()'
  Include lib/string/toLower.sh

  It 'with symbols'
    When call _toLower '--Foo-Bar--'
    The status should be success
    The output should equal '--foo-bar--'
  End

  It 'just letters'
    When call _toLower 'fooBar'
    The status should be success
    The output should equal 'foobar'
  End

  It 'with symbols...again'
    When call _toLower '__FOO_BAR__'
    The status should be success
    The output should equal '__foo_bar__'
  End

  # Context 'errors'
  #   It 'with invalid array name'
  #     When call _toLower
  #     The status should be failure
  #     The status should equal 1
  #     # The output should equal ''
  #   End
  # End
End
