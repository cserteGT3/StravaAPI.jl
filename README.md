# Julia client for Strava API

[![Stable](https://img.shields.io/badge/docs-stable-blue.svg)](https://cserteGT3.github.io/StravaAPI.jl/stable/)
[![Dev](https://img.shields.io/badge/docs-dev-blue.svg)](https://cserteGT3.github.io/StravaAPI.jl/dev/)
[![Build Status](https://github.com/cserteGT3/StravaAPI.jl/actions/workflows/CI.yml/badge.svg?branch=main)](https://github.com/cserteGT3/StravaAPI.jl/actions/workflows/CI.yml?query=branch%3Amain)

The code is generated with [OpenAPI.jl](https://github.com/JuliaComputing/OpenAPI.jl) and [PkgTemplates.jl](https://github.com/JuliaCI/PkgTemplates.jl).
See the code below.

## Code to generate the package

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

## Generated Readme

See [docs/src/README.md](docs/src/README.md).
