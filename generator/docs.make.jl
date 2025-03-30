using StravaAPI
using Documenter

DocMeta.setdocmeta!(StravaAPI, :DocTestSetup, :(using StravaAPI); recursive=true)

docfiles = readdir(joinpath(@__DIR__, "src"))
filter!(x->x!="index.md", docfiles)
filter!(x->x!="README.md", docfiles)
docpairs = [string(first(split(fname, "."))) => fname for fname in docfiles]

makedocs(;
    modules=[StravaAPI],
    authors="Tamás Cserteg <csertegt@gmail.com> and contributors",
    sitename="StravaAPI.jl",
    format=Documenter.HTML(;
        canonical="https://cserteGT3.github.io/StravaAPI.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=["Home" => "index.md",
            "Readme" => "README.md",
            "API" => docpairs,
            "Julia docstrings" => "docstrings.md"]
)

deploydocs(;
    repo="github.com/cserteGT3/StravaAPI.jl",
    devbranch="main",
)
