Describe 'lang: _isFunction()'
  Include lib/lang/isFunction.sh

  setup() {
    function whatwhat { :; }

    whowho=(1 2 3)
    whywhy='1 2 3'
  }

  BeforeCall 'setup'

  It 'identifies a function'
    When call _isFunction whatwhat
    The status should be success
  End

  Context 'errors'
    It 'with array'
      When call _isFunction whowho
      The status should be failure
      The status should equal 1
    End

    It 'with string'
      When call _isFunction whywhy
      The status should be failure
      The status should equal 1
    End
  End
End
