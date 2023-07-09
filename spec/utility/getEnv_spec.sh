Describe 'utility: _getEnv()'
  Include lib/utility/getEnv.sh

  osx() { [ -d '/Applications' ]; }
  linux() { [ -d '/usr' ]; }

  Describe 'conditional linux'
    Skip if 'not linux' osx

    It 'sets correc env vars'
      When call _getEnv
      The status should be success
      The variable _ENV_UNIX should equal true
      The variable _ENV_LINUX should equal true
      The variable _ENV_OSX should equal ''
      The variable _ENV_WINDOWS should equal ''
      The variable _ENV_CYGWIN should equal ''
      The variable _ENV_MSYSGIT should equal ''
      The variable _ENV_OTHER should equal ''
      The variable _ENV_SUMMARY should equal 'unix-linux'
    End

    It 'outputs env summary'
      When call _getEnv -e
      The status should be success
      The output should equal 'unix-linux'
    End
  End

  Describe 'conditional OS X'
    Skip if 'not os x' linux

    It 'sets correc env vars'
      When call _getEnv
      The status should be success
      The variable _ENV_UNIX should equal true
      The variable _ENV_LINUX should equal ''
      The variable _ENV_OSX should equal true
      The variable _ENV_WINDOWS should equal ''
      The variable _ENV_CYGWIN should equal ''
      The variable _ENV_MSYSGIT should equal ''
      The variable _ENV_OTHER should equal ''
      The variable _ENV_SUMMARY should equal 'unix-osx'
    End

    It 'outputs env summary'
      When call _getEnv -e
      The status should be success
      The output should equal 'unix-osx'
    End
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
