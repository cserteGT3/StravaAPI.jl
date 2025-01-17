# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""MetaClub

    MetaClub(;
        id=nothing,
        resource_state=nothing,
        name=nothing,
    )

    - id::Int64 : The club&#39;s unique identifier.
    - resource_state::Int64 : Resource state, indicates level of detail. Possible values: 1 -&gt; \&quot;meta\&quot;, 2 -&gt; \&quot;summary\&quot;, 3 -&gt; \&quot;detail\&quot;
    - name::String : The club&#39;s name.
"""
Base.@kwdef mutable struct MetaClub <: OpenAPI.APIModel
    id::Union{Nothing, Int64} = nothing
    resource_state::Union{Nothing, Int64} = nothing
    name::Union{Nothing, String} = nothing

    function MetaClub(id, resource_state, name, )
        OpenAPI.validate_property(MetaClub, Symbol("id"), id)
        OpenAPI.validate_property(MetaClub, Symbol("resource_state"), resource_state)
        OpenAPI.validate_property(MetaClub, Symbol("name"), name)
        return new(id, resource_state, name, )
    end
end # type MetaClub

const _property_types_MetaClub = Dict{Symbol,String}(Symbol("id")=>"Int64", Symbol("resource_state")=>"Int64", Symbol("name")=>"String", )
OpenAPI.property_type(::Type{ MetaClub }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_MetaClub[name]))}

function check_required(o::MetaClub)
    true
end

function OpenAPI.validate_property(::Type{ MetaClub }, name::Symbol, val)
    if name === Symbol("id")
        OpenAPI.validate_param(name, "MetaClub", :format, val, "int64")
    end
end
