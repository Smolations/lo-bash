#!/bin/bash

source functions/cuz/sourceAll.sh
_.sourceAll -r -x functions


function pass {
  echo " . $@"
}
function fail {
  echo " X $@"
}


# maybe need an _.executeAll?
_.sourceAll -r test/
# echo "-> $?"
