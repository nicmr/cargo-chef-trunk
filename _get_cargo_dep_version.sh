#!/bin/bash

# Gets the version number of the cargo dependency passed as $1

name_select='select(.name=="'"${1}"'")'
cargo read-manifest | jq '.dependencies[]' | jq $name_select | jq '.req' | cat