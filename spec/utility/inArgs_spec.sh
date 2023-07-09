Describe 'utility: _inArgs()'
  Include lib/utility/inArgs.sh

  It 'finds a posix arg and its value/index'
    args=("--foo=bar" "-ab" "--jolly='roger comes'" "--dsnuts" '--for="real though"')

    When call _inArgs foo "${args[@]}"
    The status should be success
    The variable _arg_val should equal 'bar'
    The variable _arg_index should equal 0
  End

  It 'finds a single combined char arg and its value/index'
    args=("--foo=bar" "-ab" "--jolly='roger comes'" "--dsnuts" '--for="real though"')

    When call _inArgs a "${args[@]}"
    The status should be success
    The variable _arg_val should equal ''
    The variable _arg_index should equal 1
  End

  It 'finds a trailing combined char arg and its value/index'
    args=("--foo=bar" "-ab" "--jolly='roger comes'" "--dsnuts" '--for="real though"')

    When call _inArgs b "${args[@]}"
    The status should be success
    The variable _arg_val should equal ''
    The variable _arg_index should equal 1
  End

  It 'finds a single-quoted posix arg and its value/index'
    args=("--foo=bar" "-ab" "--jolly='roger comes'" "--dsnuts" '--for="real though"')

    When call _inArgs jolly "${args[@]}"
    The status should be success
    The variable _arg_val should equal 'roger comes'
    The variable _arg_index should equal 2
  End

  It 'finds a value-less (boolean) posix arg and its index'
    args=("--foo=bar" "-ab" "--jolly='roger comes'" "--dsnuts" '--for="real though"')

    When call _inArgs dsnuts "${args[@]}"
    The status should be success
    The variable _arg_val should equal ''
    The variable _arg_index should equal 3
  End

  It 'finds a double-quoted posix arg and its value/index'
    args=("--foo=bar" "-ab" "--jolly='roger comes'" "--dsnuts" '--for="real though"')

    When call _inArgs 'for' "${args[@]}"
    The status should be success
    The variable _arg_val should equal 'real though'
    The variable _arg_index should equal 4
  End

  # Context 'errors'
  #   It 'with invalid array name'
  #     When call _inArgs
  #     The status should be failure
  #     The status should equal 1
  #     # The output should equal ''
  #   End
  # End
End
