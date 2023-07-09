%const TMP_DIR: "$(pwd)/tmp"

# the test infrastructure doesn't really support this
xDescribe 'utility: _waitOn()'
  Include lib/utility/inArgs.sh

  Include lib/utility/waitOn.sh

  setup() {
    mkdir -p "$TMP_DIR";
    scriptPath="$TMP_DIR/script.sh"
    echo "echo 'sleeping...'; sleep 3; echo 'done'; exit 0" > "$scriptPath";
    chmod +x "$scriptPath";
  }
  teardown() { rm -rf "$TMP_DIR"; }

  BeforeAll 'setup'
  AfterAll 'teardown'

  run_script() {
    $scriptPath &
    %puts "pid: $!"
    pid=$!
  }

  # BeforeCall 'run_script'

  It ''
    #  @usage _waitOn [--max-time=<seconds>] <processID> [<wait_message>]
    $scriptPath &
    pid=$!

    %puts "waiting on pid: $pid"
    wait $pid
    When call _waitOn $pid
    The status should be success
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
