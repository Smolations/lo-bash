Describe 'utility: _yesNo()'
  Include lib/utility/inArgs.sh

  Include lib/utility/yesNo.sh

  Describe 'defaults to yes'
    It 'accepts default answer'
      Data "$'\r'"

      When call _yesNo --default=y 'do a thing'
      The status should be success
      The output should include 'do a thing [Y/n]?'
      The variable _raw_ans should equal 'y'
      The variable _yes should equal true
      The variable _no should be blank
    End

    Describe 'but answers'
      Parameters
        '#1' 'n'
        '#2' 'N'
      End

      It "$1"
        Data "$2"

        When call _yesNo --default=y 'do a thing'
        The status should be success
        The output should include 'do a thing [Y/n]?'
        The variable _raw_ans should equal 'n'
        The variable _yes should be blank
        The variable _no should equal true
      End
    End
  End

  Describe 'defaults to no'
    It 'accepts default answer'
      Data "$'\r'"

      When call _yesNo --default=n 'do a thing'
      The status should be success
      The output should include 'do a thing [y/N]?'
      The variable _raw_ans should equal 'n'
      The variable _yes should be blank
      The variable _no should equal true
    End

    Describe 'but answers'
      Parameters
        '#1' 'y'
        '#2' 'Y'
      End

      It "$1"
        Data "$2"

        When call _yesNo --default=n 'do a thing'
        The status should be success
        The output should include 'do a thing [y/N]?'
        The variable _raw_ans should equal 'y'
        The variable _yes should equal true
        The variable _no should be blank
      End
    End
  End

  Context 'errors'
    It 'less than 2 args passed to function'
      When call _yesNo 'do a thing'
      The status should be failure
      The status should equal 1
    End

    It 'incorrect args'
      When call _yesNo foo 'do a thing'
      The status should be failure
      The status should equal 2
    End

    It 'bad default option'
      When call _yesNo --default=poo 'do a thing'
      The status should be failure
      The status should equal 4
    End
  End
End
