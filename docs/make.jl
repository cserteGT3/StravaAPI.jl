using StravaAPI
using Documenter

DocMeta.setdocmeta!(StravaAPI, :DocTestSetup, :(using StravaAPI); recursive=true)

docfiles = readdir("src")
filter!(x->x == "index.md", docfiles)
docpairs = [split(fname, ".") => joinpath("src", fname) for fname in docfiles]
pushfirst!(docpairs, "Home" => "index.md")

makedocs(;
    modules=[StravaAPI],
    authors="Tamás Cserteg <csertegt@gmail.com> and contributors",
    sitename="StravaAPI.jl",
    format=Documenter.HTML(;
        canonical="https://cserteGT3.github.io/StravaAPI.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=docpairs,
)

deploydocs(;
    repo="github.com/cserteGT3/StravaAPI.jl",
    devbranch="main",
)
