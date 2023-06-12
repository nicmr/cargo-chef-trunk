#!/bin/bash

# Builds the dockerfile in this repo
# Uses the cargo plugin versions specified in Cargo.toml

if [[ " $* " == *" --sudo "* ]]; then
  OPTIONAL_SUDO="sudo"
fi
VERSION_TRUNK=$(./_get_cargo_dep_version.sh trunk)
VERSION_WASM_BINDGEN_CLI=$(./_get_cargo_dep_version.sh wasm-bindgen-cli)
VERSION_CARGO_CHEF=$(./_get_cargo_dep_version.sh cargo-chef)

$OPTIONAL_SUDO docker build \
  --build-arg "VERSION_TRUNK=$VERSION_TRUNK" \
  --build-arg "VERSION_WASM_BINDGEN_CLI=$VERSION_WASM_BINDGEN_CLI" \
  --build-arg "VERSION_CARGO_CHEF=$VERSION_CARGO_CHEF" \
  -t ghcr.io/nicmr/trunk:latest .