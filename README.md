# Julia client for Strava API

[![Stable](https://img.shields.io/badge/docs-stable-blue.svg)](https://cserteGT3.github.io/StravaAPI.jl/stable/)
[![Dev](https://img.shields.io/badge/docs-dev-blue.svg)](https://cserteGT3.github.io/StravaAPI.jl/dev/)
[![Build Status](https://github.com/cserteGT3/StravaAPI.jl/actions/workflows/CI.yml/badge.svg?branch=main)](https://github.com/cserteGT3/StravaAPI.jl/actions/workflows/CI.yml?query=branch%3Amain)

The code is generated with [OpenAPI.jl](https://github.com/JuliaComputing/OpenAPI.jl) and [PkgTemplates.jl](https://github.com/JuliaCI/PkgTemplates.jl).

To use the package, just install it with

```julia
] add StravaAPI
```

You'll need to authorize towards the Strava API server.
See the documentation [here](https://developers.strava.com/docs/getting-started/#oauth).

## Code to generate the package

The package is generated with OpenAPI.jl and uses some postprocessing for the documentation.
You can find the source code in the [generator](generator/) folder.
To generate the package code start docker, then run the followings in the project root:

```bash
julia --project=generator generator/generate.jl
```

## Generated Readme

See [docs/src/README.md](docs/src/README.md).
