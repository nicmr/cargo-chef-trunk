ARG VERSION_RUST=1.72.0

FROM rust:$VERSION_RUST
ARG VERSION_CARGO_CHEF
ARG VERSION_TRUNK
ARG VERSION_WASM_BINDGEN_CLI

RUN rustup target add wasm32-unknown-unknown
RUN cargo install --version $VERSION_CARGO_CHEF cargo-chef
RUN cargo install --version $VERSION_WASM_BINDGEN_CLI wasm-bindgen-cli
RUN cargo install --version $VERSION_TRUNK trunk
