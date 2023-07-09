Describe 'cuz: _typeExists()'
  Include lib/cuz/typeExists.sh

  not_osx() { [ ! -d '/Applications' ]; }

  It 'identifies builtin'
    When call _typeExists echo
    The status should be success
    The variable _type_is should equal 'builtin'
  End

  It 'identifies keyword'
    When call _typeExists fi
    The status should be success
    The variable _type_is should equal 'keyword'
  End

  It 'identifies function'
    When call _typeExists _typeExists
    The status should be success
    The variable _type_is should equal 'function'
  End

  Describe 'conditional passes'
    Skip if "not OS X" not_osx

    It 'identifies os x app'
      When call _typeExists 'Finder'
      The status should be success
      The variable _type_is should equal 'app'
    End

    It 'identifies app as unquoted argument'
      When call _typeExists -p Mission Control
      The status should be success
      The variable _type_is should equal 'app'
    End
  End

  Context 'errors'
    It 'identifies builtin but not as desired type'
      When call _typeExists -f echo
      The status should be failure
      The status should equal 4
      The variable _type_is should equal 'builtin'
    End

    It 'identifies file but with invalid option'
      When call _typeExists -app git
      The status should be failure
      The status should equal 2
      The variable _type_is should equal 'file'
      The output should include 'Incorrect option [git]'
    End

    Describe 'conditional failures'
      Skip if "not OS X" not_osx

      It 'identifies nothing'
        When call _typeExists Mission Control
        The status should be failure
        The status should equal 4
        The variable _type_is should equal ''
      End
    End
  End
End
