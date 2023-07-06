function iteratee {
  declare -i ndx=$2
  local val="$1"

  arrList+=( "${ndx}. ${val}" )
}

Describe 'array: _forEach()'
  Include SOURCEME

  setup() {
    arr=( 'alpha' 'bravo' 'charlie' )
    arrList=()
  }

  BeforeCall 'setup'

  It 'iterates'
    When call _forEach arr iteratee
    The status should be success
    The value "${arrList[0]}" should equal "0. alpha"
    The value "${arrList[1]}" should equal "1. bravo"
    The value "${arrList[2]}" should equal "2. charlie"
  End

  Context 'errors'
    It 'on invalid array name'
      When call _forEach foo iteratee
      The status should be failure
      The status should equal 1
    End

    It 'on invalid iteratee'
      When call _forEach arr foo
      The status should be failure
      The status should equal 2
    End
  End
End
