# cargo-chef-trunk docker image

Provides a debian-based docker image for rust wasm32 builds with trunk featuring
- wasm32 target
- [trunk](https://github.com/thedodd/trunk)
- [cargo-chef](https://github.com/LukeMathWalker/cargo-chef)
- [wasm-bindgen-cli](https://github.com/rustwasm/wasm-bindgen)

## Script requirements

- `jq`
- `cargo`
- `docker`

## Building the image

To execute the build script locally, run

```bash
./_build_image.sh --sudo
# alternatively, with rootless docker
./_build_image.sh 
```

## Using the prebuilt image

Prebuilt images are not yet available

## Tagging scheme

TBD