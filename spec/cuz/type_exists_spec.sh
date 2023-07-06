xDescribe 'cuz: _type_exists()'
  Include SOURCEME

#   setup() {
#   }
#
#   BeforeCall 'setup'

  It ''
    When call _type_exists
    The status should be success
    The value true should equal false
  End

  Context 'errors'
    It 'with invalid array name'
      When call _type_exists
      The status should be failure
      The status should equal 1
      # The output should equal ''
    End
  End
End
