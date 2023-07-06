Describe 'lang: _isNumber()'
  Include SOURCEME

  It 'decimal with no leading integer'
    When call _isNumber .4
    The status should be success
  End

  It 'integer with trailing decimal point'
    When call _isNumber 4.
    The status should be success
  End

  It 'integer'
    When call _isNumber 4
    The status should be success
  End

  It 'negative integer'
    When call _isNumber -5
    The status should be success
  End

  It 'decimal > 1'
    When call _isNumber 7.312
    The status should be success
  End

  It 'integer string'
    When call _isNumber '65'
    The status should be success
  End

  Context 'errors'
    It 'with semver'
      When call _isNumber 7.3.12
      The status should be failure
      The status should equal 1
    End

    It 'with letter'
      When call _isNumber 'a'
      The status should be failure
      The status should equal 1
    End

    It 'with string'
      When call _isNumber '2a'
      The status should be failure
      The status should equal 1
    End

    It 'with non-alpha characters'
      When call _isNumber 7.-312
      The status should be failure
      The status should equal 1
    End
  End
End
