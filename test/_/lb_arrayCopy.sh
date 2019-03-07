#!/bin/bash

h1 'lb_arrayCopy'

test_array=(1 '' 'hello there' 'umm' 'your "business" eh?')
lb_arrayCopy result_array test_array


[[ "${#test_array[@]}" == "${#result_array[@]}" ]] && pass || fail "${#test_array[@]} == ${#result_array[@]}"

for (( i = 0; i < ${#test_array[@]}; i++ )); do
  [[ "${test_array[i]}" == "${result_array[i]}" ]] && pass || fail "'${test_array[i]}' == '${result_array[i]}'"
done
