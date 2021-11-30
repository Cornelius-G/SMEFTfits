#============= Observables ============================================#
include("scenarios.jl")

include("observables/observables_B.jl")
include("observables/observables_top.jl")
include("observables/observables_Belle2.jl")
include("observables/observables_CLIC.jl")
include("observables/observables_ee.jl")
include("observables/observables_mumu.jl")
include("observables/observables_tautau.jl")

#============= Measurements ============================================#

measurements = (
    # B measurements
    HFLAV_BR_Xsgamma   = Measurement(BR_Xsgamma  , 332e-6 , uncertainties = (exp=15e-6   , theo=23e-6),   active = use_B),
    BaBar_BR_Xsee_low  = Measurement(BR_Xsee_low , 1.60e-6, uncertainties = (exp=0.48e-6 , theo=0.17e-6), active = use_B),
    Babar_BR_Xsee_high = Measurement(BR_Xsee_high, 0.57e-6, uncertainties = (exp=0.163e-6, theo=0.03e-6), active = use_B),
    Belle_AFB_Xsee_low = Measurement(AFB_Xsee_low, 0.30   , uncertainties = (exp=0.243   , theo=0.0064),  active = use_B),

    HFLAV_BR_BKgamma   = Measurement(BR_BKgamma  , 41.7e-6 , uncertainties = (exp=1.2e-6   , theo=7.62e-6), active = use_B),
    HFLAV_BR_BpKgamma  = Measurement(BR_BpKgamma , 39.2e-6 , uncertainties = (exp=1.3e-6   , theo=8.00e-6), active = use_B),

    HFLAV_ACP_BKgamma  = Measurement(ACP_BKstargamma  , -0.007 , uncertainties = (exp=0.011   , theo=0.002), active = use_B),
    HFLAV_ACP_BpKgamma  = Measurement(ACP_BpKpstargamma  , 0.012 , uncertainties = (exp=0.023   , theo=0.0013), active = use_B),

    #LHCb 2003.04831
    LHCb_FL_1   = Measurement(FL_BKstarmumu_1  ,  0.700 , uncertainties = (exp=0.0282 , theo=0.0410),  active = use_LHCb1),
    LHCb_P1_1   = Measurement(P1_BKstarmumu_1  ,  -0.079 , uncertainties = (exp=0.196 , theo=0.0293),  active = use_LHCb1),
    LHCb_P2_1   = Measurement(P2_BKstarmumu_1  , -0.162 , uncertainties = (exp=0.051 , theo=0.0871),   active = use_LHCb1),
    LHCb_P3_1   = Measurement(P3_BKstarmumu_1  , 0.085 , uncertainties = (exp=0.090 , theo=0.00877),   active = use_LHCb1),
    LHCb_P4p_1   = Measurement(P4p_BKstarmumu_1  , -0.298 , uncertainties = (exp=0.088 , theo=0.0386), active = use_LHCb1),
    LHCb_P5p_1  = Measurement(P5p_BKstarmumu_1 , -0.114 , uncertainties = (exp=0.073 , theo=0.0899),   active = use_LHCb1),
    LHCb_P6p_1   = Measurement(P6p_BKstarmumu_1  , -0.197 , uncertainties = (exp=0.076 , theo=0.1045), active = use_LHCb1),
    LHCb_P8p_1   = Measurement(P8p_BKstarmumu_1  , -0.020 , uncertainties = (exp=0.089 , theo=0.0307), active = use_LHCb1),

    #= 1.1 - 2.5 =#
    LHCb2_FL_1   = Measurement(FL_BKstarmumu_Belle_1  , 0.655 , uncertainties = (exp=0.049 , theo=0.042),  active =  use_LHCb2),
    LHCb2_P1_1   = Measurement(P1_BKstarmumu_Belle_1  , -0.617 , uncertainties = (exp=0.296 , theo=0.044),  active =  use_LHCb2),
    LHCb2_P2_1   = Measurement(P2_BKstarmumu_Belle_1  , -0.443  , uncertainties = (exp=0.104 , theo=0.014), active =   use_LHCb2),
    LHCb2_P3_1   = Measurement(P3_BKstarmumu_Belle_1  , 0.324  , uncertainties = (exp=0.148 , theo=0.024), active =   use_LHCb2),
    LHCb2_P4p_1  = Measurement(P4p_BKstarmumu_Belle_1 , -0.080 , uncertainties = (exp=0.143 , theo=0.040), active =   use_LHCb2),
    LHCb2_P5p_1  = Measurement(P5p_BKstarmumu_Belle_1 , 0.365 , uncertainties = (exp=0.123 , theo=0.076), active =  use_LHCb2),
    LHCb2_P6p_1  = Measurement(P6p_BKstarmumu_Belle_1 , -0.226 , uncertainties = (exp=0.128 , theo=0.080), active =  use_LHCb2),
    LHCb2_P8p_1  = Measurement(P8p_BKstarmumu_Belle_1 , -0.366 , uncertainties = (exp=0.158 , theo=0.036), active = use_LHCb2),

    #= 2.5 - 4 =#
    LHCb2_FL_2   = Measurement(FL_BKstarmumu_Belle_2  , 0.756 , uncertainties = (exp=0.052 , theo=0.034),  active =  use_LHCb2),
    LHCb2_P1_2   = Measurement(P1_BKstarmumu_Belle_2  , 0.168 , uncertainties = (exp=0.372 , theo=0.030),   active = use_LHCb2),
    LHCb2_P2_2   = Measurement(P2_BKstarmumu_Belle_2  , -0.191  , uncertainties = (exp=0.123 , theo=0.102),   active = use_LHCb2),
    LHCb2_P3_2   = Measurement(P3_BKstarmumu_Belle_2  , 0.049  , uncertainties = (exp=0.195 , theo=0.01),   active = use_LHCb2),
    LHCb2_P4p_2  = Measurement(P4p_BKstarmumu_Belle_2 , -0.435 , uncertainties = (exp=0.172 , theo=0.02),   active = use_LHCb2),
    LHCb2_P5p_2  = Measurement(P5p_BKstarmumu_Belle_2 , -0.150 , uncertainties = (exp=0.147 , theo=0.096),   active = use_LHCb2),
    LHCb2_P6p_2  = Measurement(P6p_BKstarmumu_Belle_2 , -0.155 , uncertainties = (exp=0.151 , theo=0.108),   active = use_LHCb2),
    LHCb2_P8p_2  = Measurement(P8p_BKstarmumu_Belle_2 , 0.037 , uncertainties = (exp=0.169 , theo=0.036),   active = use_LHCb2),

    #= 4 - 6 =#
    LHCb2_FL_3   = Measurement(FL_BKstarmumu_Belle  , 0.684 , uncertainties = (exp=0.038 , theo=0.050),  active =  use_LHCb2),
    LHCb2_P1_3   = Measurement(P1_BKstarmumu_Belle  , 0.088 , uncertainties = (exp=0.236 , theo=0.042),   active = use_LHCb2),
    LHCb2_P2_3   = Measurement(P2_BKstarmumu_Belle  , 0.105  , uncertainties = (exp=0.068 , theo=0.070),   active = use_LHCb2),
    LHCb2_P3_3   = Measurement(P3_BKstarmumu_Belle  , -0.090  , uncertainties = (exp=0.139 , theo=0.018),   active = use_LHCb2),
    LHCb2_P4p_3  = Measurement(P4p_BKstarmumu_Belle , -0.312 , uncertainties = (exp=0.116 , theo=0.028),   active = use_LHCb2),
    LHCb2_P5p_3  = Measurement(P5p_BKstarmumu_Belle , -0.439 , uncertainties = (exp=0.118 , theo=0.066),   active = use_LHCb2),
    LHCb2_P6p_3  = Measurement(P6p_BKstarmumu_Belle , -0.293 , uncertainties = (exp=0.117 , theo=0.112),   active = use_LHCb2),
    LHCb2_P8p_3  = Measurement(P8p_BKstarmumu_Belle , 0.166 , uncertainties = (exp=0.127 , theo=0.038),   active = use_LHCb2),

    #LHCb 1403.8044
    LHCb_BR_BpKpmumu = Measurement(BR_BpKmumu_1  ,  24.2e-9 , uncertainties = (exp=1.389e-9 , theo=6.59e-9),       active = use_LHCb),
    LHCb_BR_BpKstarpmumu = Measurement(BR_BpKstarmumu_1  ,  36.6e-9 , uncertainties = (exp=8.7e-9 , theo=6.90e-9), active = use_LHCb),
    LHCb_BR_BKmumu_1 = Measurement(BR_BKmumu_1  ,  18.7e-9 , uncertainties = (exp=3.6e-9 , theo=5.01e-9),        active = use_LHCb),

    #LHCb 1506.08777
    LHCb_BR_Bsphimumu_1 = Measurement(BR_Bsphimumu_1  ,  2.58e-8 , uncertainties = (exp=0.389e-8 , theo=6.44e-9), active = false),
    LHCb_FL_Bsphimumu_1 = Measurement(FL_Bsphimumu_1  ,  0.63 ,  uncertainties = (exp=0.09 , theo=0.01999),       active = use_LHCb),
    LHCb_S3_Bsphimumu_1 = Measurement(S3_Bsphimumu_1  ,  -0.02 , uncertainties = (exp=0.13 , theo=0.00432),       active = use_LHCb),
    LHCb_S4_Bsphimumu_1 = Measurement(S4_Bsphimumu_1  ,  -0.19 , uncertainties = (exp=0.14 , theo=0.01632),       active = use_LHCb),
    LHCb_S7_Bsphimumu_1 = Measurement(S7_Bsphimumu_1  ,  -0.03 , uncertainties = (exp=0.14 , theo=0.03593),       active = use_LHCb),

    #LHCb 1503.07138
    LHCb_BR_Lambdabmumu_1 = Measurement(BR_Lambdabmumu_1, 1.18e-7, uncertainties = (exp=0.286e-7 , theo=6.685e-9),   active = use_LHCb),

    LHCb_BR_Bs_mumu = Measurement(BR_Bsmumu, 3.1e-9, uncertainties = (exp=0.6e-9 , theo=0.15e-9),   active = use_LHCb),

    #ATLAS 1805.04000
    ATLAS_P1_1   = Measurement(P1_BKstarmumu_1  , -0.17 , uncertainties = (exp=0.336 , theo=0.0293),   active = false),#use_LHCb),
    ATLAS_P4p_1   = Measurement(P4p_BKstarmumu_1  , 0.05 , uncertainties = (exp=0.261 , theo=0.0386),  active = false),#use_LHCb),
    ATLAS_P5p_1   = Measurement(P5p_BKstarmumu_1  , 0.01 , uncertainties = (exp=0.225 , theo=0.0899),  active = false),#use_LHCb),
    ATLAS_P6p_1   = Measurement(P6p_BKstarmumu_1  , 0.03 , uncertainties = (exp=0.208 , theo=0.1045),  active = false),#use_LHCb),
    ATLAS_P8p_1   = Measurement(P8p_BKstarmumu_1  , 0.23 , uncertainties = (exp=0.344 , theo=0.0307),  active = false),#use_LHCb),

    #HFLAV Delta M_s
    HFLAV_Delta_Ms   = Measurement(DeltaM_s  , 17.757 , uncertainties = (exp= 0.021   , theo=1.24299), active = use_B),

    #SLC LEP
    LEP_Rb   = Measurement(Rb  , 0.21629 , uncertainties = (exp= 0.00066   , theo=0.00002), active = use_Zbb),
    LEP_AFB   = Measurement(AFB_bb  , 0.0996 , uncertainties = (exp= 0.0016   , theo=0.0002), active = use_Zbb),
    LEP_sigma_had   = Measurement(sigma_had  , 41481 , uncertainties = (exp= 33   , theo= 8), active = use_Zbb),

    # Top measurements
    ATLAS_CS_tt       = Measurement(CS_tt,     826.4, uncertainties = (exp=19.83, theo=45.76) , active = use_top),
    CMS_CS_ttZ        = Measurement(CS_ttZ,    0.950, uncertainties = (exp=0.0781, theo=0.11)  , active = use_top),
    ATLAS_F0_helicity = Measurement(F0,        0.709, uncertainties = (exp=0.0192, theo=0.005), active = use_top),
    ATLAS_FL_helicity = Measurement(FL,        0.299, uncertainties = (exp=0.015 , theo=0.005), active = use_top),
    ATLAS_13_1l       = Measurement(tta_13_1l, 521.0, uncertainties = (exp =42   , theo=99.)  , active = use_top),
    ATLAS_13_2l       = Measurement(tta_13_2l,  69.0, uncertainties = (exp =5.0  , theo=9.)   , active = use_top),
    ATLAS_Gamma       = Measurement(width, 1.76   , uncertainties = (exp=0.86 , theo=0.001) , active = use_top),

    # HL-LHC
    HL_CS_tt       = Measurement(CS_tt_14,     932.96, uncertainties = (exp=9.78,   theo=22.88)  , active = use_HL),
    HL_CS_ttZ      = Measurement(CS_ttZ_14,    1.015, uncertainties = (exp=0.0512, theo=0.0568)   , active = use_HL),
    HL_F0_helicity = Measurement(F0,        0.709, uncertainties = (exp=0.01  , theo=0.0024) , active = use_HL),
    HL_FL_helicity = Measurement(FL,        0.299, uncertainties = (exp=0.0068, theo=0.0025) , active = use_HL),
    HL_14_1l       = Measurement(tta_14_1l, 488.4386, uncertainties = (exp=32.237 , theo = 46.4), active = use_HL),
    HL_14_2l       = Measurement(tta_14_2l,  58.13389, uncertainties = (exp=3.9531  , theo =  3.779) , active = use_HL),
    HL_Gamma       = Measurement(width, 1.76   , uncertainties = (exp=0.4 , theo=0.001) , active = use_HL),

    # Belle2 precision for LHCb values
    Belle2_BR_Xsgamma    = Measurement(BR_Xsgamma,     332e-6, uncertainties = (exp=10.75e-6 , theo = 11.4e-6) , active = use_Belle2),
    Belle2_BR_Xsee_low1  = Measurement(BR_Xsee_low1, 0.943e-6, uncertainties = (exp=0.062e-6 , theo=0.0442e-6) , active = use_Belle2),
    Belle2_BR_Xsee_low2  = Measurement(BR_Xsee_low2, 0.764e-6, uncertainties = (exp=0.0489e-6, theo=0.03744e-6), active = use_Belle2),
    Belle2_BR_Xsee_high  = Measurement(BR_Xsee_high, 0.302e-6, uncertainties = (exp=0.0142e-6, theo=0.0172e-6) , active = use_Belle2),
    Belle2_AFB_Xsee_low1 = Measurement(AFB_Xsee_low1, -0.0806, uncertainties = (exp=0.0025   , theo=0.0058)    , active = use_Belle2),
    Belle2_AFB_Xsee_low2 = Measurement(AFB_Xsee_low2,  0.0648, uncertainties = (exp=0.00168  , theo=0.003999)  , active = use_Belle2),
    Belle2_AFB_Xsee_high = Measurement(AFB_Xsee_high,  -0.065, uncertainties = (exp=0.00157  , theo=0.0377)    , active = use_Belle2),

    #= 1.1 - 2.5 =#
    Belle2_FL_1   = Measurement(FL_BKstarmumu_Belle_1  , 0.655 , uncertainties = (exp=0.025 , theo=0.021),  active =  use_Belle21),
    Belle2_P1_1   = Measurement(P1_BKstarmumu_Belle_1  , -0.617 , uncertainties = (exp=0.078 , theo=0.022),  active =  use_Belle21),
    Belle2_P2_1   = Measurement(P2_BKstarmumu_Belle_1  , -0.443  , uncertainties = (exp=0.040 , theo=0.007), active =   use_Belle21),
    Belle2_P3_1   = Measurement(P3_BKstarmumu_Belle_1  , 0.324  , uncertainties = (exp=0.040 , theo=0.012), active =   use_Belle21),
    Belle2_P4p_1  = Measurement(P4p_BKstarmumu_Belle_1 , -0.080 , uncertainties = (exp=0.056 , theo=0.020), active =   use_Belle21),
    Belle2_P5p_1  = Measurement(P5p_BKstarmumu_Belle_1 , 0.365 , uncertainties = (exp=0.054 , theo=0.038), active =  use_Belle21),
    Belle2_P6p_1  = Measurement(P6p_BKstarmumu_Belle_1 , -0.226 , uncertainties = (exp=0.054 , theo=0.040), active =  use_Belle21),
    Belle2_P8p_1  = Measurement(P8p_BKstarmumu_Belle_1 , -0.366 , uncertainties = (exp=0.061 , theo=0.018), active = use_Belle21),

    #= 2.5 - 4 =#
    Belle2_FL_2   = Measurement(FL_BKstarmumu_Belle_2  , 0.756 , uncertainties = (exp=0.022 , theo=0.017),  active =  use_Belle21),
    Belle2_P1_2   = Measurement(P1_BKstarmumu_Belle_2  , 0.168 , uncertainties = (exp=0.071 , theo=0.015),   active = use_Belle21),
    Belle2_P2_2   = Measurement(P2_BKstarmumu_Belle_2  , -0.191  , uncertainties = (exp=0.036 , theo=0.051),   active = use_Belle21),
    Belle2_P3_2   = Measurement(P3_BKstarmumu_Belle_2  , 0.049  , uncertainties = (exp=0.036 , theo=0.005),   active = use_Belle21),
    Belle2_P4p_2  = Measurement(P4p_BKstarmumu_Belle_2 , -0.435 , uncertainties = (exp=0.049 , theo=0.02),   active = use_Belle21),
    Belle2_P5p_2  = Measurement(P5p_BKstarmumu_Belle_2 , -0.150 , uncertainties = (exp=0.049 , theo=0.048),   active = use_Belle21),
    Belle2_P6p_2  = Measurement(P6p_BKstarmumu_Belle_2 , -0.155 , uncertainties = (exp=0.049 , theo=0.054),   active = use_Belle21),
    Belle2_P8p_2  = Measurement(P8p_BKstarmumu_Belle_2 , 0.037 , uncertainties = (exp=0.056 , theo=0.018),   active = use_Belle21),

    #= 4 - 6 =#
    Belle2_FL_3   = Measurement(FL_BKstarmumu_Belle  , 0.684 , uncertainties = (exp=0.018 , theo=0.025),  active =  use_Belle21),
    Belle2_P1_3   = Measurement(P1_BKstarmumu_Belle  , 0.088 , uncertainties = (exp=0.057 , theo=0.021),   active = use_Belle21),
    Belle2_P2_3   = Measurement(P2_BKstarmumu_Belle  , 0.105  , uncertainties = (exp=0.029 , theo=0.035),   active = use_Belle21),
    Belle2_P3_3   = Measurement(P3_BKstarmumu_Belle  , -0.090  , uncertainties = (exp=0.029 , theo=0.009),   active = use_Belle21),
    Belle2_P4p_3  = Measurement(P4p_BKstarmumu_Belle , -0.312 , uncertainties = (exp=0.040 , theo=0.014),   active = use_Belle21),
    Belle2_P5p_3  = Measurement(P5p_BKstarmumu_Belle , -0.439 , uncertainties = (exp=0.040 , theo=0.033),   active = use_Belle21),
    Belle2_P6p_3  = Measurement(P6p_BKstarmumu_Belle , -0.293 , uncertainties = (exp=0.040 , theo=0.056),   active = use_Belle21),
    Belle2_P8p_3  = Measurement(P8p_BKstarmumu_Belle , 0.166 , uncertainties = (exp=0.045 , theo=0.019),   active = use_Belle21),

    #More Reasonable: BelleII measures SM
    #= 1.1 - 2.5 =#
    Belle3_FL_1   = Measurement(FL_BKstarmumu_Belle_1  , 0.75 , uncertainties = (exp=0.025 , theo=0.021),  active =  use_Belle3),
    Belle3_P1_1   = Measurement(P1_BKstarmumu_Belle_1  , 0.027 , uncertainties = (exp=0.078 , theo=0.022),  active =  use_Belle3),
    Belle3_P2_1   = Measurement(P2_BKstarmumu_Belle_1  , -0.441  , uncertainties = (exp=0.040 , theo=0.007), active =   use_Belle3),
    Belle3_P3_1   = Measurement(P3_BKstarmumu_Belle_1  , 0.004  , uncertainties = (exp=0.040 , theo=0.012), active =   use_Belle3),
    Belle3_P4p_1  = Measurement(P4p_BKstarmumu_Belle_1 , -0.046 , uncertainties = (exp=0.056 , theo=0.020), active =   use_Belle3),
    Belle3_P5p_1  = Measurement(P5p_BKstarmumu_Belle_1 , 0.168 , uncertainties = (exp=0.054 , theo=0.038), active =  use_Belle3),
    Belle3_P6p_1  = Measurement(P6p_BKstarmumu_Belle_1 , -0.068 , uncertainties = (exp=0.054 , theo=0.040), active =  use_Belle3),
    Belle3_P8p_1  = Measurement(P8p_BKstarmumu_Belle_1 , -0.017 , uncertainties = (exp=0.061 , theo=0.018), active = use_Belle3),

    #= 2.5 - 4 =#
    Belle3_FL_2   = Measurement(FL_BKstarmumu_Belle_2  , 0.796 , uncertainties = (exp=0.022 , theo=0.017),  active =  use_Belle3),
    Belle3_P1_2   = Measurement(P1_BKstarmumu_Belle_2  , -0.116 , uncertainties = (exp=0.071 , theo=0.015),   active = use_Belle3),
    Belle3_P2_2   = Measurement(P2_BKstarmumu_Belle_2  , -0.062  , uncertainties = (exp=0.036 , theo=0.051),   active = use_Belle3),
    Belle3_P3_2   = Measurement(P3_BKstarmumu_Belle_2  , 0.004  , uncertainties = (exp=0.036 , theo=0.005),   active = use_Belle3),
    Belle3_P4p_2  = Measurement(P4p_BKstarmumu_Belle_2 , -0.393 , uncertainties = (exp=0.049 , theo=0.02),   active = use_Belle3),
    Belle3_P5p_2  = Measurement(P5p_BKstarmumu_Belle_2 , -0.500 , uncertainties = (exp=0.049 , theo=0.048),   active = use_Belle3),
    Belle3_P6p_2  = Measurement(P6p_BKstarmumu_Belle_2 , -0.052 , uncertainties = (exp=0.049 , theo=0.054),   active = use_Belle3),
    Belle3_P8p_2  = Measurement(P8p_BKstarmumu_Belle_2 , 0.017 , uncertainties = (exp=0.056 , theo=0.018),   active = use_Belle3),

    #= 4 - 6 =#
    Belle3_FL_3   = Measurement(FL_BKstarmumu_Belle  , 0.711 , uncertainties = (exp=0.018 , theo=0.025),  active =  use_Belle3),
    Belle3_P1_3   = Measurement(P1_BKstarmumu_Belle  , -0.178 , uncertainties = (exp=0.057 , theo=0.021),   active = use_Belle3),
    Belle3_P2_3   = Measurement(P2_BKstarmumu_Belle  , 0.292  , uncertainties = (exp=0.029 , theo=0.035),   active = use_Belle3),
    Belle3_P3_3   = Measurement(P3_BKstarmumu_Belle  , 0.0025  , uncertainties = (exp=0.029 , theo=0.009),   active = use_Belle3),
    Belle3_P4p_3  = Measurement(P4p_BKstarmumu_Belle , -0.504 , uncertainties = (exp=0.040 , theo=0.014),   active = use_Belle3),
    Belle3_P5p_3  = Measurement(P5p_BKstarmumu_Belle , -0.757 , uncertainties = (exp=0.040 , theo=0.033),   active = use_Belle3),
    Belle3_P6p_3  = Measurement(P6p_BKstarmumu_Belle , -0.030 , uncertainties = (exp=0.040 , theo=0.056),   active = use_Belle3),
    Belle3_P8p_3  = Measurement(P8p_BKstarmumu_Belle , -0.0145 , uncertainties = (exp=0.045 , theo=0.019),   active = use_Belle3),

    Belle4_P1_1   = Measurement(P1_BKstarmumu_Belle  , -0.1778 , uncertainties = (exp=0.057 , theo=0.0265),   active = use_Belle4),
    Belle4_P2_1   = Measurement(P2_BKstarmumu_Belle  , 0.2924  , uncertainties = (exp=0.009 , theo=0.0357),   active = use_Belle4),
    Belle4_P3_1   = Measurement(P3_BKstarmumu_Belle  , 0.0025  , uncertainties = (exp=0.029 , theo=0.0073),   active = use_Belle4),
    Belle4_P4p_1  = Measurement(P4p_BKstarmumu_Belle , -0.5037 , uncertainties = (exp=0.040 , theo=0.0136),   active = use_Belle4),
    Belle4_P5p_1  = Measurement(P5p_BKstarmumu_Belle , -0.7574 , uncertainties = (exp=0.040 , theo=0.0324),   active = use_Belle4),
    Belle4_P6p_1  = Measurement(P6p_BKstarmumu_Belle , -0.0300 , uncertainties = (exp=0.040 , theo=0.0564),   active = use_Belle4),
    Belle4_P8p_1  = Measurement(P8p_BKstarmumu_Belle , -0.0114 , uncertainties = (exp=0.045 , theo=0.0189),   active = use_Belle4),

    Belle2_BR_Ksnunu = Measurement(BR_Ksnunu  , 1.026147458796996e-05 , uncertainties = (exp=0.11e-5 , theo=0.56e-6),   active = use_Belle2nu),
    Belle2_BR_Knunu = Measurement(BR_Knunu  , 4.39275e-06 , uncertainties = (exp=0.484e-6 , theo=0.295e-6),   active = use_Belle2nu),

    Belle2_ACP_BKgamma  = Measurement(ACP_BKstargamma  , 0.00453 , uncertainties = (exp=0.00002   , theo=0.001), active = false),
    Belle2_ACP_BpKgamma  = Measurement(ACP_BpKpstargamma  , 0.0060 , uncertainties = (exp=0.000035   , theo=0.0007), active = false),

    # CLIC
    CLIC_CS_380_m   = Measurement(CS_380_m  , 1.093 , uncertainties = (exp=0.034   , theo=0.0328)  , active = use_CLIC),
    CLIC_CS_380_p   = Measurement(CS_380_p  , 0.577 , uncertainties = (exp=0.0183  , theo=0.0173)  , active = use_CLIC),
    CLIC_CS_1400_m  = Measurement(CS_1400_m , 0.118 , uncertainties = (exp=0.00388 , theo=0.00354) , active = use_CLIC),
    CLIC_CS_1400_p  = Measurement(CS_1400_p , 0.0688, uncertainties = (exp=0.002918, theo=0.002064), active = use_CLIC),
    CLIC_CS_3000_m  = Measurement(CS_3000_m , 0.0259, uncertainties = (exp=0.000953, theo=0.00077) , active = use_CLIC),
    CLIC_CS_3000_p  = Measurement(CS_3000_p , 0.0151, uncertainties = (exp=0.000851, theo=0.000453), active = use_CLIC),

    CLIC_AFB_380_m  = Measurement(AFB_380_m , -0.221, uncertainties = (exp=0.0107  , theo=0.0088)  , active = use_CLIC),
    CLIC_AFB_380_p  = Measurement(AFB_380_p , -0.269, uncertainties = (exp=0.01106 , theo=0.0108)  , active = use_CLIC),
    CLIC_AFB_1400_m = Measurement(AFB_1400_m, -0.544, uncertainties = (exp=0.01799 , theo=0.0218)  , active = use_CLIC),
    CLIC_AFB_1400_p = Measurement(AFB_1400_p, -0.615, uncertainties = (exp=0.02699 , theo=0.0246)  , active = use_CLIC),
    CLIC_AFB_3000_m = Measurement(AFB_3000_m, -0.566, uncertainties = (exp=0.0210  , theo=0.0222)  , active = use_CLIC),
    CLIC_AFB_3000_p = Measurement(AFB_3000_p, -0.626, uncertainties = (exp=0.03798 , theo=0.025)   , active = use_CLIC),

    # Drell-Yan
    #ee
    MeasDist_ee = MeasurementDistribution(ee_dist, [15452, 22003, 69945, 304020, 1522250, 9638500, 13100500,
    2188450, 634750, 330785, 213745, 153970, 118255, 94995, 78355, 65250, 56545, 48691, 79345, 62263, 50152,
    40918, 33718, 51164, 36436, 26303, 19516, 14567, 11186, 8636, 6792, 5293, 4123, 3360, 2759, 2228, 1748,
    1528, 1234, 1059, 864, 751, 661, 793, 639, 515, 433, 374, 311, 204, 207, 156, 124, 177, 156, 86, 78, 78, 49,
    41, 43, 32, 21, 25, 15, 15, 8, 11, 6, 8, 8, 7, 3, 2, 6, 0, 1, 0, 2, 1, 0, 2, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    uncertainties = (
    exp = [1.24306074e+02, 1.48334082e+02, 2.64471170e+02, 5.51380087e+02,
    1.23379496e+03, 3.10459337e+03, 3.61946129e+03, 1.47934107e+03,
    7.96711993e+02, 5.75139114e+02, 4.62325643e+02, 3.92390112e+02,
    3.43882247e+02, 3.08212589e+02, 2.79919631e+02, 2.55440795e+02,
    2.37791926e+02, 2.20660373e+02, 2.81682445e+02, 2.49525550e+02,
    2.23946422e+02, 2.02281981e+02, 1.83624617e+02, 2.26194606e+02,
    1.90882163e+02, 1.62181997e+02, 1.39699678e+02, 1.20693828e+02,
    1.05763888e+02, 9.29300812e+01, 8.24135911e+01, 7.27530068e+01,
    6.42105910e+01, 5.79655070e+01, 5.25261839e+01, 4.72016949e+01,
    4.18090899e+01, 3.90896406e+01, 3.51283361e+01, 3.25422802e+01,
    2.93938769e+01, 2.74043792e+01, 2.57099203e+01, 2.81602557e+01,
    2.52784493e+01, 2.26936114e+01, 2.08086520e+01, 1.93390796e+01,
    1.76351921e+01, 1.42828569e+01, 1.43874946e+01, 1.24899960e+01,
    1.11355287e+01, 1.33041347e+01, 1.24899960e+01, 9.27361850e+00,
    8.83176087e+00, 8.83176087e+00, 7.00000000e+00, 6.40312424e+00,
    6.55743852e+00, 5.65685425e+00, 4.58257569e+00, 5.00000000e+00,
    3.87298335e+00, 3.87298335e+00, 2.82842712e+00, 3.31662479e+00,
    2.44948974e+00, 2.82842712e+00, 2.82842712e+00, 2.64575131e+00,
    1.73205081e+00, 1.41421356e+00, 2.44948974e+00, 0.00000000e+00,
    1.00000000e+00, 0.00000000e+00, 1.41421356e+00, 1.00000000e+00,
    0.00000000e+00, 1.41421356e+00, 0.00000000e+00, 0.00000000e+00,
    0.00000000e+00, 0.00000000e+00, 0.00000000e+00, 0.00000000e+00,
    1.00000000e+00, 1.00000000e+00, 0.00000000e+00, 0.00000000e+00,
    0.00000000e+00, 0.00000000e+00, 0.00000000e+00, 0.00000000e+00,
    0.00000000e+00, 0.00000000e+00, 0.00000000e+00, 0.00000000e+00,
    0.00000000e+00, 0.00000000e+00, 0.00000000e+00, 0.00000000e+00,
    0.00000000e+00, 0.00000000e+00, 0.00000000e+00, 0.00000000e+00,
    0.00000000e+00, 0.00000000e+00, 0.00000000e+00, 0.00000000e+00,
    0.00000000e+00, 0.00000000e+00, 0.00000000e+00, 0.00000000e+00,
    0.00000000e+00],
    theo = [831.0, 1023.3, 2692.9500000000003, 10302.0, 50005.0, 321280.0, 429800.0, 72980.0,
    21565.0, 11210.0, 7552.0, 5501.0, 5257.0, 5197.0, 5180.5, 3200.1499999999996, 2400.1, 2193.7, 4317.799999999999,
    2478.0, 2020.1, 1637.2, 1438.8999999999999, 2751.2, 1431.14, 1083.64, 825.0799999999999, 573.2, 503.56, 378.2,
    277.65999999999997, 261.12, 183.15200000000002, 176.508, 116.69800000000001, 102.814, 76.174, 64.512, 71.322,
    47.248000000000005, 40.428, 36.858, 31.808, 51.794999999999995, 29.1948, 26.3487, 23.1792, 18.7224, 16.341900000000003,
    15.481200000000001, 16.727700000000002, 8.4702, 7.5906, 13.5435, 8.2165, 6.4415, 6.010999999999999, 4.5796, 3.70115,
    3.2655999999999996, 3.82956, 2.62758, 2.13912, 1.6299000000000001, 1.45494, 1.13382, 1.1050200000000001, 0.84287,
    0.694645, 0.542717, 0.5188159999999999, 0.38783999999999996, 0.318312, 0.25441600000000003, 0.20824800000000002,
    0.15412800000000001, 0.13036799999999998, 0.11268, 0.087152, 0.0668904, 0.0712488, 0.0454984, 0.0371568, 0.0305104,
    0.026360799999999997, 0.0277448, 0.030994400000000002, 0.0145672, 0.0120928, 0.0113808, 0.0079828, 0.00665488, 0.00552408,
    0.00462848, 0.00387456, 0.0032351999999999997, 0.0033071999999999997, 0.0026916, 0.0021115, 0.0016416999999999998, 0.0013579,
    0.0010673, 0.0008570899999999999, 0.00069662, 0.0005521899999999999, 0.00045385, 0.00034763999999999997, 0.00027851, 0.00021596,
    0.00017155, 0.00013351, 0.00010386999999999999, 8.221300000000001e-05, 6.4793e-05, 5.0143e-05, 3.9637e-05, 3.1578e-05], ),
    active=use_ee
    ),
    
    #mumu
    MeasDist_mumu= MeasurementDistribution(mumu_dist, [161837, 1.48751e+05, 1.18462e+05, 1.09457e+05,
    9.14190e+04, 7.46440e+04, 6.06180e+04, 4.91280e+04, 4.18000e+04, 3.26480e+04, 2.64350e+04, 2.11880e+04,
    1.67970e+04, 1.31700e+04, 1.04900e+04, 7.65000e+03, 6.12800e+03, 4.61300e+03,
    3.45700e+03, 2.63500e+03, 1.97900e+03, 1.47800e+03, 1.01600e+03, 7.59000e+02,
    5.74000e+02, 3.89000e+02, 2.95000e+02, 2.02000e+02, 1.32000e+02, 1.07000e+02,
    7.10000e+01, 5.90000e+01, 2.70000e+01, 1.80000e+01, 1.30000e+01, 1.10000e+01,
    5.00000e+00, 5.00000e+00, 4.00000e+00, 2.00000e+00, 1.00000e+00, 1.00000e+00,
    0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00],
    uncertainties = (exp = [402.28969661, 385.68251192, 344.18309081, 330.842863,   302.35575073,
     273.21054152, 246.20722979, 221.64837017, 204.450483,   180.68757567,
     162.58843747, 145.56098378, 129.6032407,  114.76062042, 102.42070103,
      87.46427842,  78.28154316,  67.91906949,  58.79625838,  51.33225107,
      44.48595284,  38.44476557,  31.8747549,   27.54995463,  23.9582971,
      19.72308292,  17.17556404,  14.2126704,   11.48912529,  10.34408043,
       8.42614977,   7.68114575,   5.19615242,   4.24264069,   3.60555128,
       3.31662479,   2.23606798,   2.23606798,   2.0,           1.41421356,
       1.0,           1.0,          0.0,           0.0,           0.0,
       0.0,           0.0,           0.0],
    theo = [7121.214999999992, 5933.636800000011, 4336.571999999996, 4070.8384000000046,
    2827.6799999999976, 2144.157599999999, 1699.4692000000002, 1391.0087100000012, 1108.0934400000003,
    905.1120999999994, 739.9929099999993, 613.7872000000004, 503.44420000000065, 396.76724999999936,
    311.09119999999996, 242.26244000000025, 193.88064499999996, 167.36482999999987, 140.1510100000001,
    112.667975, 85.89492599999998, 64.87276800000005, 50.74600999999993, 37.176944999999996, 26.577842000000036,
    20.075000000000003, 16.01834659999999, 10.96707199999999, 7.776973800000003, 5.860348000000005, 4.029617700000002,
    2.8347391999999987, 2.4225, 1.349043659999999, 1.137348960000001, 0.6227807300000003, 0.4413414799999991,
    0.27607000000000004, 0.25381323000000033, 0.11024318099999991, 0.06986841500000006, 0.05643296099999994, 0.03388293300000001,
    0.016785204800000005, 0.0198925, 0.0064995, 0.00203296, 0.00051924],
    ),
    active=use_mumu
    ),
    
    MeasDist_tautau = MeasurementDistribution(tautau_dist, [19601, 11321, 6805, 4366, 2893, 1947, 1439,
    1012, 696, 588, 409, 554, 622, 203, 86, 37, 36],
    uncertainties = (
    exp = [140, 106.40, 82.49, 66.08, 53.79, 44.12, 37.93,
    31.81, 26.38, 24.25, 20.22, 23.54, 24.94, 14.25, 9.27, 6.08, 6],
    theo = [707.5961, 421.48083, 260.83565, 177.9145, 126.935, 89.8379, 71.98022, 51.2475, 36.4549, 31.7743,
    23.8511, 32.5274, 39.5603, 14.4624, 7.11048, 3.6846, 3.573], ),
    active=use_tautau)
    
)


#============= Correlations ============================================#
exp_corr = to_correlation_matrix(measurements,
    (:HL_F0_helicity, :HL_FL_helicity, -0.82),
    (:ATLAS_F0_helicity, :ATLAS_FL_helicity, -0.82),

    (:LEP_Rb, :LEP_AFB, -0.1),

    (:LHCb_FL_1, :LHCb_P1_1, -0.05),
    (:LHCb_FL_1, :LHCb_P2_1, -0.33),
    (:LHCb_FL_1, :LHCb_P3_1, 0.09),
    (:LHCb_FL_1, :LHCb_P4p_1, -0.11),
    (:LHCb_FL_1, :LHCb_P5p_1, -0.03),
    (:LHCb_FL_1, :LHCb_P6p_1, -0.14),
    (:LHCb_FL_1, :LHCb_P8p_1, 0.02),

    (:LHCb_P1_1, :LHCb_P2_1, 0.05),
    (:LHCb_P1_1, :LHCb_P3_1, 0.02),
    (:LHCb_P1_1, :LHCb_P4p_1, -0.04),
    (:LHCb_P1_1, :LHCb_P5p_1, -0.00),
    (:LHCb_P1_1, :LHCb_P6p_1, 0.03),
    (:LHCb_P1_1, :LHCb_P8p_1, 0.01),

    (:LHCb_P2_1, :LHCb_P3_1, 0.00),
    (:LHCb_P2_1, :LHCb_P4p_1, -0.04),
    (:LHCb_P2_1, :LHCb_P5p_1, -0.06),
    (:LHCb_P2_1, :LHCb_P6p_1, 0.03),
    (:LHCb_P2_1, :LHCb_P8p_1, -0.04),

    (:LHCb_P3_1, :LHCb_P4p_1, 0.02),
    (:LHCb_P3_1, :LHCb_P5p_1, 0.03),
    (:LHCb_P3_1, :LHCb_P6p_1, 0.03),
    (:LHCb_P3_1, :LHCb_P8p_1, 0.08),

    (:LHCb_P4p_1, :LHCb_P5p_1, -0.06),
    (:LHCb_P4p_1, :LHCb_P6p_1, 0.03),
    (:LHCb_P4p_1, :LHCb_P8p_1, 0.01),

    (:LHCb_P5p_1, :LHCb_P6p_1, 0.01),
    (:LHCb_P5p_1, :LHCb_P8p_1, 0.00),

    (:LHCb_P6p_1, :LHCb_P8p_1, -0.02),


    (:LHCb2_FL_1, :LHCb2_P1_1, -0.23),
    (:LHCb2_FL_1, :LHCb2_P2_1, -0.51),
    (:LHCb2_FL_1, :LHCb2_P3_1, 0.26),
    (:LHCb2_FL_1, :LHCb2_P4p_1, 0.03),
    (:LHCb2_FL_1, :LHCb2_P5p_1, 0.24),
    (:LHCb2_FL_1, :LHCb2_P6p_1, -0.13),
    (:LHCb2_FL_1, :LHCb2_P8p_1, -0.13),

    (:LHCb2_P1_1, :LHCb2_P2_1, 0.15),
    (:LHCb2_P1_1, :LHCb2_P3_1, -0.23),
    (:LHCb2_P1_1, :LHCb2_P4p_1, -0.00),
    (:LHCb2_P1_1, :LHCb2_P5p_1, -0.02),
    (:LHCb2_P1_1, :LHCb2_P6p_1, 0.11),
    (:LHCb2_P1_1, :LHCb2_P8p_1, 0.11),

    (:LHCb2_P2_1, :LHCb2_P3_1, -0.09),
    (:LHCb2_P2_1, :LHCb2_P4p_1, -0.03),
    (:LHCb2_P2_1, :LHCb2_P5p_1, -0.22),
    (:LHCb2_P2_1, :LHCb2_P6p_1, 0.05),
    (:LHCb2_P2_1, :LHCb2_P8p_1, 0.14),

    (:LHCb2_P3_1, :LHCb2_P4p_1, 0.07),
    (:LHCb2_P3_1, :LHCb2_P5p_1, 0.19),
    (:LHCb2_P3_1, :LHCb2_P6p_1, -0.17),
    (:LHCb2_P3_1, :LHCb2_P8p_1, 0.00),

    (:LHCb2_P4p_1, :LHCb2_P5p_1, -0.20),
    (:LHCb2_P4p_1, :LHCb2_P6p_1, 0.02),
    (:LHCb2_P4p_1, :LHCb2_P8p_1, -0.09),

    (:LHCb2_P5p_1, :LHCb2_P6p_1, -0.12),
    (:LHCb2_P5p_1, :LHCb2_P8p_1, -0.04),

    (:LHCb2_P6p_1, :LHCb2_P8p_1, -0.14),

    (:LHCb2_FL_2, :LHCb2_P1_2, 0.08),
    (:LHCb2_FL_2, :LHCb2_P2_2, -0.34),
    (:LHCb2_FL_2, :LHCb2_P3_2, 0.01),
    (:LHCb2_FL_2, :LHCb2_P4p_2, -0.21),
    (:LHCb2_FL_2, :LHCb2_P5p_2, -0.09),
    (:LHCb2_FL_2, :LHCb2_P6p_2, -0.08),
    (:LHCb2_FL_2, :LHCb2_P8p_2, -0.06),

    (:LHCb2_P1_2, :LHCb2_P2_2, 0.02),
    (:LHCb2_P1_2, :LHCb2_P3_2, -0.02),
    (:LHCb2_P1_2, :LHCb2_P4p_2, -0.07),
    (:LHCb2_P1_2, :LHCb2_P5p_2, -0.03),
    (:LHCb2_P1_2, :LHCb2_P6p_2, 0.00),
    (:LHCb2_P1_2, :LHCb2_P8p_2, -0.03),

    (:LHCb2_P2_2, :LHCb2_P3_2, 0.07),
    (:LHCb2_P2_2, :LHCb2_P4p_2, -0.02),
    (:LHCb2_P2_2, :LHCb2_P5p_2, -0.05),
    (:LHCb2_P2_2, :LHCb2_P6p_2, 0.08),
    (:LHCb2_P2_2, :LHCb2_P8p_2, -0.03),

    (:LHCb2_P3_2, :LHCb2_P4p_2, 0.02),
    (:LHCb2_P3_2, :LHCb2_P5p_2, -0.04),
    (:LHCb2_P3_2, :LHCb2_P6p_2, -0.04),
    (:LHCb2_P3_2, :LHCb2_P8p_2, 0.07),

    (:LHCb2_P4p_2, :LHCb2_P5p_2, -0.10),
    (:LHCb2_P4p_2, :LHCb2_P6p_2, 0.02),
    (:LHCb2_P4p_2, :LHCb2_P8p_2, 0.04),

    (:LHCb2_P5p_2, :LHCb2_P6p_2, 0.01),
    (:LHCb2_P5p_2, :LHCb2_P8p_2, 0.02),

    (:LHCb2_P6p_2, :LHCb2_P8p_2, 0.01),

    (:LHCb2_FL_3, :LHCb2_P1_3, 0.04),
    (:LHCb2_FL_3, :LHCb2_P2_3, 0.05),
    (:LHCb2_FL_3, :LHCb2_P3_3, -0.10),
    (:LHCb2_FL_3, :LHCb2_P4p_3, -0.04),
    (:LHCb2_FL_3, :LHCb2_P5p_3, -0.14),
    (:LHCb2_FL_3, :LHCb2_P6p_3, -0.17),
    (:LHCb2_FL_3, :LHCb2_P8p_3, 0.14),

    (:LHCb2_P1_3, :LHCb2_P2_3, 0.06),
    (:LHCb2_P1_3, :LHCb2_P3_3, 0.07),
    (:LHCb2_P1_3, :LHCb2_P4p_3, -0.06),
    (:LHCb2_P1_3, :LHCb2_P5p_3, -0.10),
    (:LHCb2_P1_3, :LHCb2_P6p_3, -0.03),
    (:LHCb2_P1_3, :LHCb2_P8p_3, 0.02),

    (:LHCb2_P2_3, :LHCb2_P3_3, -0.02),
    (:LHCb2_P2_3, :LHCb2_P4p_3, -0.14),
    (:LHCb2_P2_3, :LHCb2_P5p_3, -0.09),
    (:LHCb2_P2_3, :LHCb2_P6p_3, -0.03),
    (:LHCb2_P2_3, :LHCb2_P8p_3, -0.01),

    (:LHCb2_P3_3, :LHCb2_P4p_3, -0.01),
    (:LHCb2_P3_3, :LHCb2_P5p_3, 0.07),
    (:LHCb2_P3_3, :LHCb2_P6p_3, 0.19),
    (:LHCb2_P3_3, :LHCb2_P8p_3, -0.01),

    (:LHCb2_P4p_3, :LHCb2_P5p_3, 0.02),
    (:LHCb2_P4p_3, :LHCb2_P6p_3, 0.04),
    (:LHCb2_P4p_3, :LHCb2_P8p_3, 0.01),

    (:LHCb2_P5p_3, :LHCb2_P6p_3, 0.09),
    (:LHCb2_P5p_3, :LHCb2_P8p_3, 0.00),

    (:LHCb2_P6p_3, :LHCb2_P8p_3, 0.02),

    (:ATLAS_P1_1, :ATLAS_P4p_1, 0.23),
    (:ATLAS_P1_1, :ATLAS_P5p_1, -0.09),
    (:ATLAS_P1_1, :ATLAS_P6p_1, 0.08),
    (:ATLAS_P1_1, :ATLAS_P8p_1, -0.07),

    (:ATLAS_P4p_1, :ATLAS_P5p_1, 0.53),
    (:ATLAS_P4p_1, :ATLAS_P6p_1, 0.15),
    (:ATLAS_P4p_1, :ATLAS_P8p_1, 0.08),

    (:ATLAS_P5p_1, :ATLAS_P6p_1, 0.28),
    (:ATLAS_P5p_1, :ATLAS_P8p_1, 0.24),

    (:ATLAS_P6p_1, :ATLAS_P8p_1, 0.67),

    (:LHCb_FL_Bsphimumu_1, :LHCb_S3_Bsphimumu_1, -0.02),
    (:LHCb_FL_Bsphimumu_1, :LHCb_S4_Bsphimumu_1, 0.08),
    (:LHCb_FL_Bsphimumu_1, :LHCb_S7_Bsphimumu_1, 0.07),

    (:LHCb_S3_Bsphimumu_1, :LHCb_S4_Bsphimumu_1, -0.07),
    (:LHCb_S3_Bsphimumu_1, :LHCb_S7_Bsphimumu_1, 0.10),

    (:LHCb_S4_Bsphimumu_1, :LHCb_S7_Bsphimumu_1, -0.06),

)

correlations = (
    exp = Correlation(exp_corr, active=true) ,
    theo = NoCorrelation(active=true),
)
