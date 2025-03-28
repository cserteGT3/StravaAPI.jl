# Julia client for Strava API

[![Stable](https://img.shields.io/badge/docs-stable-blue.svg)](https://cserteGT3.github.io/StravaAPI.jl/stable/)
[![Dev](https://img.shields.io/badge/docs-dev-blue.svg)](https://cserteGT3.github.io/StravaAPI.jl/dev/)
[![Build Status](https://github.com/cserteGT3/StravaAPI.jl/actions/workflows/CI.yml/badge.svg?branch=main)](https://github.com/cserteGT3/StravaAPI.jl/actions/workflows/CI.yml?query=branch%3Amain)

The code is generated with [OpenAPI.jl](https://github.com/JuliaComputing/OpenAPI.jl) and [PkgTemplates.jl](https://github.com/JuliaCI/PkgTemplates.jl).

To use the package, just install it with

```julia
] add StravaAPI
```

You'll need to get an API key, that is somewhat automated with some code inspired by [this guide](https://developers.strava.com/docs/getting-started/#oauth):

1. Copy `client_id` and `client_secret` to file `client.secret`.
2. Use `visitlink()` to get the link quickly for authentication.
3. Copy the received `code` to `code.secret` file.
4. Call `requesttoken()`. The token should be valid for 6 hours.

If the token is expired, you can request a new one with `refreshtoken`.

## Code to generate the package

This (and more) is implemented in the `generator` folder.

To update or generate the package code, run the following commands (make sure, that docker runs in the background).
Currenty directory should be `~/.julia/dev`.

```julia
using HTTP, OpenAPI, JSON
r = HTTP.get("https://developers.strava.com/swagger/swagger.json");
d = JSON.parse(String(r.body))
OpenAPI.openapi_generator()
OpenAPI.generate(d;package_name = "StravaAPI", output_dir = "StravaAPI")
OpenAPI.stop_openapi_generator()
```

### Updating the package

Not tested yet.

1. Use the code to generate source code and documentation.
2. Move the generated documentation files from `docs` to `docs/src`.
3. Replace `../README` with `./README` in all files in `docs/src`.
4. Move the generated `README.md` file to `docs/src/README.md` and keep the original (hand written) Readme in root.
5. In `docs/src/README.md`: replace `/docs/*` links with `./*`
6. Replace `[**Vector{String}**](String.md)` with `**Vector{String}**`.
7. Replace `[**Vector{Float32}**](Float32.md)` with `**Vector{Float32}**`.

## Generated Readme

See [docs/src/README.md](docs/src/README.md).
