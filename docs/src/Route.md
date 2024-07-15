# Route


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**athlete** | [***SummaryAthlete**](SummaryAthlete.md) |  | [optional] [default to nothing]
**description** | **String** | The description of the route | [optional] [default to nothing]
**distance** | **Float32** | The route&#39;s distance, in meters | [optional] [default to nothing]
**elevation_gain** | **Float32** | The route&#39;s elevation gain. | [optional] [default to nothing]
**id** | **Int64** | The unique identifier of this route | [optional] [default to nothing]
**id_str** | **String** | The unique identifier of the route in string format | [optional] [default to nothing]
**map** | [***PolylineMap**](PolylineMap.md) |  | [optional] [default to nothing]
**name** | **String** | The name of this route | [optional] [default to nothing]
**private** | **Bool** | Whether this route is private | [optional] [default to nothing]
**starred** | **Bool** | Whether this route is starred by the logged-in athlete | [optional] [default to nothing]
**timestamp** | **Int64** | An epoch timestamp of when the route was created | [optional] [default to nothing]
**type** | **Int64** | This route&#39;s type (1 for ride, 2 for runs) | [optional] [default to nothing]
**sub_type** | **Int64** | This route&#39;s sub-type (1 for road, 2 for mountain bike, 3 for cross, 4 for trail, 5 for mixed) | [optional] [default to nothing]
**created_at** | **ZonedDateTime** | The time at which the route was created | [optional] [default to nothing]
**updated_at** | **ZonedDateTime** | The time at which the route was last updated | [optional] [default to nothing]
**estimated_moving_time** | **Int64** | Estimated time in seconds for the authenticated athlete to complete route | [optional] [default to nothing]
**segments** | [**Vector{SummarySegment}**](SummarySegment.md) | The segments traversed by this route | [optional] [default to nothing]
**waypoints** | [**Vector{Waypoint}**](Waypoint.md) | The custom waypoints along this route | [optional] [default to nothing]


[[Back to Model list]](../README.md#models) [[Back to API list]](../README.md#api-endpoints) [[Back to README]](../README.md)


