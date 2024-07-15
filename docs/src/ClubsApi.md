# ClubsApi

All URIs are relative to *https://www.strava.com/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_club_activities_by_id**](ClubsApi.md#get_club_activities_by_id) | **GET** /clubs/{id}/activities | List Club Activities
[**get_club_admins_by_id**](ClubsApi.md#get_club_admins_by_id) | **GET** /clubs/{id}/admins | List Club Administrators
[**get_club_by_id**](ClubsApi.md#get_club_by_id) | **GET** /clubs/{id} | Get Club
[**get_club_members_by_id**](ClubsApi.md#get_club_members_by_id) | **GET** /clubs/{id}/members | List Club Members
[**get_logged_in_athlete_clubs**](ClubsApi.md#get_logged_in_athlete_clubs) | **GET** /athlete/clubs | List Athlete Clubs


# **get_club_activities_by_id**
> get_club_activities_by_id(_api::ClubsApi, id::Int64; page=nothing, per_page=nothing, _mediaType=nothing) -> Vector{ClubActivity}, OpenAPI.Clients.ApiResponse <br/>
> get_club_activities_by_id(_api::ClubsApi, response_stream::Channel, id::Int64; page=nothing, per_page=nothing, _mediaType=nothing) -> Channel{ Vector{ClubActivity} }, OpenAPI.Clients.ApiResponse

List Club Activities

Retrieve recent activities from members of a specific club. The authenticated athlete must belong to the requested club in order to hit this endpoint. Pagination is supported. Athlete profile visibility is respected for all activities.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **ClubsApi** | API context | 
**id** | **Int64**| The identifier of the club. | [default to nothing]

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Int64**| Page number. Defaults to 1. | [default to nothing]
 **per_page** | **Int64**| Number of items per page. Defaults to 30. | [default to 30]

### Return type

[**Vector{ClubActivity}**](ClubActivity.md)

### Authorization

[strava_oauth](./README.md#strava_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](./README.md#api-endpoints) [[Back to Model list]](./README.md#models) [[Back to README]](./README.md)

# **get_club_admins_by_id**
> get_club_admins_by_id(_api::ClubsApi, id::Int64; page=nothing, per_page=nothing, _mediaType=nothing) -> Vector{SummaryAthlete}, OpenAPI.Clients.ApiResponse <br/>
> get_club_admins_by_id(_api::ClubsApi, response_stream::Channel, id::Int64; page=nothing, per_page=nothing, _mediaType=nothing) -> Channel{ Vector{SummaryAthlete} }, OpenAPI.Clients.ApiResponse

List Club Administrators

Returns a list of the administrators of a given club.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **ClubsApi** | API context | 
**id** | **Int64**| The identifier of the club. | [default to nothing]

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

# **get_club_by_id**
> get_club_by_id(_api::ClubsApi, id::Int64; _mediaType=nothing) -> DetailedClub, OpenAPI.Clients.ApiResponse <br/>
> get_club_by_id(_api::ClubsApi, response_stream::Channel, id::Int64; _mediaType=nothing) -> Channel{ DetailedClub }, OpenAPI.Clients.ApiResponse

Get Club

Returns a given club using its identifier.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **ClubsApi** | API context | 
**id** | **Int64**| The identifier of the club. | [default to nothing]

### Return type

[**DetailedClub**](DetailedClub.md)

### Authorization

[strava_oauth](./README.md#strava_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](./README.md#api-endpoints) [[Back to Model list]](./README.md#models) [[Back to README]](./README.md)

# **get_club_members_by_id**
> get_club_members_by_id(_api::ClubsApi, id::Int64; page=nothing, per_page=nothing, _mediaType=nothing) -> Vector{ClubAthlete}, OpenAPI.Clients.ApiResponse <br/>
> get_club_members_by_id(_api::ClubsApi, response_stream::Channel, id::Int64; page=nothing, per_page=nothing, _mediaType=nothing) -> Channel{ Vector{ClubAthlete} }, OpenAPI.Clients.ApiResponse

List Club Members

Returns a list of the athletes who are members of a given club.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **ClubsApi** | API context | 
**id** | **Int64**| The identifier of the club. | [default to nothing]

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Int64**| Page number. Defaults to 1. | [default to nothing]
 **per_page** | **Int64**| Number of items per page. Defaults to 30. | [default to 30]

### Return type

[**Vector{ClubAthlete}**](ClubAthlete.md)

### Authorization

[strava_oauth](./README.md#strava_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](./README.md#api-endpoints) [[Back to Model list]](./README.md#models) [[Back to README]](./README.md)

# **get_logged_in_athlete_clubs**
> get_logged_in_athlete_clubs(_api::ClubsApi; page=nothing, per_page=nothing, _mediaType=nothing) -> Vector{SummaryClub}, OpenAPI.Clients.ApiResponse <br/>
> get_logged_in_athlete_clubs(_api::ClubsApi, response_stream::Channel; page=nothing, per_page=nothing, _mediaType=nothing) -> Channel{ Vector{SummaryClub} }, OpenAPI.Clients.ApiResponse

List Athlete Clubs

Returns a list of the clubs whose membership includes the authenticated athlete.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **ClubsApi** | API context | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Int64**| Page number. Defaults to 1. | [default to nothing]
 **per_page** | **Int64**| Number of items per page. Defaults to 30. | [default to 30]

### Return type

[**Vector{SummaryClub}**](SummaryClub.md)

### Authorization

[strava_oauth](./README.md#strava_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](./README.md#api-endpoints) [[Back to Model list]](./README.md#models) [[Back to README]](./README.md)

