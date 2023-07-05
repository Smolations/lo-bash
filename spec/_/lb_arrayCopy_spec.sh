Describe '_: lb_arrayCopy()'
  Include SOURCEME

  setup() {
    test_array=(1 '' 'hello there' 'umm' 'your "business" eh?')
  }

  BeforeCall 'setup'

  It 'creates an array copy of same length'
    When call lb_arrayCopy result_array test_array
    The status should be success
    The value "${#result_array[@]}" should equal '5'
  End

  It 'creates an array copy with correct values'
    When call lb_arrayCopy result_array test_array
    The status should be success
    The value "${result_array[0]}" should equal '1'
    The value "${result_array[1]}" should equal ''
    The value "${result_array[2]}" should equal 'hello there'
    The value "${result_array[3]}" should equal 'umm'
    The value "${result_array[4]}" should equal 'your "business" eh?'
  End

  Context 'errors'
    It 'when given invalid array name'
      When call lb_arrayCopy result_array foo
      The status should be failure
      The status should equal 1
    End
  End
End
