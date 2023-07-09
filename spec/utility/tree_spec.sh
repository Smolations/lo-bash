%const TMP_DIR: "$(pwd)/tmp"

# the function needs to be finished before a spec is attempted
xDescribe 'utility: _tree()'
  Include lib/utility/tree.sh

  # setup() { mkdir -p "$TMP_DIR"; }

  # BeforeAll 'setup'

  It ''
    When call _tree ./lib/cuz
    %sleep 5
    The status should be success
    The path $TMP_DIR should be empty dir
    # The output should equal '0123'
  End

  # Context 'errors'
  #   It 'with invalid array name'
  #     When call _times
  #     The status should be failure
  #     The status should equal 1
  #     # The output should equal ''
  #   End
  # End
End
