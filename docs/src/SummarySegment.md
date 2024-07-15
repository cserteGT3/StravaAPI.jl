# SummarySegment


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Int64** | The unique identifier of this segment | [optional] [default to nothing]
**name** | **String** | The name of this segment | [optional] [default to nothing]
**activity_type** | **String** |  | [optional] [default to nothing]
**distance** | **Float32** | The segment&#39;s distance, in meters | [optional] [default to nothing]
**average_grade** | **Float32** | The segment&#39;s average grade, in percents | [optional] [default to nothing]
**maximum_grade** | **Float32** | The segments&#39;s maximum grade, in percents | [optional] [default to nothing]
**elevation_high** | **Float32** | The segments&#39;s highest elevation, in meters | [optional] [default to nothing]
**elevation_low** | **Float32** | The segments&#39;s lowest elevation, in meters | [optional] [default to nothing]
**start_latlng** | **Vector{Float32}** | A pair of latitude/longitude coordinates, represented as an array of 2 floating point numbers. | [optional] [default to nothing]
**end_latlng** | **Vector{Float32}** | A pair of latitude/longitude coordinates, represented as an array of 2 floating point numbers. | [optional] [default to nothing]
**climb_category** | **Int64** | The category of the climb [0, 5]. Higher is harder ie. 5 is Hors catégorie, 0 is uncategorized in climb_category. | [optional] [default to nothing]
**city** | **String** | The segments&#39;s city. | [optional] [default to nothing]
**state** | **String** | The segments&#39;s state or geographical region. | [optional] [default to nothing]
**country** | **String** | The segment&#39;s country. | [optional] [default to nothing]
**private** | **Bool** | Whether this segment is private. | [optional] [default to nothing]
**athlete_pr_effort** | [***SummaryPRSegmentEffort**](SummaryPRSegmentEffort.md) |  | [optional] [default to nothing]
**athlete_segment_stats** | [***SummarySegmentEffort**](SummarySegmentEffort.md) |  | [optional] [default to nothing]


[[Back to Model list]](./README.md#models) [[Back to API list]](./README.md#api-endpoints) [[Back to README]](./README.md)


