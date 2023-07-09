function iteratee {
  declare -i ndx=$2
  local val="$1"

  arrList+=( "${ndx}. ${val}" )
}

Describe 'array: _forEach()'
  Include lib/_/lb_arrayCopy.sh
  Include lib/lang/isArray.sh
  Include lib/lang/isFunction.sh

  Include lib/array/forEach.sh

  setup() {
    arr=( 'alpha' 'bravo' 'charlie' )
    arrList=()
  }

  BeforeCall 'setup'

  It 'iterates'
    When call _forEach arr iteratee
    The status should be success
    The variable arrList[0] should equal "0. alpha"
    The variable arrList[1] should equal "1. bravo"
    The variable arrList[2] should equal "2. charlie"
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
