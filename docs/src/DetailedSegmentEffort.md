# DetailedSegmentEffort


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Int64** | The unique identifier of this effort | [optional] [default to nothing]
**activity_id** | **Int64** | The unique identifier of the activity related to this effort | [optional] [default to nothing]
**elapsed_time** | **Int64** | The effort&#39;s elapsed time | [optional] [default to nothing]
**start_date** | **ZonedDateTime** | The time at which the effort was started. | [optional] [default to nothing]
**start_date_local** | **ZonedDateTime** | The time at which the effort was started in the local timezone. | [optional] [default to nothing]
**distance** | **Float32** | The effort&#39;s distance in meters | [optional] [default to nothing]
**is_kom** | **Bool** | Whether this effort is the current best on the leaderboard | [optional] [default to nothing]
**name** | **String** | The name of the segment on which this effort was performed | [optional] [default to nothing]
**activity** | [***MetaActivity**](MetaActivity.md) |  | [optional] [default to nothing]
**athlete** | [***MetaAthlete**](MetaAthlete.md) |  | [optional] [default to nothing]
**moving_time** | **Int64** | The effort&#39;s moving time | [optional] [default to nothing]
**start_index** | **Int64** | The start index of this effort in its activity&#39;s stream | [optional] [default to nothing]
**end_index** | **Int64** | The end index of this effort in its activity&#39;s stream | [optional] [default to nothing]
**average_cadence** | **Float32** | The effort&#39;s average cadence | [optional] [default to nothing]
**average_watts** | **Float32** | The average wattage of this effort | [optional] [default to nothing]
**device_watts** | **Bool** | For riding efforts, whether the wattage was reported by a dedicated recording device | [optional] [default to nothing]
**average_heartrate** | **Float32** | The heart heart rate of the athlete during this effort | [optional] [default to nothing]
**max_heartrate** | **Float32** | The maximum heart rate of the athlete during this effort | [optional] [default to nothing]
**segment** | [***SummarySegment**](SummarySegment.md) |  | [optional] [default to nothing]
**kom_rank** | **Int64** | The rank of the effort on the global leaderboard if it belongs in the top 10 at the time of upload | [optional] [default to nothing]
**pr_rank** | **Int64** | The rank of the effort on the athlete&#39;s leaderboard if it belongs in the top 3 at the time of upload | [optional] [default to nothing]
**hidden** | **Bool** | Whether this effort should be hidden when viewed within an activity | [optional] [default to nothing]


[[Back to Model list]](../README.md#models) [[Back to API list]](../README.md#api-endpoints) [[Back to README]](../README.md)


