# UploadsApi

All URIs are relative to *https://www.strava.com/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_upload**](UploadsApi.md#create_upload) | **POST** /uploads | Upload Activity
[**get_upload_by_id**](UploadsApi.md#get_upload_by_id) | **GET** /uploads/{uploadId} | Get Upload


# **create_upload**
> create_upload(_api::UploadsApi; file=nothing, name=nothing, description=nothing, trainer=nothing, commute=nothing, data_type=nothing, external_id=nothing, _mediaType=nothing) -> Upload, OpenAPI.Clients.ApiResponse <br/>
> create_upload(_api::UploadsApi, response_stream::Channel; file=nothing, name=nothing, description=nothing, trainer=nothing, commute=nothing, data_type=nothing, external_id=nothing, _mediaType=nothing) -> Channel{ Upload }, OpenAPI.Clients.ApiResponse

Upload Activity

Uploads a new data file to create an activity from. Requires activity:write scope.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **UploadsApi** | API context | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file** | **String****String**| The uploaded file. | [default to nothing]
 **name** | **String**| The desired name of the resulting activity. | [default to nothing]
 **description** | **String**| The desired description of the resulting activity. | [default to nothing]
 **trainer** | **String**| Whether the resulting activity should be marked as having been performed on a trainer. | [default to nothing]
 **commute** | **String**| Whether the resulting activity should be tagged as a commute. | [default to nothing]
 **data_type** | **String**| The format of the uploaded file. | [default to nothing]
 **external_id** | **String**| The desired external identifier of the resulting activity. | [default to nothing]

### Return type

[**Upload**](Upload.md)

### Authorization

[strava_oauth](../README.md#strava_oauth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_upload_by_id**
> get_upload_by_id(_api::UploadsApi, upload_id::Int64; _mediaType=nothing) -> Upload, OpenAPI.Clients.ApiResponse <br/>
> get_upload_by_id(_api::UploadsApi, response_stream::Channel, upload_id::Int64; _mediaType=nothing) -> Channel{ Upload }, OpenAPI.Clients.ApiResponse

Get Upload

Returns an upload for a given identifier. Requires activity:write scope.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **UploadsApi** | API context | 
**upload_id** | **Int64**| The identifier of the upload. | [default to nothing]

### Return type

[**Upload**](Upload.md)

### Authorization

[strava_oauth](../README.md#strava_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

