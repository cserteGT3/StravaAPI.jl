# StravaAPI

This package interfaces you to Strava through its API.

## Installation

## Authentication

TODO:

* add a function to set filenames for the secret files.
* document the authentication function

Following [this guide](https://developers.strava.com/docs/getting-started/#oauth):

1. Copy `client_id` and `client_secret` to file `client.secret`.
2. Use `visitlink()` to get the link quickly for authentication.
3. Copy the received `code` to `code.secret` file.
4. Call `requesttoken()`. The token should be valid for 6 hours.

If the token is expired, you can request a new one with `refreshtoken()`.

### Authentication API

Docstrings goes here.

## API documentation

The automatically generated documentation starting with the [Julia API client for StravaAPI](@ref) is included.
You may ignore the automatically generated installation and authentication instructions.

<!---
```@meta
CurrentModule = StravaAPI
```

Documentation for [StravaAPI](https://github.com/cserteGT3/StravaAPI.jl).

```@index
```

```@autodocs
Modules = [StravaAPI]
```
--->
