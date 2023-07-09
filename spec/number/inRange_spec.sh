Describe 'number: _inRange()'
  Include lib/number/inRange.sh

  It 'using default start number'
    When call _inRange 5 10
    The status should be success
  End

  It 'using custom start number'
    When call _inRange 5 4 10
    The status should be success
  End

  Context 'errors'
    It 'using default start number'
      When call _inRange 15 10
      The status should be failure
      The status should equal 1
    End

    It 'using custom start number'
      When call _inRange 5 6 10
      The status should be failure
      The status should equal 1
    End
  End
End
