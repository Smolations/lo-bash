function iteratee {
  declare -i ndx=$2
  local val="$1"

  if (( ndx > 1 )); then
    _toUpper "$val"
  else
    echo "$val"
  fi
}

Describe 'array: _map()'
  Include SOURCEME

  setup() {
    arr=( 'thiz' 'be' 'insane')
  }

  BeforeCall 'setup'

  It 'maps'
    When call _map arr iteratee newArray
    The status should be success
    The value "${newArray[0]}" should equal "thiz"
    The value "${newArray[1]}" should equal "be"
    The value "${newArray[2]}" should equal "INSANE"
  End

  Context 'errors'
    It 'with invalid source array name'
      When call _map foo iteratee newArray
      The status should be failure
      The status should equal 1
    End

    It 'with invalid iteratee name'
      When call _map arr foo newArray
      The status should be failure
      The status should equal 2
    End
  End
End
