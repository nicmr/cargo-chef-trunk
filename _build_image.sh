#!/bin/bash

# Builds the dockerfile in this repo
# Uses the cargo plugin versions specified in Cargo.toml

VERSION_TRUNK=$(./_get_cargo_dep_version.sh trunk)
VERSION_WASM_BINDGEN_CLI=$(./_get_cargo_dep_version.sh wasm-bindgen-cli)
VERSION_CARGO_CHEF=$(./get_cargo_dep_version.sh cargo-chef)
docker build \
  --build-arg \
    "VERSION_TRUNK=$VERSION_TRUNK"\
    "VERSION_WASM_BINDGEN_CLI=$VERSION_WASM_BINDGEN_CLI" \
    "VERSION_CARGO_CHEF=$(./get_cargo_dep_version.sh)" \
  -t ghcr.io/nicmr/trunk:latest