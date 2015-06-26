
function _.sum {
  local sum=0 args=($@) item
  for (( i = 0; i < ${#args[@]}; i++ )); do
    item=${args[$i]}; (( sum += item ))
  done
  echo $sum
}

