Describe 'array: _pull()'
  Include SOURCEME

  setup() {
    arr=( 2 'hello' 'foobar' true )
  }

  BeforeCall 'setup'

  It 'pulls'
    When call _pull arr 'hello' true
    The status should be success
    The value "${#arr[@]}" should equal 2
    The value "${arr[0]}" should equal 2
    The value "${arr[1]}" should equal 'foobar'
  End

  Context 'errors'
    It 'with invalid array name'
      When call _pull foo 'hello' true
      The status should be failure
      The status should equal 1
    End
  End
End
