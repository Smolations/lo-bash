Describe 'array: _last()'
  Include SOURCEME

  setup() {
    arr1=( 2 'hello' 'foobar' true 'hello' )
    arr2=( )
  }

  BeforeCall 'setup'

  It 'finds the last item'
    When call _last arr1
    The status should be success
    The output should equal 'hello'
  End

  Context 'errors'
    It 'on invalid array name'
      When call _last arr3
      The status should be failure
      The status should equal 1
      The output should equal ''
    End

    It 'when it finds nothing from an empty array'
      When call _last arr2
      The status should be failure
      The status should equal 2
      The output should equal ''
    End
  End
End
