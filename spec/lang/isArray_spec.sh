Describe 'lang: _isArray()'
  Include SOURCEME

  setup() {
    alpha='1 2 3'
    bravo=(1 2 3)
  }

  BeforeCall 'setup'

  # not sure why original tests included these...
  # function arrayTest {
  #   _isArray $1
  # }
  # arrayTest bravo && pass || fail
  # arrayTest alpha && fail || pass

  It 'identifies an array'
    When call _isArray bravo
    The status should be success
  End

  Context 'errors'
    It 'identifies non-array'
      When call _isArray alpha
      The status should be failure
      The status should equal 1
    End
  End
End
