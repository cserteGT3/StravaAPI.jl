using StravaAPI
using Documenter

DocMeta.setdocmeta!(StravaAPI, :DocTestSetup, :(using StravaAPI); recursive=true)

makedocs(;
    modules=[StravaAPI],
    authors="Tamás Cserteg <csertegt@gmail.com> and contributors",
    sitename="StravaAPI.jl",
    format=Documenter.HTML(;
        canonical="https://cserteGT3.github.io/StravaAPI.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/cserteGT3/StravaAPI.jl",
    devbranch="main",
)
