# SegmentEffortsApi

All URIs are relative to *https://www.strava.com/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_efforts_by_segment_id**](SegmentEffortsApi.md#get_efforts_by_segment_id) | **GET** /segment_efforts | List Segment Efforts
[**get_segment_effort_by_id**](SegmentEffortsApi.md#get_segment_effort_by_id) | **GET** /segment_efforts/{id} | Get Segment Effort


# **get_efforts_by_segment_id**
> get_efforts_by_segment_id(_api::SegmentEffortsApi, segment_id::Int64; start_date_local=nothing, end_date_local=nothing, per_page=nothing, _mediaType=nothing) -> Vector{DetailedSegmentEffort}, OpenAPI.Clients.ApiResponse <br/>
> get_efforts_by_segment_id(_api::SegmentEffortsApi, response_stream::Channel, segment_id::Int64; start_date_local=nothing, end_date_local=nothing, per_page=nothing, _mediaType=nothing) -> Channel{ Vector{DetailedSegmentEffort} }, OpenAPI.Clients.ApiResponse

List Segment Efforts

Returns a set of the authenticated athlete's segment efforts for a given segment.  Requires subscription.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **SegmentEffortsApi** | API context | 
**segment_id** | **Int64**| The identifier of the segment. | [default to nothing]

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_date_local** | **ZonedDateTime**| ISO 8601 formatted date time. | [default to nothing]
 **end_date_local** | **ZonedDateTime**| ISO 8601 formatted date time. | [default to nothing]
 **per_page** | **Int64**| Number of items per page. Defaults to 30. | [default to 30]

### Return type

[**Vector{DetailedSegmentEffort}**](DetailedSegmentEffort.md)

### Authorization

[strava_oauth](../../README.md#strava_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#api-endpoints) [[Back to Model list]](../../README.md#models) [[Back to README]](../../README.md)

# **get_segment_effort_by_id**
> get_segment_effort_by_id(_api::SegmentEffortsApi, id::Int64; _mediaType=nothing) -> DetailedSegmentEffort, OpenAPI.Clients.ApiResponse <br/>
> get_segment_effort_by_id(_api::SegmentEffortsApi, response_stream::Channel, id::Int64; _mediaType=nothing) -> Channel{ DetailedSegmentEffort }, OpenAPI.Clients.ApiResponse

Get Segment Effort

Returns a segment effort from an activity that is owned by the authenticated athlete. Requires subscription.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **SegmentEffortsApi** | API context | 
**id** | **Int64**| The identifier of the segment effort. | [default to nothing]

### Return type

[**DetailedSegmentEffort**](DetailedSegmentEffort.md)

### Authorization

[strava_oauth](../../README.md#strava_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#api-endpoints) [[Back to Model list]](../../README.md#models) [[Back to README]](../../README.md)

