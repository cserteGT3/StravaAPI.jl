# ExplorerSegment


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Int64** | The unique identifier of this segment | [optional] [default to nothing]
**name** | **String** | The name of this segment | [optional] [default to nothing]
**climb_category** | **Int64** | The category of the climb [0, 5]. Higher is harder ie. 5 is Hors catégorie, 0 is uncategorized in climb_category. If climb_category &#x3D; 5, climb_category_desc &#x3D; HC. If climb_category &#x3D; 2, climb_category_desc &#x3D; 3. | [optional] [default to nothing]
**climb_category_desc** | **String** | The description for the category of the climb | [optional] [default to nothing]
**avg_grade** | **Float32** | The segment&#39;s average grade, in percents | [optional] [default to nothing]
**start_latlng** | **Vector{Float32}** | A pair of latitude/longitude coordinates, represented as an array of 2 floating point numbers. | [optional] [default to nothing]
**end_latlng** | **Vector{Float32}** | A pair of latitude/longitude coordinates, represented as an array of 2 floating point numbers. | [optional] [default to nothing]
**elev_difference** | **Float32** | The segments&#39;s evelation difference, in meters | [optional] [default to nothing]
**distance** | **Float32** | The segment&#39;s distance, in meters | [optional] [default to nothing]
**points** | **String** | The polyline of the segment | [optional] [default to nothing]


[[Back to Model list]](./README.md#models) [[Back to API list]](./README.md#api-endpoints) [[Back to README]](./README.md)


