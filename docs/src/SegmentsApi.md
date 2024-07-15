# SegmentsApi

All URIs are relative to *https://www.strava.com/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**explore_segments**](SegmentsApi.md#explore_segments) | **GET** /segments/explore | Explore segments
[**get_logged_in_athlete_starred_segments**](SegmentsApi.md#get_logged_in_athlete_starred_segments) | **GET** /segments/starred | List Starred Segments
[**get_segment_by_id**](SegmentsApi.md#get_segment_by_id) | **GET** /segments/{id} | Get Segment
[**star_segment**](SegmentsApi.md#star_segment) | **PUT** /segments/{id}/starred | Star Segment


# **explore_segments**
> explore_segments(_api::SegmentsApi, bounds::Vector{Float32}; activity_type=nothing, min_cat=nothing, max_cat=nothing, _mediaType=nothing) -> ExplorerResponse, OpenAPI.Clients.ApiResponse <br/>
> explore_segments(_api::SegmentsApi, response_stream::Channel, bounds::Vector{Float32}; activity_type=nothing, min_cat=nothing, max_cat=nothing, _mediaType=nothing) -> Channel{ ExplorerResponse }, OpenAPI.Clients.ApiResponse

Explore segments

Returns the top 10 segments matching a specified query.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **SegmentsApi** | API context | 
**bounds** | [**Vector{Float32}**](Float32.md)| The latitude and longitude for two points describing a rectangular boundary for the search: [southwest corner latitutde, southwest corner longitude, northeast corner latitude, northeast corner longitude] | [default to nothing]

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **activity_type** | **String**| Desired activity type. | [default to nothing]
 **min_cat** | **Int64**| The minimum climbing category. | [default to nothing]
 **max_cat** | **Int64**| The maximum climbing category. | [default to nothing]

### Return type

[**ExplorerResponse**](ExplorerResponse.md)

### Authorization

[strava_oauth](../README.md#strava_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_logged_in_athlete_starred_segments**
> get_logged_in_athlete_starred_segments(_api::SegmentsApi; page=nothing, per_page=nothing, _mediaType=nothing) -> Vector{SummarySegment}, OpenAPI.Clients.ApiResponse <br/>
> get_logged_in_athlete_starred_segments(_api::SegmentsApi, response_stream::Channel; page=nothing, per_page=nothing, _mediaType=nothing) -> Channel{ Vector{SummarySegment} }, OpenAPI.Clients.ApiResponse

List Starred Segments

List of the authenticated athlete's starred segments. Private segments are filtered out unless requested by a token with read_all scope.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **SegmentsApi** | API context | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Int64**| Page number. Defaults to 1. | [default to nothing]
 **per_page** | **Int64**| Number of items per page. Defaults to 30. | [default to 30]

### Return type

[**Vector{SummarySegment}**](SummarySegment.md)

### Authorization

[strava_oauth](../README.md#strava_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_segment_by_id**
> get_segment_by_id(_api::SegmentsApi, id::Int64; _mediaType=nothing) -> DetailedSegment, OpenAPI.Clients.ApiResponse <br/>
> get_segment_by_id(_api::SegmentsApi, response_stream::Channel, id::Int64; _mediaType=nothing) -> Channel{ DetailedSegment }, OpenAPI.Clients.ApiResponse

Get Segment

Returns the specified segment. read_all scope required in order to retrieve athlete-specific segment information, or to retrieve private segments.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **SegmentsApi** | API context | 
**id** | **Int64**| The identifier of the segment. | [default to nothing]

### Return type

[**DetailedSegment**](DetailedSegment.md)

### Authorization

[strava_oauth](../README.md#strava_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **star_segment**
> star_segment(_api::SegmentsApi, id::Int64, starred::Bool; _mediaType=nothing) -> DetailedSegment, OpenAPI.Clients.ApiResponse <br/>
> star_segment(_api::SegmentsApi, response_stream::Channel, id::Int64, starred::Bool; _mediaType=nothing) -> Channel{ DetailedSegment }, OpenAPI.Clients.ApiResponse

Star Segment

Stars/Unstars the given segment for the authenticated athlete. Requires profile:write scope.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **SegmentsApi** | API context | 
**id** | **Int64**| The identifier of the segment to star. | [default to nothing]
**starred** | **Bool**| If true, star the segment; if false, unstar the segment. | [default to false]

### Return type

[**DetailedSegment**](DetailedSegment.md)

### Authorization

[strava_oauth](../README.md#strava_oauth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

