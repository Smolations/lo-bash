Describe 'date: _now()'
  Include SOURCEME

  It 'returns the epoch timestamp'
    pattern() {
      echo "$pattern" | egrep -q '^[0-9]+$'
    }

    When call _now
    The status should be success
    The output should satisfy pattern
  End
End
