#Observables B -> Xs l l
function BR_Xsee_low1(params)
    C = B_coeff(params)
    p = params_BR_BXsll_low1()
    return compute_BRll(C, p)
end

function BR_Xsee_low2(params)
    C = B_coeff(params)
    p = params_BR_BXsll_low2()
    return compute_BRll(C, p)
end

function AFB_Xsee_low1(params)
    C = B_coeff(params)
    p1 = params_BR_BXsll_FB_low1()
    p2 = params_BR_BXsll_low1()
    return compute_AFB_Bll(C, p1, p2)
end

function AFB_Xsee_low2(params)
    C = B_coeff(params)
    p1 = params_BR_BXsll_FB_low2()
    p2 = params_BR_BXsll_low2()
    return compute_AFB_Bll(C, p1, p2)
end

function AFB_Xsee_high(params)
    C = B_coeff(params)
    p1 = params_BR_BXsll_FB_high()
    p2 = params_BR_BXsll_high()
    return compute_AFB_Bll(C, p1, p2)
end

#Observables B -> K* mu mu
function FL_BKstarmumu_Belle(params)
    C = B_coeff(params)
    p1 = params_BRFL_BKstarmumu_Belle()
    p2 = params_BR_BKstarmumu_Belle()
    return compute_AFB_B(C, p1, p2)
end

function P1_BKstarmumu_Belle(params)
    C = B_coeff(params)
    p1 = params_BRS3_BKstarmumu_Belle()
    return compute_P_Belle(C, p1, 2.)
end

function P2_BKstarmumu_Belle(params)
    C = B_coeff(params)
    p1 = params_BRS6s_BKstarmumu_Belle()
    return compute_P_Belle(C, p1, 8.)
end

function P3_BKstarmumu_Belle(params)
    C = B_coeff(params)
    p1 = params_BRS9_BKstarmumu_Belle()
    return compute_P_Belle(C, p1, -4.)
end

function P4p_BKstarmumu_Belle(params)
    C = B_coeff(params)
    p1 = params_BRS4_BKstarmumu_Belle()
    return compute_Pprime_Belle(C, p1)
end

function P5p_BKstarmumu_Belle(params)
    C = B_coeff(params)
    p1 = params_BRS5_BKstarmumu_Belle()
    return compute_Pprime_Belle(C, p1)
end

function P6p_BKstarmumu_Belle(params)
    C = B_coeff(params)
    p1 = params_BRS7_BKstarmumu_Belle()
    return compute_Pprime_Belle(C, p1)
end

function P8p_BKstarmumu_Belle(params)
    C = B_coeff(params)
    p1 = params_BRS8_BKstarmumu_Belle()
    return compute_Pprime_Belle(C, p1)
end


#= Belle II 1.1 - 2.5 =#
#Observables B -> K* mu mu
#Observables B -> K* mu mu
function FL_BKstarmumu_Belle_1(params)
    C = B_coeff(params)
    p1 = params_BRFL_BKstarmumu_Belle_1()
    p2 = params_BR_BKstarmumu_Belle_1()
    return compute_AFB_B(C, p1, p2)
end

function P1_BKstarmumu_Belle_1(params)
    C = B_coeff(params)
    p1 = params_BRS3_BKstarmumu_Belle_1()
    return compute_P_Belle_1(C, p1, 2.)
end

function P2_BKstarmumu_Belle_1(params)
    C = B_coeff(params)
    p1 = params_BRS6s_BKstarmumu_Belle_1()
    return compute_P_Belle_1(C, p1, 8.)
end

function P3_BKstarmumu_Belle_1(params)
    C = B_coeff(params)
    p1 = params_BRS9_BKstarmumu_Belle_1()
    return compute_P_Belle_1(C, p1, -4.)
end

function P4p_BKstarmumu_Belle_1(params)
    C = B_coeff(params)
    p1 = params_BRS4_BKstarmumu_Belle_1()
    return compute_Pprime_Belle_1(C, p1)
end

function P5p_BKstarmumu_Belle_1(params)
    C = B_coeff(params)
    p1 = params_BRS5_BKstarmumu_Belle_1()
    return compute_Pprime_Belle_1(C, p1)
end

function P6p_BKstarmumu_Belle_1(params)
    C = B_coeff(params)
    p1 = params_BRS7_BKstarmumu_Belle_1()
    return compute_Pprime_Belle_1(C, p1)
end

function P8p_BKstarmumu_Belle_1(params)
    C = B_coeff(params)
    p1 = params_BRS8_BKstarmumu_Belle_1()
    return compute_Pprime_Belle_1(C, p1)
end


#= Belle II 2.5 - 4.0 =#
#Observables B -> K* mu mu
#Observables B -> K* mu mu
function FL_BKstarmumu_Belle_2(params)
    C = B_coeff(params)
    p1 = params_BRFL_BKstarmumu_Belle_2()
    p2 = params_BR_BKstarmumu_Belle_2()
    return compute_AFB_B(C, p1, p2)
end

function P1_BKstarmumu_Belle_2(params)
    C = B_coeff(params)
    p1 = params_BRS3_BKstarmumu_Belle_2()
    return compute_P_Belle_2(C, p1, 2.)
end

function P2_BKstarmumu_Belle_2(params)
    C = B_coeff(params)
    p1 = params_BRS6s_BKstarmumu_Belle_2()
    return compute_P_Belle_2(C, p1, 8.)
end

function P3_BKstarmumu_Belle_2(params)
    C = B_coeff(params)
    p1 = params_BRS9_BKstarmumu_Belle_2()
    return compute_P_Belle_2(C, p1, -4.)
end

function P4p_BKstarmumu_Belle_2(params)
    C = B_coeff(params)
    p1 = params_BRS4_BKstarmumu_Belle_2()
    return compute_Pprime_Belle_2(C, p1)
end

function P5p_BKstarmumu_Belle_2(params)
    C = B_coeff(params)
    p1 = params_BRS5_BKstarmumu_Belle_2()
    return compute_Pprime_Belle_2(C, p1)
end

function P6p_BKstarmumu_Belle_2(params)
    C = B_coeff(params)
    p1 = params_BRS7_BKstarmumu_Belle_2()
    return compute_Pprime_Belle_2(C, p1)
end

function P8p_BKstarmumu_Belle_2(params)
    C = B_coeff(params)
    p1 = params_BRS8_BKstarmumu_Belle_2()
    return compute_Pprime_Belle_2(C, p1)
end


function BR_Knunu(params)
    C = B_coeff2(params)
    p = params_BR_Knunu()
    return compute_BRnunu(C, p)
end

function BR_Ksnunu(params)
    C = B_coeff2(params)
    p = params_BR_Ksnunu()
    return compute_BRnunu(C, p)
end

#------------------------------------------------------------------------------

function compute_P_Belle(C, p1, x)
    S2s = compute_BR(C, params_BRS2s_BKstarmumu_Belle())
    return compute_BR(C, p1)/(x*S2s)
end

function compute_P_Belle_1(C, p1, x)
    S2s = compute_BR(C, params_BRS2s_BKstarmumu_Belle_1())
    return compute_BR(C, p1)/(x*S2s)
end

function compute_P_Belle_2(C, p1, x)
    S2s = compute_BR(C, params_BRS2s_BKstarmumu_Belle_2())
    return compute_BR(C, p1)/(x*S2s)
end

function compute_Pprime_Belle(C, p1)
    S2s = compute_BR(C, params_BRS2s_BKstarmumu_Belle())
    S2c = compute_BR(C, params_BRFL_BKstarmumu_Belle())

    return compute_BR(C, p1)/(2. * sqrt(abs(S2s * S2c)))
end

function compute_Pprime_Belle_1(C, p1)
    S2s = compute_BR(C, params_BRS2s_BKstarmumu_Belle_1())
    S2c = compute_BR(C, params_BRFL_BKstarmumu_Belle_1())

    return compute_BR(C, p1)/(2. * sqrt(abs(S2s * S2c)))
end

function compute_Pprime_Belle_2(C, p1)
    S2s = compute_BR(C, params_BRS2s_BKstarmumu_Belle_2())
    S2c = compute_BR(C, params_BRFL_BKstarmumu_Belle_2())

    return compute_BR(C, p1)/(2. * sqrt(abs(S2s * S2c)))
end
#=
function compute_BRnunu(C, p)
    BR = ( p[1] + 3 * p[2] * C[1] + 3 * p[3] * C[2]
    + 3 * p[4] * C[1] * C[1] + 3 * p[5] * C[1] * C[2] + 3 * p[6] * C[2] * C[2]
    )
    return BR
end
=#
function compute_BRnunu(C, p)
    Xs = 1.469 / 0.223
    BR = ( p[1] * abs( C[1] - Xs) / Xs
    )
    return BR
end

#------------------------------------------------------------------------------
function params_BR_BXsll_low1()
    # SM, C7, C8, C9, C10 + quadratic terms
    return [ 9.429824363282286e-07,
     -1.3126421582620103e-07, -1.8622621185704055e-08, 8.504962186783876e-08, -1.319798242058443e-07, 7.92103264286091e-08, -1.2488546176872396e-07,
     8.049881779871588e-07, 3.019139928046787e-07, 9.411617591435554e-08, 0.0, 9.067471699891507e-08, -1.0587911840678754e-22,
     3.157334340214839e-08, 1.835007987625852e-08, 0.0, 1.7879016225053454e-08, 1.0587911840678754e-22,
     1.574271190519017e-08, 0.0, 0.0, -1.0587911840678754e-22,
     1.4970739459548105e-08, 0.0, -1.0587911840678754e-22,
     1.576001445772234e-08, 1.0587911840678754e-22,
     1.4912860316927665e-08
     ]
end

function params_BR_BXsll_low2()
    # SM, C7, C8, C9, C10 + quadratic terms
    return [ 7.639652769280364e-07,
    2.7726069130851973e-07, 5.5413756459559324e-08, 8.300327153723615e-08, -1.1564862362915504e-07, 8.068273900636698e-08, -1.1345492814628019e-07,
    2.684299491623336e-07, 1.0311581359434332e-07, 6.715453849277117e-08, 0.0, 6.717342482234503e-08, 2.117582368135751e-22,
    1.0914939581609726e-08, 1.3131072011629534e-08, 0.0, 1.3133620777428559e-08, 2.117582368135751e-22,
    1.3745716154633274e-08, 0.0, 0.0, 2.117582368135751e-22,
    1.3541522986066222e-08, 0.0, 0.0,
    1.3809868223255849e-08, 2.117582368135751e-22,
    1.3547913998555189e-08
    ]
end

function params_BR_BXsll_FB_low1()
    # SM, C7, C8, C9, C10 + quadratic terms
    return [ -7.602441856882815e-08,
     3.6702153672207317e-07, 6.745681121245215e-08, 1.6066478411618308e-08, 8.702191194874811e-09, 1.5271909612758636e-08, 9.454310270318157e-09,
     2.6469779601696886e-23, -1.3234889800848443e-22, -5.293955920339377e-23, -4.3968263043404895e-08, 0.0, -4.368550918792959e-08,
     1.3234889800848443e-23, -2.6469779601696886e-23, -8.074484378888642e-09, -5.293955920339377e-23, -8.035861674034996e-09,
     0.0, -2.6469779601696886e-23, -3.837070303364955e-09, -2.6469779601696886e-23,
     2.6469779601696886e-23, 0.0, -3.6473077266525005e-09,
     0.0, -5.293955920339377e-23,
     2.6469779601696886e-23
     ]
end

function params_BR_BXsll_FB_low2()
    # SM, C7, C8, C9, C10 + quadratic terms
    return [ 4.9271357594393694e-08,
     2.738151580382199e-07, 5.131597362023504e-08, 2.394682188857476e-08, -6.214115427348436e-09, 2.3707964848013055e-08, -5.553096913048992e-09,
     -6.617444900424222e-24, -2.2904283514654888e-11, -6.617444900424222e-24, -3.2302904911259456e-08, 1.3234889800848443e-22, -3.3090891078275694e-08,
     -1.9600772146659557e-12, -3.3087224502121107e-23, -6.0737070122390714e-09, 0.0, -6.181341820989232e-09,
     1.9852334701272664e-23, 0.0, -5.71909019354077e-09, 1.9852334701272664e-23,
     0.0, 1.3234889800848443e-23, -5.662045256024998e-09,
     1.3234889800848443e-23, 6.617444900424222e-24,
     -6.617444900424222e-24
     ]
end

function params_BR_BXsll_FB_high()
    # SM, C7, C8, C9, C10 + quadratic terms
    return [ -1.9712742662480806e-08,
     -1.5585399427803514e-08, 8.795601387907496e-10, -4.0053077419884e-09, 2.2701089498343064e-09, -4.347688610021068e-09, 2.6189804197967603e-09,
     6.486238685439117e-10, -1.486289738768697e-10, 3.30671352532617e-10, 1.9223519453659964e-09, -3.588549613913385e-12, 2.039729630072545e-09,
     6.924164655789692e-11, -9.693395487126871e-11, -1.7592251392310523e-10, -7.846110062253499e-11, -2.0870824637403978e-10,
     2.5485591776229416e-10, -4.1629046037391955e-10, 6.379999902857353e-10, -3.4363882844655297e-10,
     1.7171540923338548e-10, -3.1587073527117765e-10, 6.660484017983797e-10,
     1.9575906346944582e-10, -3.238964943382186e-10,
     1.6280877443098846e-10
     ]
end
#= Belle II, q^2 = 4.0 - 6.0 =#

#Observables B -> K* mu mu
function params_BR_BKstarmumu_Belle()
    # SM, C7, C8, C9, C10 + quadratic terms
    return [ 5.018863335259772e-08,
     1.9879042861744238e-08, 3.7739464931936096e-09, 1.061854854616096e-08, -1.5566412684645307e-08,
     2.1456210760563137e-08, 7.693964805568068e-09, 1.00900911448005e-08, 1.3234889800848443e-23,
     7.459186725689284e-10, 1.8679420953808286e-09, 0.0,
     1.867605097356978e-09, -1.3234889800848443e-23,
     1.858147731671963e-09 ]
end

function params_BRFL_BKstarmumu_Belle()
    # SM, C7, C8, C9, C10 + quadratic terms
    return [ 3.569869290341783e-08,
     9.49308641187975e-09, 1.978490422502483e-09, 8.464403022355612e-09, -9.51154846325952e-09,
     1.42810716723292e-09, 5.936138921111384e-10, 2.546720875418404e-09, 0.0,
     6.533934740289349e-11, 5.292993103571107e-10, 6.617444900424222e-24,
     1.1353844048556627e-09, 0.0,
     1.1353844048556429e-09 ]
end

function params_BRS3_BKstarmumu_Belle()
    # SM, C7, C8, C9, C10 + quadratic terms
    return [ -1.242240939350347e-09,
     -1.292851488039826e-09, -2.3210737209928514e-10, -3.0528810489583606e-10, 4.37412591155048e-10,
     -2.927447106032579e-10, -1.1324591848766281e-10, -3.2936815812440823e-10, 4.1359030627651384e-25,
     -1.1623333958184501e-11, -6.018323581745558e-11, -4.1359030627651384e-25,
     -5.221352090075557e-11, 0.0,
     -5.221352090075392e-11 ]
end

function params_BRS4_BKstarmumu_Belle()
    # SM, C7, C8, C9, C10 + quadratic terms
    return [ -1.1252479270771974e-08,
     -9.793245290059623e-09, -1.7680365131205806e-09, -2.549887725548749e-09, 4.013102395944477e-09,
     -2.688731301185193e-09, -1.0371168324595802e-09, -2.935088365106583e-09, -2.9196249978556487e-13,
     -1.0607952565072517e-10, -5.37788772149484e-10, -2.9196249978556487e-13,
     -4.790227530469118e-10, 8.417311244989197e-14,
     -4.788767717970182e-10]
end

function params_BRS5_BKstarmumu_Belle()
    # SM, C7, C8, C9, C10 + quadratic terms
    return [ -1.69205795949059e-08,
     -2.3481591003900286e-08, -4.2716686386812935e-09, -6.950441180994936e-09, 4.03958667032677e-09,
     2.6153712989667867e-14, 1.2753241837216056e-13, -5.0063654608099173e-14, 5.605943687401081e-09,
     0.0, -6.082480306512115e-13, 1.019809965496974e-09,
     0.0, 1.6593349766866318e-09,
     0.0]
end

function params_BRS7_BKstarmumu_Belle()
    # SM, C7, C8, C9, C10 + quadratic terms
    return [ -6.716669441298882e-10,
     5.169878828456423e-26, 7.913059104088526e-10, -1.0339757656912846e-25, 1.6035247605957084e-10,
     -1.0339757656912846e-25, 0.0, 3.101927297073854e-25, -1.0339757656912846e-25,
     1.0339757656912846e-25, -1.0339757656912846e-25, -1.8891485305862358e-10,
     1.0339757656912846e-25, 0.0,
     1.0339757656912846e-25]
end

function params_BRS8_BKstarmumu_Belle()
    # SM, C7, C8, C9, C10 + quadratic terms
    return [ -2.5403764639388617e-10,
     -1.720883853400761e-10, 3.7888147794491176e-10, -8.073450643905164e-11, -2.5849394142282115e-26,
     2.0025127497249666e-15, -2.0025127497766654e-15, -3.57479197715797e-15, -5.169878828456423e-26,
     4.120456021744652e-12, 9.418275696036051e-11, -5.169878828456423e-26,
     -5.169878828456423e-26, 5.169878828456423e-26,
     5.169878828456423e-26]
end

function params_BRS9_BKstarmumu_Belle()
    # SM, C7, C8, C9, C10 + quadratic terms
    return [ -3.545409384124169e-11,
     -2.311142226840436e-11, 5.286682934758515e-11, -1.0008463112833742e-11, -3.2311742677852644e-27,
     -1.1686757380294111e-15, -1.7882840468411887e-16, 4.52364397489937e-26, -6.462348535570529e-27,
     4.770183660673184e-13, 1.097221690651477e-11, -6.462348535570529e-27,
     -8.504347311681892e-16, 6.462348535570529e-27,
     6.462348535570529e-27]
end

function params_BRS2s_BKstarmumu_Belle()
    # SM, C7, C8, C9, C10 + quadratic terms
    return [ 3.4948832885554108e-09,
    2.530397720563918e-09, 4.360978955385674e-10, 5.029336623650442e-10, -1.4807820499676146e-09,
    4.933328883468176e-09, 1.748975667571398e-09, 1.8517325109591713e-09, -1.594602064264384e-15,
    1.675683926939967e-10, 3.2834735242759145e-10, -1.594602064264384e-15,
    1.767724713150675e-10, -2.0679515313825692e-24,
    1.7666406630310673e-10]
end

function params_BRS6s_BKstarmumu_Belle()
    # SM, C7, C8, C9, C10 + quadratic terms
    return [ 8.174394217344036e-09,
    3.1096377790791886e-08, 5.511696957158892e-09, 5.8848362226653e-09, -1.951539173535199e-09,
    0.0, -3.308722450212111e-24, -4.963083675318166e-24, -7.4238895018079905e-09,
    -3.308722450212111e-24, -8.271806125530277e-24, -1.3158519443224473e-09,
    0.0, -1.4049344958190311e-09,
    -1.6543612251060553e-24]
end


#= Belle II, q^2 = 2.5 - 4.0 =#

#Observables B -> K* mu mu
function params_BR_BKstarmumu_Belle_2()
    # SM, C7, C8, C9, C10 + quadratic terms
    return [ 4.49105457685106e-08,
     7.13322065998045e-09, 1.558375506444629e-09, 8.43373179055343e-09, -1.3690034786602486e-08,
     3.2863969242125416e-08, 1.1716843728817348e-08, 1.0229432251142507e-08, -2.447172815720876e-12,
     1.132960681576954e-09, 1.9091454500743817e-09, -2.447172815707641e-12,
     1.643679814868901e-09, -2.447172815707641e-12,
     1.6355359488597637e-09 ]
end

function params_BRFL_BKstarmumu_Belle_2()
    # SM, C7, C8, C9, C10 + quadratic terms
    return [ 3.57607178790486e-08,
     9.460417205149926e-09, 2.048991918057263e-09, 8.46734332230009e-09, -9.618763018247377e-09,
     1.4332962256508001e-09, 6.183377277400207e-10, 2.5656849347588623e-09, 6.617444900424222e-24,
     7.035801585126367e-11, 5.534350595316475e-10, 6.617444900424222e-24,
     1.1481825033121751e-09, 1.9852334701272664e-23,
     1.1481825033121818e-09 ]
end

function params_BRS3_BKstarmumu_Belle_2()
    # SM, C7, C8, C9, C10 + quadratic terms
    return [ -4.878982228477497e-10,
     -1.1903847917908065e-09, -2.1031097987137974e-10, -1.4061199196788283e-10, 2.509770539899067e-10,
     -2.3497832518091353e-10, -9.377442046420965e-11, -2.7104846938233774e-10, -2.0679515313825692e-25,
     -9.83079897043828e-12, -4.918945187863661e-11, -2.0679515313825692e-25,
     -2.9958889888167234e-11, -2.0679515313825692e-25,
     -2.995888988816641e-11 ]
end

function params_BRS4_BKstarmumu_Belle_2()
    # SM, C7, C8, C9, C10 + quadratic terms
    return [ -6.808908826696273e-09,
     -1.1022066409879823e-08, -1.955260025450647e-09, -1.4344150581830163e-09, 3.232854621215972e-09,
     -3.3362824039089023e-09, -1.31034934480187e-09, -3.417403283173395e-09, 3.427486545056051e-14,
     -1.3594720100172158e-10, -6.21299743855378e-10, 8.271806125530277e-25,
     -3.859027511947637e-10, -8.271806125530277e-25,
     -3.859027511947645e-10]
end

function params_BRS5_BKstarmumu_Belle_2()
    # SM, C7, C8, C9, C10 + quadratic terms
    return [ -8.668426916740791e-09,
     -2.800087108141583e-08, -5.060104503861502e-09, -5.715374814833571e-09, 2.0694835912187103e-09,
     7.808257297547896e-14, 2.7453588954845726e-13, -6.828990063949245e-14, 6.684855534780743e-09,
     1.6543612251060553e-24, -1.6543612251060553e-24, 1.2080396294706843e-09,
     0.0, 1.364477604825884e-09,
     3.308722450212111e-24]
end

function params_BRS7_BKstarmumu_Belle_2()
    # SM, C7, C8, C9, C10 + quadratic terms
    return [ -8.96519570969662e-10,
     -1.0339757656912846e-25, 1.089402981985432e-09, 1.0339757656912846e-25, 2.1403336027959864e-10,
     1.0339757656912846e-25, -1.0339757656912846e-25, -1.0339757656912846e-25, 1.0339757656912846e-25,
     3.101927297073854e-25, -2.0679515313825692e-25, -2.6008197532237473e-10,
     1.0339757656912846e-25, -4.1359030627651384e-25,
     3.101927297073854e-25]
end

function params_BRS8_BKstarmumu_Belle_2()
    # SM, C7, C8, C9, C10 + quadratic terms
    return [ -2.9583937651684844e-10,
     -2.8584219811367727e-10, 5.061472673277171e-10, -1.0628274175875376e-10, 2.5849394142282115e-26,
     -6.303477133364706e-15, 3.148313214919397e-16, -7.861177328144061e-15, 0.0,
     6.594267308186908e-12, 1.294513034419689e-10, 0.0,
     5.169878828456423e-26, -1.0339757656912846e-25,
     0.0]
end

function params_BRS9_BKstarmumu_Belle_2()
    # SM, C7, C8, C9, C10 + quadratic terms
    return [ -3.301335584401232e-11,
     -2.2212798274966923e-11, 5.655426961115725e-11, -8.692139535661156e-12, 3.2311742677852644e-27,
     9.355020874294754e-16, -2.7882799571007978e-15, -3.935870804925779e-15, 0.0,
     5.477509492137031e-13, 1.0739930555671402e-11, 0.0,
     2.010646868031547e-15, -1.2924697071141057e-26,
     0.0]
end

function params_BRS2s_BKstarmumu_Belle_2()
    # SM, C7, C8, C9, C10 + quadratic terms
    return [ 2.0949908144620696e-09,
    -6.154776025870596e-10, -1.3004502847779594e-10, -5.1959927244228136e-11, -9.6635099195937e-10,
    7.682752454784252e-09, 2.7128981822354955e-09, 1.8626393869968894e-09, -3.0803274523386955e-16,
    2.5916376396011474e-10, 3.289745763268115e-10, 0.0,
    1.1535238979495073e-10, 8.271806125530277e-25,
    1.1535238979494908e-10]
end

function params_BRS6s_BKstarmumu_Belle_2()
    # SM, C7, C8, C9, C10 + quadratic terms
    return [ -1.0410284625218487e-09,
    3.139646314011382e-08, 5.5437454009775254e-09, 3.8592566336441684e-09, 2.4853313546659374e-10,
    -3.9291079096268815e-24, -1.4475660719677984e-24, -4.756288522179909e-24, -7.495531301681452e-09,
    -1.0339757656912846e-24, 3.5155176033503676e-24, -1.3235031282389533e-09,
    -1.4475660719677984e-24, -9.213515156024914e-10,
    6.203854594147708e-25]
end


#= Belle II, q^2 = 1.1 - 2.5 =#

#Observables B -> K* mu mu
function params_BR_BKstarmumu_Belle_1()
    # SM, C7, C8, C9, C10 + quadratic terms
    return [ 4.65648887643249e-08,
     -2.4495637050979422e-08, -3.982090809286348e-09, 6.632914106128338e-09, -1.2068845478462109e-08,
     6.078521929162557e-08, 2.1542591001140234e-08, 1.0317095584828233e-08, 0.0,
     2.067703152822674e-09, 1.9508349926160555e-09, 0.0,
     1.4498923018488018e-09, 0.0,
     1.4406464934483268e-09 ]
end

function params_BRFL_BKstarmumu_Belle_1()
    # SM, C7, C8, C9, C10 + quadratic terms
    return [ 3.540773837309226e-08,
     9.34134081716816e-09, 2.1325328579011605e-09, 8.37678046377411e-09, -9.562409509285641e-09,
     1.4194601831548428e-09, 6.441112709962814e-10, 2.5457812741539608e-09, -1.9852334701272664e-23,
     7.672031566542749e-11, 5.776064129140568e-10, -6.617444900424222e-24,
     1.1414556390712043e-09, -6.617444900424222e-24,
     1.141455639071191e-09 ]
end

function params_BRS3_BKstarmumu_Belle_1()
    # SM, C7, C8, C9, C10 + quadratic terms
    return [ 1.1048810924263225e-10,
     -1.2938257861538243e-09, -2.2473191877756923e-10, -3.149816099210246e-11, 1.2549961357315547e-10,
     -1.9169021712365864e-10, -8.002739085107883e-11, -2.3117897879011782e-10, 4.911384887033602e-25,
     -8.636489915020154e-12, -4.154616221404691e-11, 5.182685310535435e-15,
     -1.4975890706894026e-11, -1.1541205461466109e-14,
     -1.4974180547842906e-11 ]
end

function params_BRS4_BKstarmumu_Belle_1()
    # SM, C7, C8, C9, C10 + quadratic terms
    return [ -1.1808374688394922e-09,
     -1.3589263981713014e-08, -2.3491580645266043e-09, -1.1266666887447006e-11, 2.3639160180816514e-09,
     -4.476478331860429e-09, -1.808457774773772e-09, -4.329471520753316e-09, 1.7302189526539982e-13,
     -1.9075708169370182e-10, -7.787371215206185e-10, -6.302509536692502e-14,
     -2.821746230732508e-10, -2.006776956813904e-14,
     -2.8214311052556597e-10]
end

function params_BRS5_BKstarmumu_Belle_1()
    # SM, C7, C8, C9, C10 + quadratic terms
    return [ 2.5389127394288492e-09,
     -3.623045379564819e-08, -6.488302639087846e-09, -4.25301535127789e-09, -6.061351505008335e-10,
     1.9225384550260414e-12, -3.845076910057873e-12, -4.0484666817358247e-13, 8.649129962199046e-09,
     -2.895132143935597e-24, 5.0827495976210876e-14, 1.5490049088978076e-09,
     -2.5413747986451077e-14, 1.0153627827221295e-09,
     0.0]
end

function params_BRS7_BKstarmumu_Belle_1()
    # SM, C7, C8, C9, C10 + quadratic terms
    return [ -1.2627200990674378e-09,
     2.0679515313825692e-25, 1.5881414457348246e-09, -1.0339757656912846e-25, 3.0145937093562564e-10,
     2.0679515313825692e-25, -6.203854594147708e-25, 0.0, 0.0,
     8.271806125530277e-25, 0.0, -3.791498381482933e-10,
     0.0, 0.0,
     2.0679515313825692e-25]
end

function params_BRS8_BKstarmumu_Belle_1()
    # SM, C7, C8, C9, C10 + quadratic terms
    return [ -3.2022406091845136e-10,
     -5.498984917634213e-10, 7.04135017422272e-10, -1.4775272496461215e-10, 0.0,
     0.0, 0.0, -6.075424718525154e-14, 5.169878828456423e-26,
     1.1604123212480287e-11, 1.8730622971725028e-10, 1.0339757656912846e-25,
     3.037712359272917e-14, 1.550963648536927e-25,
     -5.169878828456423e-26]
end

function params_BRS9_BKstarmumu_Belle_1()
    # SM, C7, C8, C9, C10 + quadratic terms
    return [ -3.659836786242216e-11,
     -2.13477027905827e-11, 6.644571650106134e-11, -7.661493577358065e-12, 0.0,
     9.693522803355793e-26, -6.462348535570529e-27, 3.2311742677852644e-26, 0.0,
     6.340310622515668e-13, 1.0340766470429214e-11, 6.462348535570529e-27,
     -1.9387045606711586e-26, 6.462348535570529e-27,
     0.0]
end

function params_BRS2s_BKstarmumu_Belle_1()
    # SM, C7, C8, C9, C10 + quadratic terms
    return [ 2.3724662144683722e-09,
    -8.184684374362482e-09, -1.4835293112177548e-09, -4.988014455890453e-10, -5.295789817664601e-10,
    1.4220212785266184e-08, 5.004549707751425e-09, 1.8429182383961494e-09, 0.0,
    4.766306766500459e-10, 3.24389330097437e-10, 1.7265285285124887e-13,
    6.321533442840922e-11, 3.4130768387015675e-13,
    6.32153344284088e-11]
end

function params_BRS6s_BKstarmumu_Belle_1()
    # SM, C7, C8, C9, C10 + quadratic terms
    return [ -8.567114713230167e-09,
    3.127821636516566e-08, 5.504701346280148e-09, 2.1299522982430977e-09, 2.045296510359719e-09,
    -4.963083675318166e-24, 0.0, -4.963083675318166e-24, -7.467301293766508e-09,
    0.0, 2.2809631523620007e-13, -1.3141818256188865e-09,
    -1.6543612251060553e-24, -5.085007203302328e-10,
    1.6543612251060553e-24]
end

#=
function params_BR_Ksnunu()
    return [  1.026147458796996e-05,
    -1.0685527391796023e-06, 7.015008876629967e-07,
    8.345328051683246e-08, -1.1084561737974906e-07, 9.15972824474589e-08
    ]
end

function params_BR_Knunu()
    return [  4.392754460596974e-06,
    -4.574283911317376e-07, -4.574283911317376e-07,
    3.5724862650006426e-08, 7.144972530001031e-08, 3.5724862650006426e-08
    ]
end
=#

function params_BR_Ksnunu()
    return [  1.026147458796996e-05,
    -1.0685527391796023e-06,
    8.345328051683246e-08
    ]
end

function params_BR_Knunu()
    return [  4.392754460596974e-06,
    -4.574283911317376e-07,
    3.5724862650006426e-08
    ]
end

############################################
