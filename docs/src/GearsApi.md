# GearsApi

All URIs are relative to *https://www.strava.com/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_gear_by_id**](GearsApi.md#get_gear_by_id) | **GET** /gear/{id} | Get Equipment


# **get_gear_by_id**
> get_gear_by_id(_api::GearsApi, id::String; _mediaType=nothing) -> DetailedGear, OpenAPI.Clients.ApiResponse <br/>
> get_gear_by_id(_api::GearsApi, response_stream::Channel, id::String; _mediaType=nothing) -> Channel{ DetailedGear }, OpenAPI.Clients.ApiResponse

Get Equipment

Returns an equipment using its identifier.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **GearsApi** | API context | 
**id** | **String**| The identifier of the gear. | [default to nothing]

### Return type

[**DetailedGear**](DetailedGear.md)

### Authorization

[strava_oauth](../../README.md#strava_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#api-endpoints) [[Back to Model list]](../../README.md#models) [[Back to README]](../../README.md)

