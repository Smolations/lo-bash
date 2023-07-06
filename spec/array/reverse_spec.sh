Describe 'array: _reverse()'
  Include SOURCEME

  setup() {
    arr=( 2 'hello' 'foobar' true )
  }

  BeforeCall 'setup'

  It 'reverses'
    When call _reverse arr
    The status should be success
    The value "${#arr[@]}" should equal 4
    The value "${arr[0]}" should equal true
    The value "${arr[1]}" should equal 'foobar'
    The value "${arr[2]}" should equal 'hello'
    The value "${arr[3]}" should equal 2
  End

  Context 'errors'
    It 'with invalid array name'
      When call _reverse foo
      The status should be failure
      The status should equal 1
    End
  End
End
