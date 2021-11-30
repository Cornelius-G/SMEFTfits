#------------ tt  ----------------------------------------------
function CS_tt(params)
    if scale==172.5
        C = run_SMEFT_mt_mt(params)
    else
        C = run_SMEFT_1TeV_mt(params)
    end
    cug = C[2]* 1000^2 / 246^2
    return compute_tt_LHC(cug)
end

function CS_tt_14(params)
    if scale==172.5
        C = run_SMEFT_mt_mt(params)
    else
        C = run_SMEFT_1TeV_mt(params)
    end
    cug = C[2]* 1000^2 / 246^2
    return compute_tt_HLLHC(cug)
end

function compute_tt_LHC(C)
    p = params_tt_xsc()
    cross_section = #=@.=#( p[1] + p[2] * C +   p[3] *  C^2 )
    return cross_section
end

function compute_tt_HLLHC(C)
    p = params_tt_xsc_14()
    cross_section = #=@.=#( p[1] + p[2] * C /(1000^2 / 246^2) +   p[3] *  C^2 /(1000^2 / 246^2)^2 )
    #cross_section = #=@.=#( p[1] + p[2] * C +   p[3] *  C^2 )
    return cross_section
end

function params_tt_xsc()
    # SM @ NNLO, Cug, CuG^2
    return [ 832, 138.5, 20.46 ]
end

function params_tt_xsc_14()
    # SM @ NNLO, Cug, CuG^2
    return [ 932.96, 2615.2, 6230.1 ]
end

#------------ ttZ ----------------------------------------------
function CS_ttZ(params)
    if top_dof==true
        cub = params.CuB[1] * 1000^2 / 246^2
        cug = params.CuG[1] * 1000^2 / 246^2
        cuw = params.CuW[1] * 1000^2 / 246^2
        cφu = params.Cφu[1] * 1000^2 / 246^2
        cφqm = params.Cφqm[1] * 1000^2 / 246^2
        θw = 28.13
        sw = sind(θw)
        cw = cosd(θw)
        cuz = cw*cuw - sw*cub

    else
        if scale==172.5
            C = run_SMEFT_mt_mt(params)
        else
            C = run_SMEFT_1TeV_mt(params)
        end
        cub = C[1] * 1000^2 / 246^2
        cug = C[2] * 1000^2 / 246^2
        cuw = C[3] * 1000^2 / 246^2
        cφu = C[4] * 1000^2 / 246^2
        cφq1 = C[5] * 1000^2 / 246^2
        cφq3 = C[6] * 1000^2 / 246^2

        θw = 28.13
        sw = sind(θw)
        cw = cosd(θw)
        cuz = cw*cuw - sw*cub
        cφqm = cφq1 - cφq3
    end
    return compute_ttZ([ cφqm, 0, cφu, cuw, cuz, cug ])
end

function CS_ttZ_14(params)
    if top_dof==true
        cub = params.CuB[1] * 1000^2 / 246^2
        cug = params.CuG[1] * 1000^2 / 246^2
        cuw = params.CuW[1] * 1000^2 / 246^2
        cφu = params.Cφu[1] * 1000^2 / 246^2
        cφqm = params.Cφqm[1] * 1000^2 / 246^2
        θw = 28.13
        sw = sind(θw)
        cw = cosd(θw)
        cuz = cw*cuw - sw*cub

    else
        if scale==172.5
            C = run_SMEFT_mt_mt(params)
        else
            C = run_SMEFT_1TeV_mt(params)
        end
        cub = C[1] * 1000^2 / 246^2
        cug = C[2] * 1000^2 / 246^2
        cuw = C[3] * 1000^2 / 246^2
        cφu = C[4] * 1000^2 / 246^2
        cφq1 = C[5] * 1000^2 / 246^2
        cφq3 = C[6] * 1000^2 / 246^2

        θw = 28.13
        sw = sind(θw)
        cw = cosd(θw)
        cuz = cw*cuw - sw*cub
        cφqm = cφq1 - cφq3
    end

    return compute_ttZ_14([ cφqm, 0, cφu, cuw, cuz, cug ])
end

function compute_ttZ(C)
    p = params_ttZ_xsec()
    cross_section = #=@.=#( p[1] + p[2] * C[1] +   p[3] * C[2] +  p[4] * C[3]
    +  p[5] * C[4] +  p[6] * C[5] +  p[7] * C[6] + p[8] * C[1] * C[1]
    + p[9] * C[1] * C[2] + p[10] * C[1] * C[3] + p[11] * C[1] * C[4]
    + p[12] * C[1] * C[5] + p[13] * C[1] * C[6] + p[14] * C[2] * C[2]
    + p[15] * C[2] * C[3] + p[16] * C[2] * C[4] + p[17] * C[2] * C[5]
    + p[18] * C[2] * C[6] + p[19] * C[3] * C[3] + p[20] * C[3] * C[4]
    + p[21] * C[3] * C[5] + p[22] * C[3] * C[6] + p[23] * C[4] * C[4]
    + p[24] * C[4] * C[5] + p[25] * C[4] * C[6] + p[26] * C[5] * C[5]
    + p[27] * C[5] * C[6] + p[28] * C[6] * C[6] )

    return cross_section
end

function compute_ttZ_14(C)
    p = params_ttZ_xsec_14()
    cross_section = #=@.=#( p[1] + p[2] * C[1] +   p[3] * C[2] +  p[4] * C[3]
    +  p[5] * C[4] +  p[6] * C[5] +  p[7] * C[6] + p[8] * C[1] * C[1]
    + p[9] * C[1] * C[2] + p[10] * C[1] * C[3] + p[11] * C[1] * C[4]
    + p[12] * C[1] * C[5] + p[13] * C[1] * C[6] + p[14] * C[2] * C[2]
    + p[15] * C[2] * C[3] + p[16] * C[2] * C[4] + p[17] * C[2] * C[5]
    + p[18] * C[2] * C[6] + p[19] * C[3] * C[3] + p[20] * C[3] * C[4]
    + p[21] * C[3] * C[5] + p[22] * C[3] * C[6] + p[23] * C[4] * C[4]
    + p[24] * C[4] * C[5] + p[25] * C[4] * C[6] + p[26] * C[5] * C[5]
    + p[27] * C[5] * C[6] + p[28] * C[6] * C[6] )

    return cross_section
end

function params_ttZ_xsec()
    # SM, CφM, CφQ3, Cφu, CuW, CuZ, CuG + quadratic terms
    return [ 0.843,
     -0.05999706937, 0 , 0.038984827637, 0.002423246514, -0.001174903712, 0.1787,
     0.00236712023, 0.0023778238, 0.00338169591, 0.0060562865, 0.05192415, 0.11855122976,
     0 , 0.00236794139, 0.003891, 0.0495679, 0.1258851,
     0.00237170225, 0.00622616526, 0.05168958, 0.1362,
     0.0039034, 0.049218786, 0.13006669,
     0.04935692, 0.18137609,
     0.126 ]
end

function params_ttZ_xsec_14()
    # SM, CφM, CφQ3, Cφu, CuW, CuZ, CuG + quadratic terms
    return [ 1.015,
     -0.07316105526, 0 , 0.04722610323, 0.002801720955,
     -0.0015490440859, 0.21456656657,
     0.00290201979, 0.00290061537, 0.00414406874, 0.0074185465, 0.06454778, 0.15408568292,
     0 , 0.00289266356, 0.0047351, 0.06135405 , 0.163441,
     0.00289556497, 0.00758417876, 0.06448228, 0.1751044326,
     0.0047207, 0.061198078, 0.16829257,
     0.06154338, 0.23240007,
     0.1634969 ]
end

#------------ ttgamma ----------------------------------------------
function tta_13_1l(params)
    if scale==172.5
        C = run_SMEFT_mt_mt(params)
    else
        C = run_SMEFT_1TeV_mt(params)
    end
    cub = C[1]
    cug = C[2]
    cuw = C[3]


    θw = 28.13
    sw = sind(θw)
    cw = cosd(θw)
    cuz = cw*cuw - sw*cub
    fiducial_xsec_1l_uz([cug, cuw, cuz])
end

function tta_13_2l(params)
    if scale==172.5
        C = run_SMEFT_mt_mt(params)
    else
        C = run_SMEFT_1TeV_mt(params)
    end
    cub = C[1]
    cug = C[2]
    cuw = C[3]

    θw = 28.13
    sw = sind(θw)
    cw = cosd(θw)
    cuz = cw*cuw - sw*cub
    fiducial_xsec_2l_uz([cug, cuw, cuz])
end

function tta_14_1l(params)
    if scale==172.5
        C = run_SMEFT_mt_mt(params)
    else
        C = run_SMEFT_1TeV_mt(params)
    end
    cub = C[1]
    cug = C[2]
    cuw = C[3]

    θw = 28.13
    sw = sind(θw)
    cw = cosd(θw)
    cuz = cw*cuw - sw*cub
    fiducial_xsec_14_1l_uz([cug, cuw, cuz])
end

function tta_14_2l(params)
    if scale==172.5
        C = run_SMEFT_mt_mt(params)
    else
        C = run_SMEFT_1TeV_mt(params)
    end
    cub = C[1]
    cug = C[2]
    cuw = C[3]

    θw = 28.13
    sw = sind(θw)
    cw = cosd(θw)
    cuz = cw*cuw - sw*cub
    fiducial_xsec_14_2l_uz([cug, cuw, cuz])
end



# multiply interpolation of total xsec with fid. acceptance (eff)
# and add "k-factor" for SM correction
function fiducial_xsec_1l_uz(C)
    k_1l = 83.4665999459313
    fit_eff_param_1l =  params_fidacc_1l()
    interpol_noacc_param = params_total_xsec()

    return eff(C, fit_eff_param_1l) .* quadratic_model(C, interpol_noacc_param) .+ k_1l
end

function fiducial_xsec_2l_uz(C)
    k_2l = 16.593634484408483
    fit_eff_param_2l = params_fidacc_2l()
    interpol_noacc_param = params_total_xsec()

    return eff(C, fit_eff_param_2l) .* quadratic_model(C, interpol_noacc_param) .+ k_2l
end


function fiducial_xsec_14_1l_uz(C)
    k_1l = -1.426645
    fit_eff_param_1l =  params_fidacc_14_1l()
    interpol_noacc_param = params_total_xsec_14()

    return eff(C, fit_eff_param_1l) .* quadratic_model(C, interpol_noacc_param) .+ k_1l
end

function fiducial_xsec_14_2l_uz(C)
    k_2l = 2.7102035
    fit_eff_param_2l = params_fidacc_14_2l()
    interpol_noacc_param = params_total_xsec_14()

    return eff(C, fit_eff_param_2l) .* quadratic_model(C, interpol_noacc_param) .+ k_2l
end



# fiducial acceptance
function eff(C, e)
    s = params_total_xsec()
    denominator = quadratic_model(C, s)

    numerator = (e[1]*s[1]*C[1]^0*C[2]^0*C[3]^0
    + e[2]*s[2]*C[1]^0*C[2]^0*C[3]^1
    + e[3]*s[3]*C[1]^0*C[2]^0*C[3]^2
    + e[4]*s[4]*C[1]^0*C[2]^1*C[3]^0
    + e[5]*s[5]*C[1]^0*C[2]^1*C[3]^1
    + e[6]*s[6]*C[1]^0*C[2]^2*C[3]^0
    + e[7]*s[7]*C[1]^1*C[2]^0*C[3]^0
    + e[8]*s[8]*C[1]^1*C[2]^0*C[3]^1
    + e[9]*s[9]*C[1]^1*C[2]^1*C[3]^0
    + e[10]*s[10]*C[1]^2*C[2]^0*C[3]^0
    )

    return numerator ./ denominator
end

function quadratic_model(C, p)
# C[1]=CuB, C[1]=CuG, C[3]=CuW, p=model parameter
(p[1]*C[1]^0*C[2]^0*C[3]^0
+ p[2]*C[1]^0*C[2]^0*C[3]^1
+ p[3]*C[1]^0*C[2]^0*C[3]^2
+ p[4]*C[1]^0*C[2]^1*C[3]^0
+ p[5]*C[1]^0*C[2]^1*C[3]^1
+ p[6]*C[1]^0*C[2]^2*C[3]^0
+ p[7]*C[1]^1*C[2]^0*C[3]^0
+ p[8]*C[1]^1*C[2]^0*C[3]^1
+ p[9]*C[1]^1*C[2]^1*C[3]^0
+ p[10]*C[1]^2*C[2]^0*C[3]^0
)
end

# return interpolated params of the total ttgamma xsec
function params_total_xsec()
    return [4787.8319388679765,
    -633.3295852678285, 44776.40427336053, 26525.758407582485,
    -102898.33073686132, 105571.83244747801, 20441.62967975978,
    -8672.01708116833, 64965.31092132101, 51975.059043423]
end

# return interpolated params of the fiducial acceptance for 1l channel
function params_fidacc_1l()
    return [0.08595401954550866,
    0.24342261870353674, 0.23993945397597446, 0.08809735354860272,
    0.24064846695181866, 0.17129137428997598, 0.08453761417847493,
    0.2571572039502875, 0.11016589914607273, 0.10102226849696228]
end

# return interpolated params of the fiducial acceptance for 2l channel
function params_fidacc_2l()
    return [0.009692563587886447,
    0.033888295517009774, 0.03449018812722143, 0.009783980567815086,
    0.034513685692849204, 0.02325508722794946, 0.009675837700450662,
    0.03244596927889461, 0.012879539083145979, 0.011071966195759704]
end


# return interpolated params of the total ttgamma xsec
function params_total_xsec_14()
    return [5693.054121530495,
    -799.5867581907576, 55202.75416254215, 31619.80613298018,
    -126847.19726919221, 128123.05168378844, 24355.37706284139,
    -10629.595344551251, 77945.5472001464, 62973.59831524859]

end

# return interpolated params of the fiducial acceptance for 1l channel
function params_fidacc_14_1l()
    return [0.08604637071172187,
    0.2460506897607242, 0.24149014457842838, 0.08854948375227555,
    0.23976636480663505, 0.17086226024158202, 0.08580167890806435,
    0.26985628498279574, 0.10963788741675662, 0.10506416914945924]

end

# return interpolated params of the fiducial acceptance for 2l channel
function params_fidacc_14_2l()
    return [0.009735316985686512,
    0.030068342796913304, 0.034371558253573374, 0.009663057230734745,
    0.034601298426541485, 0.02357554318211502, 0.009721349425129035,
    0.03458144394780113, 0.01354444097141595, 0.010711460557551896]
end

#------------ Top Width------------------------------------------

function width(params)
    if scale==172.5
        C = run_SMEFT_mt_mt(params)
    else
        C = run_SMEFT_1TeV_mt(params)
    end


    cpq = C[6]
    cuw = C[3]

    mt=172.8
    mW=80.32
    g=0.652
    v = 246

    GammaSM=1.484 * (1- 1/  100.0 * (-0.26 -1.49 + 1.68 - 8.58 - 2.09))
    GammaBSM1=1.484*2*cpq
    GammaBSM2=1.484*3*(mW/mt)*1.414*mW/(g*v)*cuw
    Gamma=GammaSM+GammaBSM1+GammaBSM2
    return Gamma
end

#------------ W Helicities ----------------------------------------------
function F0(params)
    sm = 0.687
    if scale==172.5
        C = run_SMEFT_mt_mt(params)
    else
        C = run_SMEFT_1TeV_mt(params)
    end
    C = C[3]
    return BSM_F0(sm, C)
end

function FL(params)
    sm = 0.311
    if scale==172.5
        C = run_SMEFT_mt_mt(params)
    else
        C = run_SMEFT_1TeV_mt(params)
    end
    C = C[3]
    return BSM_FL(sm, C)
end

function BSM_F0(sm, C)
    return sm + 1.00297 * C - 0.913038 * C^2
end

function BSM_FL(sm, C)
    return sm - 1.00297 * C + 0.913038 * C^2
end

#= Computation of e+e- > b b~=#
function Rb(params)
    if zbb==true
        cφqp=params.Cφqp[1] * 1000^2 / 246^2
    else
        if scale==172.5
            C = run_SMEFT_mt_mt(params)
        else
            C = run_SMEFT_1TeV_mt(params)
        end
        cφq1 = C[5] * 1000^2 / 246^2
        cφq3 = C[6] * 1000^2 / 246^2
    #cφqm = cφq1 - cφq3
        cφqp = cφq1 + cφq3
    end
    #return compute_Rb([ cφqm, cφq3 ])
    return compute_Rb([ cφqp ])
end

function compute_Rb(C)
    p1 = params_sigma_b()
    p2 = params_sigma_had()
    n_sm = (p1[1])
    #n_lin = (p1[2] * C[1] + p1[3] * C[2] )
    #n_quad = (p1[4] * C[1] * C[1] + p1[5] * C[1] * C[2] + p1[6] * C[2] * C[2] )
    n_lin = (p1[2] * C[1] )#
    n_quad = p1[3] * C[1] * C[1]

    d_sm = (p2[1])
    #d_lin = (p2[2] * C[1] + p2[3] * C[2] )
    #d_quad = (p2[4] * C[1] * C[1] + p2[5] * C[1] * C[2] + p2[6] * C[2] * C[2] )
    d_lin = (p2[2] * C[1] )#
    d_quad = p2[3] * C[1] * C[1]

    Rb = ( n_sm / d_sm + (n_lin * d_sm - n_sm * d_lin) / d_sm^2 + ( -n_sm * d_sm * d_quad + n_sm * d_lin^2 - n_lin * d_sm * d_lin + d_sm^2 * n_quad ) / d_sm^3 )
    RBscale = Rb - n_sm / d_sm + 0.21581
    return RBscale
end

function sigma_had(params)

    if zbb==true
        cφqp=params.Cφqp[1] * 1000^2 / 246^2
    else
        if scale==172.5
            C = run_SMEFT_mt_mt(params)
        else
            C = run_SMEFT_1TeV_mt(params)
        end
        cφq1 = C[5] * 1000^2 / 246^2
        cφq3 = C[6] * 1000^2 / 246^2
    #cφqm = cφq1 - cφq3
        cφqp = cφq1 + cφq3
    end
    #return compute_sigma_had([ cφqm, cφq3 ])
    return compute_sigma_had([ cφqp ])
end

function compute_sigma_had(C)
    p1 = params_sigma_had()

    n_sm = (p1[1])
    n_lin = (p1[2] * C[1] )#+ p1[3] * C[2] )
    n_quad = p1[3] * C[1] * C[1] #(p1[4] * C[1] * C[1] )+ p1[5] * C[1] * C[2] + p1[6] * C[2] * C[2] )

    return n_sm + n_lin + n_quad
end

function params_sigma_b()
    return [8344.5964,  1164.07895,  42.02695,  2323.9695,
    169.4891,   165.8417]
end

function params_sigma_had()
    return [#33976.9234, from madgraph, but significantly to small
    41482,
    1161.74995,  41.09295,  2302.349,
    146.0978,   180.3197]
end

function AFB_bb(params)
    if zbb==true
        cφqp=params.Cφqp[1] * 1000^2 / 246^2
    else
        if scale==172.5
            C = run_SMEFT_mt_mt(params)
        else
            C = run_SMEFT_1TeV_mt(params)
        end
        cφq1 = C[5] * 1000^2 / 246^2
        cφq3 = C[6] * 1000^2 / 246^2
    #cφqm = cφq1 - cφq3
        cφqp = cφq1 + cφq3
    end
    C = [cφqp]
    p1 = params_FB_Zbb()
    p2 = params_cs_Zbb()
    return compute_AFB_bb(C, p1, p2)
end

function compute_AFB_bb(C, p1, p2)
    n_sm = (p1[1])
    #n_lin = (p1[2] * C[1] + p1[3] * C[2] )
    #n_quad = (p1[4] * C[1] * C[1] + p1[5] * C[1] * C[2] + p1[6] * C[2] * C[2] )
    n_lin = (p1[2] * C[1] )
    n_quad = (p1[3] * C[1] * C[1])

    d_sm = (p2[1])
    #d_lin = (p2[2] * C[1] + p2[3] * C[2] )
    #d_quad = (p2[4] * C[1] * C[1] + p2[5] * C[1] * C[2] + p2[6] * C[2] * C[2] )
    d_lin = (p2[2] * C[1])
    d_quad = (p2[3] * C[1] * C[1])

    AFB = ( n_sm / d_sm + (n_lin * d_sm - n_sm * d_lin) / d_sm^2 + ( -n_sm * d_sm * d_quad + n_sm * d_lin^2 - n_lin * d_sm * d_lin + d_sm^2 * n_quad ) / d_sm^3 )
    #AFB = ( n_sm + n_lin + n_quad ) / ( d_sm + d_lin + d_quad )
    AFB = AFB - n_sm/d_sm + 0.1030
    return AFB
end

function params_FB_Zbb()
    return [ 700.8,
    103.83584234000006, 210.0868428,
    182.3580785399878, -4552.298440084006, 3370.948046784018
    ]
end

function params_cs_Zbb()
    return [ 8344.5964,
    18625.26320000001, 37183.512,
    10758.899199999869, 42455.47519999964, 43389.20960000018
    ]
end
