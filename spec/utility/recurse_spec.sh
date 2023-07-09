%const TMP_DIR: "$(pwd)/tmp"

function doSomething {
  local folderPath="$1" fileName="$2"

  echo "path: $folderPath"
  echo "name: $fileName"
}

Describe 'utility: _recurse()'
  Include lib/lang/isFunction.sh

  Include lib/utility/recurse.sh

  setup() {
    mkdir -p "$TMP_DIR";

    mkdir "$TMP_DIR/dir1";
    touch "$TMP_DIR/dir1/dir1_file.sh";

    mkdir "$TMP_DIR/dir1/dir1_2";
    touch "$TMP_DIR/dir1/dir1_2/dir1_2_file.sh";

    mkdir "$TMP_DIR/dir2";
    touch "$TMP_DIR/dir2/dir2_file.sh";
  }
  teardown() { rm -rf "$TMP_DIR"; }

  BeforeAll 'setup'
  AfterAll 'teardown'

  It ''
    When call _recurse "$TMP_DIR" doSomething
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
