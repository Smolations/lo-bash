#!/bin/bash

h1 '_arrayFromVar'

test_array=(1 '' 'hello there' 'umm' 'your "business" eh?')
result_array=( `_._arrayFromVar test_array` )

echo
echo "(`_._arrayFromVar test_array`)  "
echo "(${#result_array[@]}) ${result_array[@]}"
echo "(${#result_array[*]}) ${result_array[*]}"
echo
echo "${result_array[0]}, ${result_array[1]}, ${result_array[2]}, ${result_array[3]}, ${result_array[4]}, ${result_array[5]}, ${result_array[6]}, ${result_array[7]}, ${result_array[8]}"

[ "${#test_array[@]}" == "${#result_array[@]}" ] && pass || fail "${#test_array[@]} == ${#result_array[@]}"

for (( i = 0; i < ${#test_array[@]}; i++ )); do
  [ "${test_array[i]}" == "${result_array[i]}" ] && pass || fail "'${test_array[i]}' == '${result_array[i]}'"
done
