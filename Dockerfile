ARG VERSION_TRUNK
ARG VERSION_WASM_BINDGEN_CLI

FROM lukemathwalker/cargo-chef:latest-rust-1.70.0
RUN rustup target add wasm32-unknown-unknown
RUN cargo install --version $VERSION_WASM_BINDGEN_CLI wasm-bindgen-cli
RUN cargo install --version $VERSION_TRUNK trunk