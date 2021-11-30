# Matching of SMEFT onto WET Coefficients at scale m_w (on both sides)
if useWET==false
    #C = [ cub, cug, cuw, cφu, cφq1, cφq3, ceu, clu, cqe, clq1, clq3 ]
    # Here, we include the running in SMEFT, computed with Wilson
    # below you find the matching conditions at the scale mW
    if SMEFT==true
        # first we do the matching, my idea is that mu is defined in the runEFTfitter file
        function run_SMEFT_mt_mt(params)
            cub = params.CuB[1]
            cug = params.CuG[1] #*0 # REMOVE!!!!
            cuw = params.CuW[1]
            cφu = params.Cφu[1] #*0 # REMOVE!!!!
            cφq1 = params.Cφq1[1]
            cφq3 = params.Cφq3[1]
            ceu = params.Ceu[1]
            clu = params.Clu[1]
            cqe = params.Cqe[1]
            clq1 = params.Clq1[1]
            clq3 = params.Clq3[1]

            C = [ cub, cug, cuw, cφu, cφq1, cφq3, ceu, clu, cqe, clq1, clq3 ]
            coeff = [ cub, cug, cuw, cφu, cφq1, cφq3, ceu, clu, cqe, clq1, clq3 ]

            return coeff
        end
        function run_SMEFT_1TeV_mt(params)
            cub = params.CuB[1]
            cug = params.CuG[1] #*0 # REMOVE!!!!
            cuw = params.CuW[1]
            cφu = params.Cφu[1] #*0 # REMOVE!!!!
            cφq1 = params.Cφq1[1]
            cφq3 = params.Cφq3[1]
            ceu = params.Ceu[1]
            clu = params.Clu[1]
            cqe = params.Cqe[1]
            clq1 = params.Clq1[1]
            clq3 = params.Clq3[1]

            ctg = 1.022 * cug  - 0.0142 * cub   - 0.046 * cuw
            ctw = -0.0205 * cug + 0.0006 * cub + 0.886 * cuw
            ctb = -0.0189 * cug + 0.89 * cub  + 0.00177 * cuw
            Cφu = 0.01350 * cφq1 + 0.88 * cφu -0.00121 * ceu + 0.0011 *  cφq3
            Cφq1 = 0.915 * cφq1 + 0.006702 * cφu + 0.075 * cφq3
            Cφq3 = 0.947 * cφq3 + 0.000183 * cφu + 0.025 * cφq1 - 0.003 * clq3
            Clu = 0.00049 * cφu + 0.97 * clu + 0.00124 * ceu + 0.0016 * clq1
            Ceu = 0.000998 * cφu - 0.00187 * clu + 0.989 * ceu -0.0212 * cqe
            Cqe = -0.0000120 * cφu +0.008 * ceu + 1.017 * cqe + 0.00092 *  cφq1 - 0.00188 * clq1
            Clq1 = 0.992 * clq1 - 0.041 * clq3 + 0.00046 *  cφq1 - 0.000013 *  cφu  + 0.008 * clu
            Clq3 = 1.008 * clq3 - 0.014 * clq1 - 0.0016 *  cφq3

            coeff = [ ctb, ctg, ctw, Cφu, Cφq1, Cφq3, Ceu, Clu, Cqe, Clq1, Clq3 ]

            return coeff
        end
        # For the coefficients we simply take results from wilson
        function run_SMEFT_mt_mW(params)
            cub = params.CuB[1]
            cug = params.CuG[1] #*0 # REMOVE!!!!
            cuw = params.CuW[1]
            cφu = params.Cφu[1] #*0 # REMOVE!!!!
            cφq1 = params.Cφq1[1]
            cφq3 = params.Cφq3[1]
            ceu = params.Ceu[1]
            clu = params.Clu[1]
            cqe = params.Cqe[1]
            clq1 = params.Clq1[1]
            clq3 = params.Clq3[1]

            coeff = [ cub, cug, cuw, cφu, cφq1, cφq3, ceu, clu, cqe, clq1, clq3 ]

            coeff[1] = 0.949 * cub - 0.009 * cug + 0.0007 * cuw
            coeff[2] = -0.0068 * cub + 1.011 * cug - 0.023 * cuw
            coeff[3] = 0.00023 * cub - 0.009 * cug + 0.96 * cuw
            coeff[4] = cφu
            coeff[5] = cφq1
            coeff[6] = cφq3
            coeff[7] = ceu
            coeff[8] = clu
            coeff[9] = cqe
            coeff[10] = clq1
            coeff[11] = clq3

            return coeff
        end

        function run_SMEFT_1TeV_mW(params)
            cub = params.CuB[1]
            cug = params.CuG[1] #*0 # REMOVE!!!!
            cuw = params.CuW[1]
            cφu = params.Cφu[1] #*0 # REMOVE!!!!
            cφq1 = params.Cφq1[1]
            cφq3 = params.Cφq3[1]
            ceu = params.Ceu[1]
            clu = params.Clu[1]
            cqe = params.Cqe[1]
            clq1 = params.Clq1[1]
            clq3 = params.Clq3[1]
            # As the matching is given for cug, cub, cuw at scale mW and remaining coeffs at scale mt, we inlcude here two different runnings from 1 TeV
            # Running 1 TeV  to mW
            ctg = 1.034 * cug  - 0.0205 * cub   - 0.0676 * cuw
            ctw = -0.0299 * cug + 0.00096 * cub + 0.886 * cuw
            ctb = -0.0273 * cug + 0.853 * cub  + 0.00287 * cuw
            # Running 1 TeV to mt
            Cφu = 0.01350 * cφq1 + 0.88 * cφu -0.00121 * ceu + 0.0011 *  cφq3
            Cφq1 = 0.915 * cφq1 + 0.006702 * cφu + 0.075 * cφq3
            Cφq3 = 0.947 * cφq3 + 0.000183 * cφu + 0.025 * cφq1 - 0.003 * clq3
            Clu = 0.00049 * cφu + 0.97 * clu + 0.00124 * ceu + 0.0016 * clq1
            Ceu = 0.000998 * cφu - 0.00187 * clu + 0.989 * ceu -0.0212 * cqe
            Cqe = -0.0000120 * cφu +0.008 * ceu + 1.017 * cqe + 0.00092 *  cφq1 - 0.00188 * clq1
            Clq1 = 0.992 * clq1 - 0.041 * clq3 + 0.00046 *  cφq1 - 0.000013 *  cφu  + 0.008 * clu
            Clq3 = 1.008 * clq3 - 0.014 * clq1 - 0.0016 *  cφq3

            coeff = [ ctb, ctg, ctw, Cφu, Cφq1, Cφq3, Ceu, Clu, Cqe, Clq1, Clq3 ]

            return coeff
        end
        # This part we do with our own implementation due to bugs in wilson
        function match_C7( C )
            return  #=@.=#(  - 2.400 * C[1] + 0.09581 * C[3] - 0.09462 * C[5] + 0.7951 * C[6] )
        end
        function match_C8( C )
            return  ( - 0.6821 * C[2] + 0.2519 * C[3] + 0.2839 * C[5] + 0.756773 * C[6] )
        end
        # This part we do with wilson, cross checked with references in paper (evanescent coefficients are set to '1', as it is done in wilson )
        # Analytic formulas are given in 2012.06197 and 1512.02830 and 1903.00500 (for dipole operators MFV is the same as our 33 ansatz)
        function match_C9( C )
            return ( 2.440 * C[1] + 2.16032 * C[3]
            - 0.113 * C[4] - 32.7 * C[5] - 31.3 * C[6]
            + 1.69 * C[7] + 1.68 * C[8] + 384 * C[9]
            + 382 * C[10] + 382 * C[11]
            )
        end
        function match_C10( C )
            return ( 7.650 * C[3]
            + 1.58 * C[4] + 375 * C[5] + 393 * C[6]
            + 1.69 * C[7] - 1.68 * C[8] + 384 * C[9]
            - 383 * C[10] - 383 * C[11]
            )
        end
        function match_C1( C )
            return ( 4.402 * C[3] - 0.0554 * C[4] - 12.63 * C[5] + 12.67 * C[6]
            )
        end
        function match_CL( C )
            return (
            -2.8233 * C[3] + 1.58 * C[4] + 375 * C[5]
            + 393 * C[6]
            + 1.68 * C[8] - 0.000531 * C[9] + 388 * C[10] - 397 * C[11]
            )
        end
        function B_coeff(params)
            #C = collect(values(params))
            #println("C: ", typeof(C))

            #cub = params.CuB[1]
            #cug = params.CuG[1]
            #cuw = params.CuW[1]
            #cφqp = params.Cφqp[1]
            #cφq3 = params.Cφq3[1]
            #cqe = params.Cqe[1]
            #clqp = params.Clqp[1]
            #clq3 = params.Clq3[1]

            #C = [ cub, cug, cuw, cφqp, cφq3, cqe, clqp, clq3 ]
            if scale==172.5
                C= run_SMEFT_mt_mW(params)
            elseif scale==1000
                C= run_SMEFT_1TeV_mW(params)
            end
            C7  = match_C7(C)
            C8  = match_C8(C)
            C9  = match_C9(C)
            C10 = match_C10(C)

            return [C7, C8, C9, C10]
        end

        # WET Coefficients
        function B_coeff_mix(params)
            #C = collect(values(params))
            #println("C: ", typeof(C))

            if scale==172.5
                C= run_SMEFT_mt_mW(params)
            elseif scale==1000
                C= run_SMEFT_1TeV_mW(params)
            end

            C1  = match_C1(C)

            return [C1]
        end

        function B_coeff2(params)
            #C = collect(values(params))
            #matching from 1409.4557

            if scale==172.5
                C= run_SMEFT_mt_mW(params)
            elseif scale==1000
                C= run_SMEFT_1TeV_mW(params)
            end

            CL  = match_CL( C )
            CR  = 0 *match_CL( C )

            return [CL, CR]
        end

    end
else
    function B_coeff(params)

        C7  = params.C7[1]
        C8  = params.C8[1]
        C9  = params.C9[1]
        C10 = params.C10[1]

        return [C7, C8, C9, C10]
    end

    function B_coeff_mix(params)

        C1  = params.C1[1]

        return [C1]
    end

    function B_coeff2(params)

        CL  = params.CL[1]
        CR  = 0.0 * CL

        return [CL, CR]
    end
end
