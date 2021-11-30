using BAT
using EFTfitter
using IntervalSets
using Plots
using StatsBase
import UltraNest
using JLD2
using FileIO
#---------------------------------------------------------------------------

path = "/home/cornelius/Projects/SMEFTfits/"
cd(path)

scale = 172.5  # Wilson coefficients at top-quark scale

# choose degrees of freedom (default: SMEFT)
SMEFT   = true
zbb     = false
top_dof = false
useWET  = false
B_dof   = false
B_dof2  = false


## prior distributions ##
parameters = BAT.NamedTupleDist(
    CuB  = 0,
    CuG  = 0,
    CuW  = 0,
    Cφq1 = 0,
    Cφq3 = 0,
    Cφu  = 0,
    Clu  = 0,
    Ceu  = 0,
    Cqe  = -0.01..0.01,
    Clq1 = -0.01..0.01,
    Clq3 = 0,
)
nparams = BAT.vardof(parameters)

## choose scenario ###
scenario = "currentDY" # "current", "currentDY", "near", "onlynear", "far", "farDY", "farSM", "CLIC"

include(path*"inputs/run_match.jl")
include(path*"inputs/measurements.jl")

m = EFTfitterModel(parameters, measurements, correlations)
posterior = PosteriorDensity(m)

## Sobol sampler - for up to 5 parameters ##
algorithm = SobolSampler(nsamples=1e5)


## Nested sampling - for more than 5 parameters ##

# using the UltraNest sampler (rather slow) #
#algorithm = ReactiveNestedSampling()#min_num_live_points=1200, min_ess=10000)
#samples = bat_sample(posterior, algorithm).uwresult

# using the NestedSamplers.jl sampler #
using NestedSamplers
#algorithm = BAT.EllipsoidalNestedSampling(max_ncalls=1e4, num_live_points=1e2)

## sampling ##
@time samples = bat_sample(posterior, algorithm).result
#save("samples/samples_$(nparams)_$meas.jld2", "samples", samples)

plot(samples, vsel=collect(1:5))
