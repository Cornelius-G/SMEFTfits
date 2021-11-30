using BAT
using EFTfitter
using IntervalSets
using Plots#, Measures
using StatsBase
#using Parameters
using Test
#---------------------------------------------------------------------------

path = "/home/cornelius/Projects/SMEFTfits/"
cd(path)

scale = 172.5  # Wilson coefficients at top-quark scale

# DOFs
SMEFT   = true
zbb     = false
top_dof = false
useWET  = false
B_dof   = false
B_dof2  = false


# far  (near + current + clic)
parameters = BAT.NamedTupleDist(
    CuB  = -0.02..0.02,
    CuG  = -0.05..0.05,
    CuW  = -0.02..0.02,
    Cφq1 = -0.02..0.02,
    Cφq3 = -0.025..0.02,
    Cφu  = -0.1..0.1,
    Clu  = -0.001..0.001,
    Ceu  = -0.001..0.001,
    Cqe  = -0.001..0.001,
    Clq1 = -0.001..0.001,
    Clq3 = -0.001..0.001,
)



nparams = BAT.vardof(parameters)

for meas in ["farSM", "far"]#["nonu", "topnu", "nu"]

    if meas == "far"
        global use_B      = true
        global use_LHCb   = true
        global use_LHCb1  = false
        global use_LHCb2  = true
        global use_top    = true
        global use_Zbb    = true
        
        global use_HL       = true
        global use_Belle2   = true
        global use_Belle21  = true
        global use_Belle2nu = true
        
        global use_Belle3 = false # SM
        global use_Belle4 = false # 1 bin

        global use_CLIC   = true

   elseif meas == "near"
       global use_B      = true
       global use_LHCb   = true
       global use_LHCb1  = false
       global use_LHCb2  = true
       global use_top    = true
       global use_Zbb    = true
       
       global use_HL       = true
       global use_Belle2   = true
       global use_Belle21  = true
       global use_Belle2nu = true
       
       global use_Belle3 = false # SM
       global use_Belle4 = false # 1 bin

       global use_CLIC   = false
       
   elseif meas == "farSM"
       global use_B      = true
       global use_LHCb   = true
       global use_LHCb1  = false
       global use_LHCb2  = true
       global use_top    = true
       global use_Zbb    = true
       
       global use_HL       = true
       global use_Belle2   = true
       global use_Belle21  = false
       global use_Belle2nu = true
       
       global use_Belle3 = true # SM
       global use_Belle4 = false # 1 bin

       global use_CLIC   = true
       
   elseif meas == "clic"
       global use_B      = false
       global use_LHCb   = false
       global use_LHCb1  = false
       global use_LHCb2  = false
       global use_top    = false
       global use_Zbb    = false
       
       global use_HL       = false
       global use_Belle2   = false
       global use_Belle21  = false
       global use_Belle2nu = false
       
       global use_Belle3 = false # SM
       global use_Belle4 = false # 1 bin

       global use_CLIC   = true
       
       
   elseif meas == "current"
       global use_B      = true
       global use_LHCb   = true
       global use_LHCb1  = false
       global use_LHCb2  = true
       global use_top    = true
       global use_Zbb    = true
       
       global use_HL       = false
       global use_Belle2   = false
       global use_Belle21  = false
       global use_Belle2nu = false
       
       global use_Belle3 = false # SM
       global use_Belle4 = false # 1 bin

       global use_CLIC   = false
       
   elseif meas == "onlynear"
       global use_B      = false
       global use_LHCb   = false
       global use_LHCb1  = false
       global use_LHCb2  = false
       global use_top    = false
       global use_Zbb    = false
       
       global use_HL       = true
       global use_Belle2   = true
       global use_Belle21  = true
       global use_Belle2nu = true
       
       global use_Belle3 = false # SM
       global use_Belle4 = false # 1 bin

       global use_CLIC   = false
       
   elseif meas == "nonu"
       global use_B      = true
       global use_LHCb   = true
       global use_LHCb1  = false
       global use_LHCb2  = true
       global use_top    = true
       global use_Zbb    = true
       
       global use_HL       = true
       global use_Belle2   = true
       global use_Belle21  = true
       global use_Belle2nu = false
       
       global use_Belle3 = false # SM
       global use_Belle4 = false # 1 bin

       global use_CLIC   = false
       
   elseif meas == "topnu"
       global use_B      = false
       global use_LHCb   = false
       global use_LHCb1  = false
       global use_LHCb2  = false
       global use_top    = true
       global use_Zbb    = false
       
       global use_HL       = true
       global use_Belle2   = false
       global use_Belle21  = false
       global use_Belle2nu = true
       
       global use_Belle3 = false # SM
       global use_Belle4 = false # 1 bin

       global use_CLIC   = false
       
   elseif meas == "nu"
       global use_B      = false
       global use_LHCb   = false
       global use_LHCb1  = false
       global use_LHCb2  = false
       global use_top    = false
       global use_Zbb    = false
       
       global use_HL       = false
       global use_Belle2   = false
       global use_Belle21  = false
       global use_Belle2nu = true
       
       global use_Belle3 = false # SM
       global use_Belle4 = false # 1 bin

       global use_CLIC   = false
   end

   include(path*"inputs/run_match.jl")
   include(path*"inputs/measurements_future.jl")

   
   m = EFTfitterModel(parameters, measurements, correlations)
   posterior = PosteriorDensity(m)
   
    if meas == "farSM" 
        @test BAT.eval_logval(posterior, fill(0, 11)) ≈ 7.718403710363276
        @test BAT.eval_logval(posterior, fill(0.0001, 11)) ≈ -14.066035330940885
    end
    
    if meas == "far" 
        @test BAT.eval_logval(posterior, fill(0, 11)) ≈ -173.8855531731549
        @test BAT.eval_logval(posterior, fill(0.0001, 11)) ≈ -205.86552124779365
    end

end
