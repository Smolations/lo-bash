Describe 'array: _reverse()'
  Include lib/_/lb_arrayCopy.sh
  Include lib/lang/isArray.sh

  Include lib/array/reverse.sh

  setup() {
    arr=( 2 'hello' 'foobar' true )
  }

  BeforeCall 'setup'

  It 'reverses'
    When call _reverse arr
    The status should be success
    The value "${#arr[@]}" should equal 4
    The variable arr[0] should equal true
    The variable arr[1] should equal 'foobar'
    The variable arr[2] should equal 'hello'
    The variable arr[3] should equal 2
  End

  Context 'errors'
    It 'with invalid array name'
      When call _reverse foo
      The status should be failure
      The status should equal 1
    End
  End
End
