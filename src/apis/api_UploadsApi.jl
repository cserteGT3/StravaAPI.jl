# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.

struct UploadsApi <: OpenAPI.APIClientImpl
    client::OpenAPI.Clients.Client
end

"""
The default API base path for APIs in `UploadsApi`.
This can be used to construct the `OpenAPI.Clients.Client` instance.
"""
basepath(::Type{ UploadsApi }) = "https://www.strava.com/api/v3"

const _returntypes_create_upload_UploadsApi = Dict{Regex,Type}(
    Regex("^" * replace("201", "x"=>".") * "\$") => Upload,
    Regex("^" * replace("0", "x"=>".") * "\$") => Fault,
)

function _oacinternal_create_upload(_api::UploadsApi; file=nothing, name=nothing, description=nothing, trainer=nothing, commute=nothing, data_type=nothing, external_id=nothing, _mediaType=nothing)
    _ctx = OpenAPI.Clients.Ctx(_api.client, "POST", _returntypes_create_upload_UploadsApi, "/uploads", ["strava_oauth", ])
    OpenAPI.Clients.set_param(_ctx.file, "file", file)  # type Vector{UInt8}
    OpenAPI.Clients.set_param(_ctx.form, "name", name)  # type String
    OpenAPI.Clients.set_param(_ctx.form, "description", description)  # type String
    OpenAPI.Clients.set_param(_ctx.form, "trainer", trainer)  # type String
    OpenAPI.Clients.set_param(_ctx.form, "commute", commute)  # type String
    OpenAPI.Clients.set_param(_ctx.form, "data_type", data_type)  # type String
    OpenAPI.Clients.set_param(_ctx.form, "external_id", external_id)  # type String
    OpenAPI.Clients.set_header_accept(_ctx, ["application/json", ])
    OpenAPI.Clients.set_header_content_type(_ctx, (_mediaType === nothing) ? ["multipart/form-data", ] : [_mediaType])
    return _ctx
end

@doc raw"""Upload Activity

Uploads a new data file to create an activity from. Requires activity:write scope.

Params:
- file::String
- name::String
- description::String
- trainer::String
- commute::String
- data_type::String
- external_id::String

Return: Upload, OpenAPI.Clients.ApiResponse
"""
function create_upload(_api::UploadsApi; file=nothing, name=nothing, description=nothing, trainer=nothing, commute=nothing, data_type=nothing, external_id=nothing, _mediaType=nothing)
    _ctx = _oacinternal_create_upload(_api; file=file, name=name, description=description, trainer=trainer, commute=commute, data_type=data_type, external_id=external_id, _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx)
end

function create_upload(_api::UploadsApi, response_stream::Channel; file=nothing, name=nothing, description=nothing, trainer=nothing, commute=nothing, data_type=nothing, external_id=nothing, _mediaType=nothing)
    _ctx = _oacinternal_create_upload(_api; file=file, name=name, description=description, trainer=trainer, commute=commute, data_type=data_type, external_id=external_id, _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx, response_stream)
end

const _returntypes_get_upload_by_id_UploadsApi = Dict{Regex,Type}(
    Regex("^" * replace("200", "x"=>".") * "\$") => Upload,
    Regex("^" * replace("0", "x"=>".") * "\$") => Fault,
)

function _oacinternal_get_upload_by_id(_api::UploadsApi, upload_id::Int64; _mediaType=nothing)
    _ctx = OpenAPI.Clients.Ctx(_api.client, "GET", _returntypes_get_upload_by_id_UploadsApi, "/uploads/{uploadId}", ["strava_oauth", ])
    OpenAPI.Clients.set_param(_ctx.path, "uploadId", upload_id)  # type Int64
    OpenAPI.Clients.set_header_accept(_ctx, ["application/json", ])
    OpenAPI.Clients.set_header_content_type(_ctx, (_mediaType === nothing) ? [] : [_mediaType])
    return _ctx
end

@doc raw"""Get Upload

Returns an upload for a given identifier. Requires activity:write scope.

Params:
- upload_id::Int64 (required)

Return: Upload, OpenAPI.Clients.ApiResponse
"""
function get_upload_by_id(_api::UploadsApi, upload_id::Int64; _mediaType=nothing)
    _ctx = _oacinternal_get_upload_by_id(_api, upload_id; _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx)
end

function get_upload_by_id(_api::UploadsApi, response_stream::Channel, upload_id::Int64; _mediaType=nothing)
    _ctx = _oacinternal_get_upload_by_id(_api, upload_id; _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx, response_stream)
end

export create_upload
export get_upload_by_id