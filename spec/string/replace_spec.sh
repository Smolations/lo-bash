Describe 'string: _replace()'
  Include lib/string/replace.sh

  It 'replaces single letter with letter'
    When call _replace 'i am an ultimate-unicorn. bow before ME!' 'u' 'a'
    The status should be success
    The output should equal 'i am an altimate-anicorn. bow before ME!'
  End

  It 'replaces using a pattern'
    When call _replace 'i am an ultimate-unicorn. bow before ME!' 'a[^ ]+' 'x'
    The status should be success
    The output should equal 'i x x ultimx bow before ME!'
  End

  It 'replaces symbol with space'
    When call _replace 'i am an ultimate-unicorn. bow before ME!' '-' ' '
    The status should be success
    The output should equal 'i am an ultimate unicorn. bow before ME!'
  End

  It 'changes some casing'
    When call _replace 'i am an ultimate-unicorn. bow before ME!' 'ME!' 'me.'
    The status should be success
    The output should equal 'i am an ultimate-unicorn. bow before me.'
  End

  It 'replaces symbols'
    When call _replace 'some/file/path' '\/' '|'
    The status should be success
    The output should equal 'some|file|path'
  End

  # Context 'errors'
  #   It 'with invalid array name'
  #     When call _replace
  #     The status should be failure
  #     The status should equal 1
  #     # The output should equal ''
  #   End
  # End
End
