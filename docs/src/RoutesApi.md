# RoutesApi

All URIs are relative to *https://www.strava.com/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_route_as_g_p_x**](RoutesApi.md#get_route_as_g_p_x) | **GET** /routes/{id}/export_gpx | Export Route GPX
[**get_route_as_t_c_x**](RoutesApi.md#get_route_as_t_c_x) | **GET** /routes/{id}/export_tcx | Export Route TCX
[**get_route_by_id**](RoutesApi.md#get_route_by_id) | **GET** /routes/{id} | Get Route
[**get_routes_by_athlete_id**](RoutesApi.md#get_routes_by_athlete_id) | **GET** /athletes/{id}/routes | List Athlete Routes


# **get_route_as_g_p_x**
> get_route_as_g_p_x(_api::RoutesApi, id::Int64; _mediaType=nothing) -> Nothing, OpenAPI.Clients.ApiResponse <br/>
> get_route_as_g_p_x(_api::RoutesApi, response_stream::Channel, id::Int64; _mediaType=nothing) -> Channel{ Nothing }, OpenAPI.Clients.ApiResponse

Export Route GPX

Returns a GPX file of the route. Requires read_all scope for private routes.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **RoutesApi** | API context | 
**id** | **Int64**| The identifier of the route. | [default to nothing]

### Return type

Nothing

### Authorization

[strava_oauth](../../README.md#strava_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#api-endpoints) [[Back to Model list]](../../README.md#models) [[Back to README]](../../README.md)

# **get_route_as_t_c_x**
> get_route_as_t_c_x(_api::RoutesApi, id::Int64; _mediaType=nothing) -> Nothing, OpenAPI.Clients.ApiResponse <br/>
> get_route_as_t_c_x(_api::RoutesApi, response_stream::Channel, id::Int64; _mediaType=nothing) -> Channel{ Nothing }, OpenAPI.Clients.ApiResponse

Export Route TCX

Returns a TCX file of the route. Requires read_all scope for private routes.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **RoutesApi** | API context | 
**id** | **Int64**| The identifier of the route. | [default to nothing]

### Return type

Nothing

### Authorization

[strava_oauth](../../README.md#strava_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#api-endpoints) [[Back to Model list]](../../README.md#models) [[Back to README]](../../README.md)

# **get_route_by_id**
> get_route_by_id(_api::RoutesApi, id::Int64; _mediaType=nothing) -> Route, OpenAPI.Clients.ApiResponse <br/>
> get_route_by_id(_api::RoutesApi, response_stream::Channel, id::Int64; _mediaType=nothing) -> Channel{ Route }, OpenAPI.Clients.ApiResponse

Get Route

Returns a route using its identifier. Requires read_all scope for private routes.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **RoutesApi** | API context | 
**id** | **Int64**| The identifier of the route. | [default to nothing]

### Return type

[**Route**](Route.md)

### Authorization

[strava_oauth](../../README.md#strava_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#api-endpoints) [[Back to Model list]](../../README.md#models) [[Back to README]](../../README.md)

# **get_routes_by_athlete_id**
> get_routes_by_athlete_id(_api::RoutesApi; page=nothing, per_page=nothing, _mediaType=nothing) -> Vector{Route}, OpenAPI.Clients.ApiResponse <br/>
> get_routes_by_athlete_id(_api::RoutesApi, response_stream::Channel; page=nothing, per_page=nothing, _mediaType=nothing) -> Channel{ Vector{Route} }, OpenAPI.Clients.ApiResponse

List Athlete Routes

Returns a list of the routes created by the authenticated athlete. Private routes are filtered out unless requested by a token with read_all scope.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **RoutesApi** | API context | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Int64**| Page number. Defaults to 1. | [default to nothing]
 **per_page** | **Int64**| Number of items per page. Defaults to 30. | [default to 30]

### Return type

[**Vector{Route}**](Route.md)

### Authorization

[strava_oauth](../../README.md#strava_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#api-endpoints) [[Back to Model list]](../../README.md#models) [[Back to README]](../../README.md)

