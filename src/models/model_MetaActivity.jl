# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""MetaActivity

    MetaActivity(;
        id=nothing,
    )

    - id::Int64 : The unique identifier of the activity
"""
Base.@kwdef mutable struct MetaActivity <: OpenAPI.APIModel
    id::Union{Nothing, Int64} = nothing

    function MetaActivity(id, )
        OpenAPI.validate_property(MetaActivity, Symbol("id"), id)
        return new(id, )
    end
end # type MetaActivity

const _property_types_MetaActivity = Dict{Symbol,String}(Symbol("id")=>"Int64", )
OpenAPI.property_type(::Type{ MetaActivity }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_MetaActivity[name]))}

function check_required(o::MetaActivity)
    true
end

function OpenAPI.validate_property(::Type{ MetaActivity }, name::Symbol, val)
    if name === Symbol("id")
        OpenAPI.validate_param(name, "MetaActivity", :format, val, "int64")
    end
end
