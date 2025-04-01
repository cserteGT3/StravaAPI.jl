# StravaAPI

This package interfaces you to Strava through its [API](https://developers.strava.com/).

<INSERT_DATE>

## Installation

Install the package via:

```julia
] add StravaAPI
```

## Authentication

Please note that setting up the authorization is not provided by this package.
You can read about it [in Strava's documentation](https://developers.strava.com/docs/getting-started/#oauth).

## Usage example

With a valid `access_token` (see above), you can get the logged in athlete ([`get_logged_in_athlete`](@ref)):

```julia
using OpenAPI
using OpenAPI.Clients
import OpenAPI.Clients: Client, set_header
client = Client("https://www.strava.com/api/v3")
set_header(client, "Authorization", "Bearer $access_token")
api = StravaAPI.AthletesApi(client)
athlete, api_resp = get_logged_in_athlete(api)
```

## Documentation

The documentation includes:

* Julia code docstrings: [Julia docstrings](@ref)
* OpenAPI generated Readme (ignore the installation instructions): [Julia API client for StravaAPI](@ref)
* OpenAPI generated API documentation: below the **API** section
