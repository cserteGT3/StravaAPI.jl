# ActivitiesApi

All URIs are relative to *https://www.strava.com/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_activity**](ActivitiesApi.md#create_activity) | **POST** /activities | Create an Activity
[**get_activity_by_id**](ActivitiesApi.md#get_activity_by_id) | **GET** /activities/{id} | Get Activity
[**get_comments_by_activity_id**](ActivitiesApi.md#get_comments_by_activity_id) | **GET** /activities/{id}/comments | List Activity Comments
[**get_kudoers_by_activity_id**](ActivitiesApi.md#get_kudoers_by_activity_id) | **GET** /activities/{id}/kudos | List Activity Kudoers
[**get_laps_by_activity_id**](ActivitiesApi.md#get_laps_by_activity_id) | **GET** /activities/{id}/laps | List Activity Laps
[**get_logged_in_athlete_activities**](ActivitiesApi.md#get_logged_in_athlete_activities) | **GET** /athlete/activities | List Athlete Activities
[**get_zones_by_activity_id**](ActivitiesApi.md#get_zones_by_activity_id) | **GET** /activities/{id}/zones | Get Activity Zones
[**update_activity_by_id**](ActivitiesApi.md#update_activity_by_id) | **PUT** /activities/{id} | Update Activity


# **create_activity**
> create_activity(_api::ActivitiesApi, name::String, sport_type::String, start_date_local::ZonedDateTime, elapsed_time::Int64; type=nothing, description=nothing, distance=nothing, trainer=nothing, commute=nothing, _mediaType=nothing) -> DetailedActivity, OpenAPI.Clients.ApiResponse <br/>
> create_activity(_api::ActivitiesApi, response_stream::Channel, name::String, sport_type::String, start_date_local::ZonedDateTime, elapsed_time::Int64; type=nothing, description=nothing, distance=nothing, trainer=nothing, commute=nothing, _mediaType=nothing) -> Channel{ DetailedActivity }, OpenAPI.Clients.ApiResponse

Create an Activity

Creates a manual activity for an athlete, requires activity:write scope.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **ActivitiesApi** | API context | 
**name** | **String**| The name of the activity. | [default to nothing]
**sport_type** | **String**| Sport type of activity. For example - Run, MountainBikeRide, Ride, etc. | [default to nothing]
**start_date_local** | **ZonedDateTime**| ISO 8601 formatted date time. | [default to nothing]
**elapsed_time** | **Int64**| In seconds. | [default to nothing]

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | **String**| Type of activity. For example - Run, Ride etc. | [default to nothing]
 **description** | **String**| Description of the activity. | [default to nothing]
 **distance** | **Float32**| In meters. | [default to nothing]
 **trainer** | **Int64**| Set to 1 to mark as a trainer activity. | [default to nothing]
 **commute** | **Int64**| Set to 1 to mark as commute. | [default to nothing]

### Return type

[**DetailedActivity**](DetailedActivity.md)

### Authorization

[strava_oauth](./README.md#strava_oauth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](./README.md#api-endpoints) [[Back to Model list]](./README.md#models) [[Back to README]](./README.md)

# **get_activity_by_id**
> get_activity_by_id(_api::ActivitiesApi, id::Int64; include_all_efforts=nothing, _mediaType=nothing) -> DetailedActivity, OpenAPI.Clients.ApiResponse <br/>
> get_activity_by_id(_api::ActivitiesApi, response_stream::Channel, id::Int64; include_all_efforts=nothing, _mediaType=nothing) -> Channel{ DetailedActivity }, OpenAPI.Clients.ApiResponse

Get Activity

Returns the given activity that is owned by the authenticated athlete. Requires activity:read for Everyone and Followers activities. Requires activity:read_all for Only Me activities.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **ActivitiesApi** | API context | 
**id** | **Int64**| The identifier of the activity. | [default to nothing]

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **include_all_efforts** | **Bool**| To include all segments efforts. | [default to nothing]

### Return type

[**DetailedActivity**](DetailedActivity.md)

### Authorization

[strava_oauth](./README.md#strava_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](./README.md#api-endpoints) [[Back to Model list]](./README.md#models) [[Back to README]](./README.md)

# **get_comments_by_activity_id**
> get_comments_by_activity_id(_api::ActivitiesApi, id::Int64; page=nothing, per_page=nothing, page_size=nothing, after_cursor=nothing, _mediaType=nothing) -> Vector{Comment}, OpenAPI.Clients.ApiResponse <br/>
> get_comments_by_activity_id(_api::ActivitiesApi, response_stream::Channel, id::Int64; page=nothing, per_page=nothing, page_size=nothing, after_cursor=nothing, _mediaType=nothing) -> Channel{ Vector{Comment} }, OpenAPI.Clients.ApiResponse

List Activity Comments

Returns the comments on the given activity. Requires activity:read for Everyone and Followers activities. Requires activity:read_all for Only Me activities.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **ActivitiesApi** | API context | 
**id** | **Int64**| The identifier of the activity. | [default to nothing]

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Int64**| Deprecated. Prefer to use after_cursor. | [default to nothing]
 **per_page** | **Int64**| Deprecated. Prefer to use page_size. | [default to 30]
 **page_size** | **Int64**| Number of items per page. Defaults to 30. | [default to 30]
 **after_cursor** | **String**| Cursor of the last item in the previous page of results, used to request the subsequent page of results.  When omitted, the first page of results is fetched. | [default to nothing]

### Return type

[**Vector{Comment}**](Comment.md)

### Authorization

[strava_oauth](./README.md#strava_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](./README.md#api-endpoints) [[Back to Model list]](./README.md#models) [[Back to README]](./README.md)

# **get_kudoers_by_activity_id**
> get_kudoers_by_activity_id(_api::ActivitiesApi, id::Int64; page=nothing, per_page=nothing, _mediaType=nothing) -> Vector{SummaryAthlete}, OpenAPI.Clients.ApiResponse <br/>
> get_kudoers_by_activity_id(_api::ActivitiesApi, response_stream::Channel, id::Int64; page=nothing, per_page=nothing, _mediaType=nothing) -> Channel{ Vector{SummaryAthlete} }, OpenAPI.Clients.ApiResponse

List Activity Kudoers

Returns the athletes who kudoed an activity identified by an identifier. Requires activity:read for Everyone and Followers activities. Requires activity:read_all for Only Me activities.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **ActivitiesApi** | API context | 
**id** | **Int64**| The identifier of the activity. | [default to nothing]

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Int64**| Page number. Defaults to 1. | [default to nothing]
 **per_page** | **Int64**| Number of items per page. Defaults to 30. | [default to 30]

### Return type

[**Vector{SummaryAthlete}**](SummaryAthlete.md)

### Authorization

[strava_oauth](./README.md#strava_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](./README.md#api-endpoints) [[Back to Model list]](./README.md#models) [[Back to README]](./README.md)

# **get_laps_by_activity_id**
> get_laps_by_activity_id(_api::ActivitiesApi, id::Int64; _mediaType=nothing) -> Vector{Lap}, OpenAPI.Clients.ApiResponse <br/>
> get_laps_by_activity_id(_api::ActivitiesApi, response_stream::Channel, id::Int64; _mediaType=nothing) -> Channel{ Vector{Lap} }, OpenAPI.Clients.ApiResponse

List Activity Laps

Returns the laps of an activity identified by an identifier. Requires activity:read for Everyone and Followers activities. Requires activity:read_all for Only Me activities.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **ActivitiesApi** | API context | 
**id** | **Int64**| The identifier of the activity. | [default to nothing]

### Return type

[**Vector{Lap}**](Lap.md)

### Authorization

[strava_oauth](./README.md#strava_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](./README.md#api-endpoints) [[Back to Model list]](./README.md#models) [[Back to README]](./README.md)

# **get_logged_in_athlete_activities**
> get_logged_in_athlete_activities(_api::ActivitiesApi; before=nothing, after=nothing, page=nothing, per_page=nothing, _mediaType=nothing) -> Vector{SummaryActivity}, OpenAPI.Clients.ApiResponse <br/>
> get_logged_in_athlete_activities(_api::ActivitiesApi, response_stream::Channel; before=nothing, after=nothing, page=nothing, per_page=nothing, _mediaType=nothing) -> Channel{ Vector{SummaryActivity} }, OpenAPI.Clients.ApiResponse

List Athlete Activities

Returns the activities of an athlete for a specific identifier. Requires activity:read. Only Me activities will be filtered out unless requested by a token with activity:read_all.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **ActivitiesApi** | API context | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **before** | **Int64**| An epoch timestamp to use for filtering activities that have taken place before a certain time. | [default to nothing]
 **after** | **Int64**| An epoch timestamp to use for filtering activities that have taken place after a certain time. | [default to nothing]
 **page** | **Int64**| Page number. Defaults to 1. | [default to nothing]
 **per_page** | **Int64**| Number of items per page. Defaults to 30. | [default to 30]

### Return type

[**Vector{SummaryActivity}**](SummaryActivity.md)

### Authorization

[strava_oauth](./README.md#strava_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](./README.md#api-endpoints) [[Back to Model list]](./README.md#models) [[Back to README]](./README.md)

# **get_zones_by_activity_id**
> get_zones_by_activity_id(_api::ActivitiesApi, id::Int64; _mediaType=nothing) -> Vector{ActivityZone}, OpenAPI.Clients.ApiResponse <br/>
> get_zones_by_activity_id(_api::ActivitiesApi, response_stream::Channel, id::Int64; _mediaType=nothing) -> Channel{ Vector{ActivityZone} }, OpenAPI.Clients.ApiResponse

Get Activity Zones

Summit Feature. Returns the zones of a given activity. Requires activity:read for Everyone and Followers activities. Requires activity:read_all for Only Me activities.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **ActivitiesApi** | API context | 
**id** | **Int64**| The identifier of the activity. | [default to nothing]

### Return type

[**Vector{ActivityZone}**](ActivityZone.md)

### Authorization

[strava_oauth](./README.md#strava_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](./README.md#api-endpoints) [[Back to Model list]](./README.md#models) [[Back to README]](./README.md)

# **update_activity_by_id**
> update_activity_by_id(_api::ActivitiesApi, id::Int64; body=nothing, _mediaType=nothing) -> DetailedActivity, OpenAPI.Clients.ApiResponse <br/>
> update_activity_by_id(_api::ActivitiesApi, response_stream::Channel, id::Int64; body=nothing, _mediaType=nothing) -> Channel{ DetailedActivity }, OpenAPI.Clients.ApiResponse

Update Activity

Updates the given activity that is owned by the authenticated athlete. Requires activity:write. Also requires activity:read_all in order to update Only Me activities

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **ActivitiesApi** | API context | 
**id** | **Int64**| The identifier of the activity. | [default to nothing]

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**UpdatableActivity**](UpdatableActivity.md)|  | 

### Return type

[**DetailedActivity**](DetailedActivity.md)

### Authorization

[strava_oauth](./README.md#strava_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](./README.md#api-endpoints) [[Back to Model list]](./README.md#models) [[Back to README]](./README.md)

