Describe 'utility: _shortAns()'
  Include lib/utility/shortAns.sh

  It 'shows the prompt and saves the answer'
    Data 'orange'

    When call _shortAns 'what is your favorite color?'
    The status should be success
    The output should include 'what is your favorite color?'
    The variable _ans should equal 'orange'
  End

  Context 'errors'
    It 'no arguments were passed'
      When call _shortAns
      The status should be failure
      The status should equal 1
    End
  End
End
