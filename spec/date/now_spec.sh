Describe 'date: _now()'
  Include lib/date/now.sh

  It 'returns the epoch timestamp'
    pattern() {
      echo "$pattern" | grep -E -q '^[0-9]+$'
    }

    When call _now
    The status should be success
    The output should satisfy pattern
  End
End
