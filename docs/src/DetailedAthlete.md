# DetailedAthlete


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Int64** | The unique identifier of the athlete | [optional] [default to nothing]
**resource_state** | **Int64** | Resource state, indicates level of detail. Possible values: 1 -&gt; \&quot;meta\&quot;, 2 -&gt; \&quot;summary\&quot;, 3 -&gt; \&quot;detail\&quot; | [optional] [default to nothing]
**firstname** | **String** | The athlete&#39;s first name. | [optional] [default to nothing]
**lastname** | **String** | The athlete&#39;s last name. | [optional] [default to nothing]
**profile_medium** | **String** | URL to a 62x62 pixel profile picture. | [optional] [default to nothing]
**profile** | **String** | URL to a 124x124 pixel profile picture. | [optional] [default to nothing]
**city** | **String** | The athlete&#39;s city. | [optional] [default to nothing]
**state** | **String** | The athlete&#39;s state or geographical region. | [optional] [default to nothing]
**country** | **String** | The athlete&#39;s country. | [optional] [default to nothing]
**sex** | **String** | The athlete&#39;s sex. | [optional] [default to nothing]
**premium** | **Bool** | Deprecated.  Use summit field instead. Whether the athlete has any Summit subscription. | [optional] [default to nothing]
**summit** | **Bool** | Whether the athlete has any Summit subscription. | [optional] [default to nothing]
**created_at** | **ZonedDateTime** | The time at which the athlete was created. | [optional] [default to nothing]
**updated_at** | **ZonedDateTime** | The time at which the athlete was last updated. | [optional] [default to nothing]
**follower_count** | **Int64** | The athlete&#39;s follower count. | [optional] [default to nothing]
**friend_count** | **Int64** | The athlete&#39;s friend count. | [optional] [default to nothing]
**measurement_preference** | **String** | The athlete&#39;s preferred unit system. | [optional] [default to nothing]
**ftp** | **Int64** | The athlete&#39;s FTP (Functional Threshold Power). | [optional] [default to nothing]
**weight** | **Float32** | The athlete&#39;s weight. | [optional] [default to nothing]
**clubs** | [**Vector{SummaryClub}**](SummaryClub.md) | The athlete&#39;s clubs. | [optional] [default to nothing]
**bikes** | [**Vector{SummaryGear}**](SummaryGear.md) | The athlete&#39;s bikes. | [optional] [default to nothing]
**shoes** | [**Vector{SummaryGear}**](SummaryGear.md) | The athlete&#39;s shoes. | [optional] [default to nothing]


[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#api-endpoints) [[Back to README]](../../README.md)


