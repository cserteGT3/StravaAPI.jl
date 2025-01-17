# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.

struct ActivitiesApi <: OpenAPI.APIClientImpl
    client::OpenAPI.Clients.Client
end

"""
The default API base path for APIs in `ActivitiesApi`.
This can be used to construct the `OpenAPI.Clients.Client` instance.
"""
basepath(::Type{ ActivitiesApi }) = "https://www.strava.com/api/v3"

const _returntypes_create_activity_ActivitiesApi = Dict{Regex,Type}(
    Regex("^" * replace("201", "x"=>".") * "\$") => DetailedActivity,
    Regex("^" * replace("0", "x"=>".") * "\$") => Fault,
)

function _oacinternal_create_activity(_api::ActivitiesApi, name::String, sport_type::String, start_date_local::ZonedDateTime, elapsed_time::Int64; type=nothing, description=nothing, distance=nothing, trainer=nothing, commute=nothing, _mediaType=nothing)
    _ctx = OpenAPI.Clients.Ctx(_api.client, "POST", _returntypes_create_activity_ActivitiesApi, "/activities", ["strava_oauth", ])
    OpenAPI.Clients.set_param(_ctx.form, "name", name)  # type String
    OpenAPI.Clients.set_param(_ctx.form, "type", type)  # type String
    OpenAPI.Clients.set_param(_ctx.form, "sport_type", sport_type)  # type String
    OpenAPI.Clients.set_param(_ctx.form, "start_date_local", start_date_local)  # type ZonedDateTime
    OpenAPI.Clients.set_param(_ctx.form, "elapsed_time", elapsed_time)  # type Int64
    OpenAPI.Clients.set_param(_ctx.form, "description", description)  # type String
    OpenAPI.Clients.set_param(_ctx.form, "distance", distance)  # type Float32
    OpenAPI.Clients.set_param(_ctx.form, "trainer", trainer)  # type Int64
    OpenAPI.Clients.set_param(_ctx.form, "commute", commute)  # type Int64
    OpenAPI.Clients.set_header_accept(_ctx, ["application/json", ])
    OpenAPI.Clients.set_header_content_type(_ctx, (_mediaType === nothing) ? ["multipart/form-data", ] : [_mediaType])
    return _ctx
end

@doc raw"""Create an Activity

Creates a manual activity for an athlete, requires activity:write scope.

Params:
- name::String (required)
- sport_type::String (required)
- start_date_local::ZonedDateTime (required)
- elapsed_time::Int64 (required)
- type::String
- description::String
- distance::Float32
- trainer::Int64
- commute::Int64

Return: DetailedActivity, OpenAPI.Clients.ApiResponse
"""
function create_activity(_api::ActivitiesApi, name::String, sport_type::String, start_date_local::ZonedDateTime, elapsed_time::Int64; type=nothing, description=nothing, distance=nothing, trainer=nothing, commute=nothing, _mediaType=nothing)
    _ctx = _oacinternal_create_activity(_api, name, sport_type, start_date_local, elapsed_time; type=type, description=description, distance=distance, trainer=trainer, commute=commute, _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx)
end

function create_activity(_api::ActivitiesApi, response_stream::Channel, name::String, sport_type::String, start_date_local::ZonedDateTime, elapsed_time::Int64; type=nothing, description=nothing, distance=nothing, trainer=nothing, commute=nothing, _mediaType=nothing)
    _ctx = _oacinternal_create_activity(_api, name, sport_type, start_date_local, elapsed_time; type=type, description=description, distance=distance, trainer=trainer, commute=commute, _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx, response_stream)
end

const _returntypes_get_activity_by_id_ActivitiesApi = Dict{Regex,Type}(
    Regex("^" * replace("200", "x"=>".") * "\$") => DetailedActivity,
    Regex("^" * replace("0", "x"=>".") * "\$") => Fault,
)

function _oacinternal_get_activity_by_id(_api::ActivitiesApi, id::Int64; include_all_efforts=nothing, _mediaType=nothing)
    _ctx = OpenAPI.Clients.Ctx(_api.client, "GET", _returntypes_get_activity_by_id_ActivitiesApi, "/activities/{id}", ["strava_oauth", ])
    OpenAPI.Clients.set_param(_ctx.path, "id", id)  # type Int64
    OpenAPI.Clients.set_param(_ctx.query, "include_all_efforts", include_all_efforts)  # type Bool
    OpenAPI.Clients.set_header_accept(_ctx, ["application/json", ])
    OpenAPI.Clients.set_header_content_type(_ctx, (_mediaType === nothing) ? [] : [_mediaType])
    return _ctx
end

@doc raw"""Get Activity

Returns the given activity that is owned by the authenticated athlete. Requires activity:read for Everyone and Followers activities. Requires activity:read_all for Only Me activities.

Params:
- id::Int64 (required)
- include_all_efforts::Bool

Return: DetailedActivity, OpenAPI.Clients.ApiResponse
"""
function get_activity_by_id(_api::ActivitiesApi, id::Int64; include_all_efforts=nothing, _mediaType=nothing)
    _ctx = _oacinternal_get_activity_by_id(_api, id; include_all_efforts=include_all_efforts, _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx)
end

function get_activity_by_id(_api::ActivitiesApi, response_stream::Channel, id::Int64; include_all_efforts=nothing, _mediaType=nothing)
    _ctx = _oacinternal_get_activity_by_id(_api, id; include_all_efforts=include_all_efforts, _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx, response_stream)
end

const _returntypes_get_comments_by_activity_id_ActivitiesApi = Dict{Regex,Type}(
    Regex("^" * replace("200", "x"=>".") * "\$") => Vector{Comment},
    Regex("^" * replace("0", "x"=>".") * "\$") => Fault,
)

function _oacinternal_get_comments_by_activity_id(_api::ActivitiesApi, id::Int64; page=nothing, per_page=nothing, page_size=nothing, after_cursor=nothing, _mediaType=nothing)
    _ctx = OpenAPI.Clients.Ctx(_api.client, "GET", _returntypes_get_comments_by_activity_id_ActivitiesApi, "/activities/{id}/comments", ["strava_oauth", ])
    OpenAPI.Clients.set_param(_ctx.path, "id", id)  # type Int64
    OpenAPI.Clients.set_param(_ctx.query, "page", page)  # type Int64
    OpenAPI.Clients.set_param(_ctx.query, "per_page", per_page)  # type Int64
    OpenAPI.Clients.set_param(_ctx.query, "page_size", page_size)  # type Int64
    OpenAPI.Clients.set_param(_ctx.query, "after_cursor", after_cursor)  # type String
    OpenAPI.Clients.set_header_accept(_ctx, ["application/json", ])
    OpenAPI.Clients.set_header_content_type(_ctx, (_mediaType === nothing) ? [] : [_mediaType])
    return _ctx
end

@doc raw"""List Activity Comments

Returns the comments on the given activity. Requires activity:read for Everyone and Followers activities. Requires activity:read_all for Only Me activities.

Params:
- id::Int64 (required)
- page::Int64
- per_page::Int64
- page_size::Int64
- after_cursor::String

Return: Vector{Comment}, OpenAPI.Clients.ApiResponse
"""
function get_comments_by_activity_id(_api::ActivitiesApi, id::Int64; page=nothing, per_page=nothing, page_size=nothing, after_cursor=nothing, _mediaType=nothing)
    _ctx = _oacinternal_get_comments_by_activity_id(_api, id; page=page, per_page=per_page, page_size=page_size, after_cursor=after_cursor, _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx)
end

function get_comments_by_activity_id(_api::ActivitiesApi, response_stream::Channel, id::Int64; page=nothing, per_page=nothing, page_size=nothing, after_cursor=nothing, _mediaType=nothing)
    _ctx = _oacinternal_get_comments_by_activity_id(_api, id; page=page, per_page=per_page, page_size=page_size, after_cursor=after_cursor, _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx, response_stream)
end

const _returntypes_get_kudoers_by_activity_id_ActivitiesApi = Dict{Regex,Type}(
    Regex("^" * replace("200", "x"=>".") * "\$") => Vector{SummaryAthlete},
    Regex("^" * replace("0", "x"=>".") * "\$") => Fault,
)

function _oacinternal_get_kudoers_by_activity_id(_api::ActivitiesApi, id::Int64; page=nothing, per_page=nothing, _mediaType=nothing)
    _ctx = OpenAPI.Clients.Ctx(_api.client, "GET", _returntypes_get_kudoers_by_activity_id_ActivitiesApi, "/activities/{id}/kudos", ["strava_oauth", ])
    OpenAPI.Clients.set_param(_ctx.path, "id", id)  # type Int64
    OpenAPI.Clients.set_param(_ctx.query, "page", page)  # type Int64
    OpenAPI.Clients.set_param(_ctx.query, "per_page", per_page)  # type Int64
    OpenAPI.Clients.set_header_accept(_ctx, ["application/json", ])
    OpenAPI.Clients.set_header_content_type(_ctx, (_mediaType === nothing) ? [] : [_mediaType])
    return _ctx
end

@doc raw"""List Activity Kudoers

Returns the athletes who kudoed an activity identified by an identifier. Requires activity:read for Everyone and Followers activities. Requires activity:read_all for Only Me activities.

Params:
- id::Int64 (required)
- page::Int64
- per_page::Int64

Return: Vector{SummaryAthlete}, OpenAPI.Clients.ApiResponse
"""
function get_kudoers_by_activity_id(_api::ActivitiesApi, id::Int64; page=nothing, per_page=nothing, _mediaType=nothing)
    _ctx = _oacinternal_get_kudoers_by_activity_id(_api, id; page=page, per_page=per_page, _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx)
end

function get_kudoers_by_activity_id(_api::ActivitiesApi, response_stream::Channel, id::Int64; page=nothing, per_page=nothing, _mediaType=nothing)
    _ctx = _oacinternal_get_kudoers_by_activity_id(_api, id; page=page, per_page=per_page, _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx, response_stream)
end

const _returntypes_get_laps_by_activity_id_ActivitiesApi = Dict{Regex,Type}(
    Regex("^" * replace("200", "x"=>".") * "\$") => Vector{Lap},
    Regex("^" * replace("0", "x"=>".") * "\$") => Fault,
)

function _oacinternal_get_laps_by_activity_id(_api::ActivitiesApi, id::Int64; _mediaType=nothing)
    _ctx = OpenAPI.Clients.Ctx(_api.client, "GET", _returntypes_get_laps_by_activity_id_ActivitiesApi, "/activities/{id}/laps", ["strava_oauth", ])
    OpenAPI.Clients.set_param(_ctx.path, "id", id)  # type Int64
    OpenAPI.Clients.set_header_accept(_ctx, ["application/json", ])
    OpenAPI.Clients.set_header_content_type(_ctx, (_mediaType === nothing) ? [] : [_mediaType])
    return _ctx
end

@doc raw"""List Activity Laps

Returns the laps of an activity identified by an identifier. Requires activity:read for Everyone and Followers activities. Requires activity:read_all for Only Me activities.

Params:
- id::Int64 (required)

Return: Vector{Lap}, OpenAPI.Clients.ApiResponse
"""
function get_laps_by_activity_id(_api::ActivitiesApi, id::Int64; _mediaType=nothing)
    _ctx = _oacinternal_get_laps_by_activity_id(_api, id; _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx)
end

function get_laps_by_activity_id(_api::ActivitiesApi, response_stream::Channel, id::Int64; _mediaType=nothing)
    _ctx = _oacinternal_get_laps_by_activity_id(_api, id; _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx, response_stream)
end

const _returntypes_get_logged_in_athlete_activities_ActivitiesApi = Dict{Regex,Type}(
    Regex("^" * replace("200", "x"=>".") * "\$") => Vector{SummaryActivity},
    Regex("^" * replace("0", "x"=>".") * "\$") => Fault,
)

function _oacinternal_get_logged_in_athlete_activities(_api::ActivitiesApi; before=nothing, after=nothing, page=nothing, per_page=nothing, _mediaType=nothing)
    _ctx = OpenAPI.Clients.Ctx(_api.client, "GET", _returntypes_get_logged_in_athlete_activities_ActivitiesApi, "/athlete/activities", ["strava_oauth", ])
    OpenAPI.Clients.set_param(_ctx.query, "before", before)  # type Int64
    OpenAPI.Clients.set_param(_ctx.query, "after", after)  # type Int64
    OpenAPI.Clients.set_param(_ctx.query, "page", page)  # type Int64
    OpenAPI.Clients.set_param(_ctx.query, "per_page", per_page)  # type Int64
    OpenAPI.Clients.set_header_accept(_ctx, ["application/json", ])
    OpenAPI.Clients.set_header_content_type(_ctx, (_mediaType === nothing) ? [] : [_mediaType])
    return _ctx
end

@doc raw"""List Athlete Activities

Returns the activities of an athlete for a specific identifier. Requires activity:read. Only Me activities will be filtered out unless requested by a token with activity:read_all.

Params:
- before::Int64
- after::Int64
- page::Int64
- per_page::Int64

Return: Vector{SummaryActivity}, OpenAPI.Clients.ApiResponse
"""
function get_logged_in_athlete_activities(_api::ActivitiesApi; before=nothing, after=nothing, page=nothing, per_page=nothing, _mediaType=nothing)
    _ctx = _oacinternal_get_logged_in_athlete_activities(_api; before=before, after=after, page=page, per_page=per_page, _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx)
end

function get_logged_in_athlete_activities(_api::ActivitiesApi, response_stream::Channel; before=nothing, after=nothing, page=nothing, per_page=nothing, _mediaType=nothing)
    _ctx = _oacinternal_get_logged_in_athlete_activities(_api; before=before, after=after, page=page, per_page=per_page, _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx, response_stream)
end

const _returntypes_get_zones_by_activity_id_ActivitiesApi = Dict{Regex,Type}(
    Regex("^" * replace("200", "x"=>".") * "\$") => Vector{ActivityZone},
    Regex("^" * replace("0", "x"=>".") * "\$") => Fault,
)

function _oacinternal_get_zones_by_activity_id(_api::ActivitiesApi, id::Int64; _mediaType=nothing)
    _ctx = OpenAPI.Clients.Ctx(_api.client, "GET", _returntypes_get_zones_by_activity_id_ActivitiesApi, "/activities/{id}/zones", ["strava_oauth", ])
    OpenAPI.Clients.set_param(_ctx.path, "id", id)  # type Int64
    OpenAPI.Clients.set_header_accept(_ctx, ["application/json", ])
    OpenAPI.Clients.set_header_content_type(_ctx, (_mediaType === nothing) ? [] : [_mediaType])
    return _ctx
end

@doc raw"""Get Activity Zones

Summit Feature. Returns the zones of a given activity. Requires activity:read for Everyone and Followers activities. Requires activity:read_all for Only Me activities.

Params:
- id::Int64 (required)

Return: Vector{ActivityZone}, OpenAPI.Clients.ApiResponse
"""
function get_zones_by_activity_id(_api::ActivitiesApi, id::Int64; _mediaType=nothing)
    _ctx = _oacinternal_get_zones_by_activity_id(_api, id; _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx)
end

function get_zones_by_activity_id(_api::ActivitiesApi, response_stream::Channel, id::Int64; _mediaType=nothing)
    _ctx = _oacinternal_get_zones_by_activity_id(_api, id; _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx, response_stream)
end

const _returntypes_update_activity_by_id_ActivitiesApi = Dict{Regex,Type}(
    Regex("^" * replace("200", "x"=>".") * "\$") => DetailedActivity,
    Regex("^" * replace("0", "x"=>".") * "\$") => Fault,
)

function _oacinternal_update_activity_by_id(_api::ActivitiesApi, id::Int64; body=nothing, _mediaType=nothing)
    _ctx = OpenAPI.Clients.Ctx(_api.client, "PUT", _returntypes_update_activity_by_id_ActivitiesApi, "/activities/{id}", ["strava_oauth", ], body)
    OpenAPI.Clients.set_param(_ctx.path, "id", id)  # type Int64
    OpenAPI.Clients.set_header_accept(_ctx, ["application/json", ])
    OpenAPI.Clients.set_header_content_type(_ctx, (_mediaType === nothing) ? [] : [_mediaType])
    return _ctx
end

@doc raw"""Update Activity

Updates the given activity that is owned by the authenticated athlete. Requires activity:write. Also requires activity:read_all in order to update Only Me activities

Params:
- id::Int64 (required)
- body::UpdatableActivity

Return: DetailedActivity, OpenAPI.Clients.ApiResponse
"""
function update_activity_by_id(_api::ActivitiesApi, id::Int64; body=nothing, _mediaType=nothing)
    _ctx = _oacinternal_update_activity_by_id(_api, id; body=body, _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx)
end

function update_activity_by_id(_api::ActivitiesApi, response_stream::Channel, id::Int64; body=nothing, _mediaType=nothing)
    _ctx = _oacinternal_update_activity_by_id(_api, id; body=body, _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx, response_stream)
end

export create_activity
export get_activity_by_id
export get_comments_by_activity_id
export get_kudoers_by_activity_id
export get_laps_by_activity_id
export get_logged_in_athlete_activities
export get_zones_by_activity_id
export update_activity_by_id
