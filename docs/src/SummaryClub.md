# SummaryClub


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Int64** | The club&#39;s unique identifier. | [optional] [default to nothing]
**resource_state** | **Int64** | Resource state, indicates level of detail. Possible values: 1 -&gt; \&quot;meta\&quot;, 2 -&gt; \&quot;summary\&quot;, 3 -&gt; \&quot;detail\&quot; | [optional] [default to nothing]
**name** | **String** | The club&#39;s name. | [optional] [default to nothing]
**profile_medium** | **String** | URL to a 60x60 pixel profile picture. | [optional] [default to nothing]
**cover_photo** | **String** | URL to a ~1185x580 pixel cover photo. | [optional] [default to nothing]
**cover_photo_small** | **String** | URL to a ~360x176  pixel cover photo. | [optional] [default to nothing]
**sport_type** | **String** | Deprecated. Prefer to use activity_types. | [optional] [default to nothing]
**activity_types** | [**Vector{ActivityType}**](ActivityType.md) | The activity types that count for a club. This takes precedence over sport_type. | [optional] [default to nothing]
**city** | **String** | The club&#39;s city. | [optional] [default to nothing]
**state** | **String** | The club&#39;s state or geographical region. | [optional] [default to nothing]
**country** | **String** | The club&#39;s country. | [optional] [default to nothing]
**private** | **Bool** | Whether the club is private. | [optional] [default to nothing]
**member_count** | **Int64** | The club&#39;s member count. | [optional] [default to nothing]
**featured** | **Bool** | Whether the club is featured or not. | [optional] [default to nothing]
**verified** | **Bool** | Whether the club is verified or not. | [optional] [default to nothing]
**url** | **String** | The club&#39;s vanity URL. | [optional] [default to nothing]


[[Back to Model list]](../README.md#models) [[Back to API list]](../README.md#api-endpoints) [[Back to README]](../README.md)


