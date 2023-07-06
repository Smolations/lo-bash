Describe 'array: _indexOf()'
  Include SOURCEME

  setup() {
    arr=( 2 'hello' 'foobar' true 'hello' )
  }

  BeforeCall 'setup'

  It 'finds the number'
    When call _indexOf arr 2
    The status should be success
    The output should equal 0
  End

  It 'finds the string'
    When call _indexOf arr 'hello'
    The status should be success
    The output should equal 1
  End

  It 'finds the second instance of a string'
    When call _indexOf arr 'hello' 2
    The status should be success
    The output should equal 4
  End

  It 'finds the boolean'
    When call _indexOf arr true
    The status should be success
    The output should equal 3
  End

  Context 'errors'
    It 'on invalid array name'
      When call _indexOf foo true
      The status should be failure
      The status should equal 1
      The output should equal ''
    End

    It 'if <fromIndex> is greater than the length of the given array'
      When call _indexOf arr true 100
      The status should be failure
      The status should equal 2
      The output should equal ''
    End
  End
End
