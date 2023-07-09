Describe 'array: _join()'
  Include lib/_/lb_arrayCopy.sh
  Include lib/lang/isArray.sh

  Include lib/array/join.sh

  setup() {
    arr=( 'a' 'b' 'c' )
  }

  BeforeCall 'setup'

  It 'joins with a space by default'
    When call _join arr
    The status should be success
    The output should equal 'a b c'
  End

  It 'joins with a character'
    When call _join arr '~'
    The status should be success
    The output should equal 'a~b~c'
  End

  Context 'errors'
    It 'with invalid array name'
      When call _join foo '~'
      The status should be failure
      The status should equal 1
      The output should equal ''
    End
  End
End
