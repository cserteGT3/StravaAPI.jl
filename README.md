# Julia client for Strava API

[![Stable](https://img.shields.io/badge/docs-stable-blue.svg)](https://cserteGT3.github.io/StravaAPI.jl/stable/)
[![Dev](https://img.shields.io/badge/docs-dev-blue.svg)](https://cserteGT3.github.io/StravaAPI.jl/dev/)
[![Build Status](https://github.com/cserteGT3/StravaAPI.jl/actions/workflows/CI.yml/badge.svg?branch=main)](https://github.com/cserteGT3/StravaAPI.jl/actions/workflows/CI.yml?query=branch%3Amain)

The code is generated with [OpenAPI.jl](https://github.com/JuliaComputing/OpenAPI.jl) and [PkgTemplates.jl](https://github.com/JuliaCI/PkgTemplates.jl).

## Installation

To use the package, just install it (and `OpenAPI.jl`) with

```julia
] add StravaAPI OpenAPI
```

## Usage example

You'll need to authorize towards the Strava API server (not covered by this package).
See the documentation [here](https://developers.strava.com/docs/getting-started/#oauth).

With a valid `access_token`, you can get the logged in athlete:

```julia
using StravaAPI
using OpenAPI.Clients: Client, set_header
client = Client("https://www.strava.com/api/v3")
set_header(client, "Authorization", "Bearer $access_token")
api = StravaAPI.AthletesApi(client)
athlete, api_resp = get_logged_in_athlete(api)
```

## Contributing

Contributions are welcome!

### Editing the source code

As the source code is generated by OpenAPI.jl, which overwrites the `src` and `docs` folders.
Therefore every change needs to happen in the [generator](generator/) folder.
It is especially true for the documentation (file names start with `docs.*`).
To generate the package code start docker, then run the following in the project root:

```bash
julia --project=generator generator/generate.jl
```
