Describe 'array: _difference()'
  Include SOURCEME

  Context 'number arrays'
    setup() {
      arr1=(1 2 3)
      arr2=(4 2)
    }

    BeforeCall 'setup'

    It 'calculates the difference between arr1 and arr2'
      When call _difference arr_diff arr1 arr2
      The status should be success
      The value "${#arr_diff[*]}" should equal 2
      The value "${arr_diff[0]}" should equal 1
      The value "${arr_diff[1]}" should equal 3
    End

    It 'calculates the difference between arr2 and arr1'
      When call _difference arr_diff arr2 arr1
      The status should be success
      The value "${#arr_diff[*]}" should equal 1
      The value "${arr_diff[0]}" should equal 4
    End
  End

  Context 'string arrays'
    setup() {
      arr1=('dogs' 'are the' 'best')
      arr2=('the absolute' 'best')
    }

    BeforeCall 'setup'

    It 'calculates the difference between arr1 and arr2'
      When call _difference result arr1 arr2
      The status should be success
      The value "${#result[*]}" should equal 2
      The value "${result[0]}" should equal 'dogs'
      The value "${result[1]}" should equal 'are the'
    End

    It 'calculates the difference between arr2 and arr1'
      When call _difference result arr2 arr1
      The status should be success
      The value "${#result[*]}" should equal 1
      The value "${result[0]}" should equal 'the absolute'
    End
  End

  Context 'string arrays with quotes'
    setup() {
      arr1=("so that's" '"your"' "given \"name?\"")
      arr2=("yes that's" '"your"' "given \"name\"")
    }

    BeforeCall 'setup'

    It 'calculates the difference between arr1 and arr2'
      When call _difference result arr1 arr2
      The status should be success
      The value "${#result[*]}" should equal 2
      The value "${result[0]}" should equal "so that's"
      The value "${result[1]}" should equal 'given "name?"'
    End

    It 'calculates the difference between arr2 and arr1'
      When call _difference result arr2 arr1
      The status should be success
      The value "${#result[*]}" should equal 2
      The value "${result[0]}" should equal "yes that's"
      The value "${result[1]}" should equal 'given "name"'
    End
  End

  Context 'errors'
    It 'on invalid arguments'
      When call _difference arr_diff foo bar
      The status should be failure
      The status should equal 1
    End
  End
End
