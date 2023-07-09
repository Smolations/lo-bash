function predicate {
  declare -i turn=1
  local element="$1"
  (( ${#element} > 4 )) && turn=0
  return $turn
}

Describe 'array: _remove()'
  Include lib/_/lb_arrayCopy.sh
  Include lib/lang/isArray.sh

  Include lib/array/remove.sh

  setup() {
    arr=( 'hiya' 'hello' 'foobar' 'deuces' 'sup' )
  }

  BeforeCall 'setup'

  It 'removes'
    When call _remove arr predicate
    The status should be success
    The value "${#arr[@]}" should equal 2
    The value "${arr[0]}" should equal 'hiya'
    The value "${arr[1]}" should equal 'sup'
  End

  Context 'errors'
    It 'with invalid array name'
      When call _remove foo predicate
      The status should be failure
      The status should equal 1
    End
  End
End
