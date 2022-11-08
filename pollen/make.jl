using Pkg
Pkg.add(Pkg.PackageSpec(url="https://github.com/lorenzoh/Pollen.jl"))

using Pollen
using KernelFunctions

dir = make
config = Pollen.PollenPlugin()
Pollen.setup_docs_project(dir, config)
Pollen.setup_docs_files(dir, config)
Pollen.setup_docs_actions(dir, config)

servedocs(KernelFunctions)