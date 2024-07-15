# AthletesApi

All URIs are relative to *https://www.strava.com/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_logged_in_athlete**](AthletesApi.md#get_logged_in_athlete) | **GET** /athlete | Get Authenticated Athlete
[**get_logged_in_athlete_zones**](AthletesApi.md#get_logged_in_athlete_zones) | **GET** /athlete/zones | Get Zones
[**get_stats**](AthletesApi.md#get_stats) | **GET** /athletes/{id}/stats | Get Athlete Stats
[**update_logged_in_athlete**](AthletesApi.md#update_logged_in_athlete) | **PUT** /athlete | Update Athlete


# **get_logged_in_athlete**
> get_logged_in_athlete(_api::AthletesApi; _mediaType=nothing) -> DetailedAthlete, OpenAPI.Clients.ApiResponse <br/>
> get_logged_in_athlete(_api::AthletesApi, response_stream::Channel; _mediaType=nothing) -> Channel{ DetailedAthlete }, OpenAPI.Clients.ApiResponse

Get Authenticated Athlete

Returns the currently authenticated athlete. Tokens with profile:read_all scope will receive a detailed athlete representation; all others will receive a summary representation.

### Required Parameters
This endpoint does not need any parameter.

### Return type

[**DetailedAthlete**](DetailedAthlete.md)

### Authorization

[strava_oauth](../../README.md#strava_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#api-endpoints) [[Back to Model list]](../../README.md#models) [[Back to README]](../../README.md)

# **get_logged_in_athlete_zones**
> get_logged_in_athlete_zones(_api::AthletesApi; _mediaType=nothing) -> Zones, OpenAPI.Clients.ApiResponse <br/>
> get_logged_in_athlete_zones(_api::AthletesApi, response_stream::Channel; _mediaType=nothing) -> Channel{ Zones }, OpenAPI.Clients.ApiResponse

Get Zones

Returns the the authenticated athlete's heart rate and power zones. Requires profile:read_all.

### Required Parameters
This endpoint does not need any parameter.

### Return type

[**Zones**](Zones.md)

### Authorization

[strava_oauth](../../README.md#strava_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#api-endpoints) [[Back to Model list]](../../README.md#models) [[Back to README]](../../README.md)

# **get_stats**
> get_stats(_api::AthletesApi, id::Int64; _mediaType=nothing) -> ActivityStats, OpenAPI.Clients.ApiResponse <br/>
> get_stats(_api::AthletesApi, response_stream::Channel, id::Int64; _mediaType=nothing) -> Channel{ ActivityStats }, OpenAPI.Clients.ApiResponse

Get Athlete Stats

Returns the activity stats of an athlete. Only includes data from activities set to Everyone visibilty.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **AthletesApi** | API context | 
**id** | **Int64**| The identifier of the athlete. Must match the authenticated athlete. | [default to nothing]

### Return type

[**ActivityStats**](ActivityStats.md)

### Authorization

[strava_oauth](../../README.md#strava_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#api-endpoints) [[Back to Model list]](../../README.md#models) [[Back to README]](../../README.md)

# **update_logged_in_athlete**
> update_logged_in_athlete(_api::AthletesApi, weight::Float32; _mediaType=nothing) -> DetailedAthlete, OpenAPI.Clients.ApiResponse <br/>
> update_logged_in_athlete(_api::AthletesApi, response_stream::Channel, weight::Float32; _mediaType=nothing) -> Channel{ DetailedAthlete }, OpenAPI.Clients.ApiResponse

Update Athlete

Update the currently authenticated athlete. Requires profile:write scope.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **AthletesApi** | API context | 
**weight** | **Float32**| The weight of the athlete in kilograms. | [default to nothing]

### Return type

[**DetailedAthlete**](DetailedAthlete.md)

### Authorization

[strava_oauth](../../README.md#strava_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#api-endpoints) [[Back to Model list]](../../README.md#models) [[Back to README]](../../README.md)

