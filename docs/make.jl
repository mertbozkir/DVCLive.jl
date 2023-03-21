using DVCLive
using Documenter

DocMeta.setdocmeta!(DVCLive, :DocTestSetup, :(using DVCLive); recursive=true)

makedocs(;
    modules=[DVCLive],
    authors="Mert <mert.bozkirr@gmail.com> and contributors",
    repo="https://github.com/mertbozkir/DVCLive.jl/blob/{commit}{path}#{line}",
    sitename="DVCLive.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://mertbozkir.github.io/DVCLive.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/mertbozkir/DVCLive.jl",
    devbranch="main",
)
