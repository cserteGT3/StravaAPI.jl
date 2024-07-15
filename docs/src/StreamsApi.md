# StreamsApi

All URIs are relative to *https://www.strava.com/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_activity_streams**](StreamsApi.md#get_activity_streams) | **GET** /activities/{id}/streams | Get Activity Streams
[**get_route_streams**](StreamsApi.md#get_route_streams) | **GET** /routes/{id}/streams | Get Route Streams
[**get_segment_effort_streams**](StreamsApi.md#get_segment_effort_streams) | **GET** /segment_efforts/{id}/streams | Get Segment Effort Streams
[**get_segment_streams**](StreamsApi.md#get_segment_streams) | **GET** /segments/{id}/streams | Get Segment Streams


# **get_activity_streams**
> get_activity_streams(_api::StreamsApi, id::Int64, keys::Vector{String}, key_by_type::Bool; _mediaType=nothing) -> StreamSet, OpenAPI.Clients.ApiResponse <br/>
> get_activity_streams(_api::StreamsApi, response_stream::Channel, id::Int64, keys::Vector{String}, key_by_type::Bool; _mediaType=nothing) -> Channel{ StreamSet }, OpenAPI.Clients.ApiResponse

Get Activity Streams

Returns the given activity's streams. Requires activity:read scope. Requires activity:read_all scope for Only Me activities.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **StreamsApi** | API context | 
**id** | **Int64**| The identifier of the activity. | [default to nothing]
**keys** | **Vector{String}**| Desired stream types. | [default to nothing]
**key_by_type** | **Bool**| Must be true. | [default to true]

### Return type

[**StreamSet**](StreamSet.md)

### Authorization

[strava_oauth](./README.md#strava_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](./README.md#api-endpoints) [[Back to Model list]](./README.md#models) [[Back to README]](./README.md)

# **get_route_streams**
> get_route_streams(_api::StreamsApi, id::Int64; _mediaType=nothing) -> StreamSet, OpenAPI.Clients.ApiResponse <br/>
> get_route_streams(_api::StreamsApi, response_stream::Channel, id::Int64; _mediaType=nothing) -> Channel{ StreamSet }, OpenAPI.Clients.ApiResponse

Get Route Streams

Returns the given route's streams. Requires read_all scope for private routes.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **StreamsApi** | API context | 
**id** | **Int64**| The identifier of the route. | [default to nothing]

### Return type

[**StreamSet**](StreamSet.md)

### Authorization

[strava_oauth](./README.md#strava_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](./README.md#api-endpoints) [[Back to Model list]](./README.md#models) [[Back to README]](./README.md)

# **get_segment_effort_streams**
> get_segment_effort_streams(_api::StreamsApi, id::Int64, keys::Vector{String}, key_by_type::Bool; _mediaType=nothing) -> StreamSet, OpenAPI.Clients.ApiResponse <br/>
> get_segment_effort_streams(_api::StreamsApi, response_stream::Channel, id::Int64, keys::Vector{String}, key_by_type::Bool; _mediaType=nothing) -> Channel{ StreamSet }, OpenAPI.Clients.ApiResponse

Get Segment Effort Streams

Returns a set of streams for a segment effort completed by the authenticated athlete. Requires read_all scope.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **StreamsApi** | API context | 
**id** | **Int64**| The identifier of the segment effort. | [default to nothing]
**keys** | **Vector{String}**| The types of streams to return. | [default to nothing]
**key_by_type** | **Bool**| Must be true. | [default to true]

### Return type

[**StreamSet**](StreamSet.md)

### Authorization

[strava_oauth](./README.md#strava_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](./README.md#api-endpoints) [[Back to Model list]](./README.md#models) [[Back to README]](./README.md)

# **get_segment_streams**
> get_segment_streams(_api::StreamsApi, id::Int64, keys::Vector{String}, key_by_type::Bool; _mediaType=nothing) -> StreamSet, OpenAPI.Clients.ApiResponse <br/>
> get_segment_streams(_api::StreamsApi, response_stream::Channel, id::Int64, keys::Vector{String}, key_by_type::Bool; _mediaType=nothing) -> Channel{ StreamSet }, OpenAPI.Clients.ApiResponse

Get Segment Streams

Returns the given segment's streams. Requires read_all scope for private segments.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **StreamsApi** | API context | 
**id** | **Int64**| The identifier of the segment. | [default to nothing]
**keys** | **Vector{String}**| The types of streams to return. | [default to nothing]
**key_by_type** | **Bool**| Must be true. | [default to true]

### Return type

[**StreamSet**](StreamSet.md)

### Authorization

[strava_oauth](./README.md#strava_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](./README.md#api-endpoints) [[Back to Model list]](./README.md#models) [[Back to README]](./README.md)

