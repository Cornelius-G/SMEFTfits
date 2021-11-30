# Tested with Julia v1.7.0-rc3

using Pkg
pkg"add BAT#94fef3bfc7434175a2a998781ce37a82cd6a87d4 ArraysOfArrays Distributions ElasticArrays IntervalSets Plots ValueShapes#2e8a90e86569ef037c0f7216fe8b6ddbbb4c21ae StatsBase JLD2 FileIO"
pkg"add EFTfitter#main NestedSamplers"

ENV["PYTHON"]=""
pkg"add PyPlot PyCall UltraNest"

using BAT, EFTfitter, UltraNest, Plots

using UltraNest, Plots
pyplot()
plot(rand(100))
