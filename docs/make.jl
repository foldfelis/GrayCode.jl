using GrayCode
using Documenter

DocMeta.setdocmeta!(GrayCode, :DocTestSetup, :(using GrayCode); recursive=true)

makedocs(;
    modules=[GrayCode],
    authors="JingYu Ning <foldfelis@gmail.com> and contributors",
    repo="https://github.com/foldfelis/GrayCode.jl/blob/{commit}{path}#{line}",
    sitename="GrayCode.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://foldfelis.github.io/GrayCode.jl",
        edit_link="master",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/foldfelis/GrayCode.jl",
    devbranch="master",
)
