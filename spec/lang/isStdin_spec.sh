Describe 'lang: _isStdin()'
  Include lib/lang/isStdin.sh

  It 'with stdin'
    inning() { echo "hi" | _isStdin; }

    When call inning
    The status should be success
  End

  Context 'errors'
    It 'with no stdin'
      When call _isStdin
      The status should be failure
      The status should equal 1
    End
  End
End
