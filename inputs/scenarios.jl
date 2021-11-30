if scenario == "far"
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
    
    global use_ee     = false
    global use_mumu   = false
    global use_tautau = false
    
elseif scenario == "farDY"
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
    
    global use_ee     = true
    global use_mumu   = true
    global use_tautau = true

elseif scenario == "near"
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
   
   global use_ee     = false
   global use_mumu   = false
   global use_tautau = false
   
elseif scenario == "farSM"
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
   
   global use_ee     = false
   global use_mumu   = false
   global use_tautau = false
   
elseif scenario == "clic"
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
   
   global use_ee     = false
   global use_mumu   = false
   global use_tautau = false
   
elseif scenario == "current"
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
   
   global use_ee     = false
   global use_mumu   = false
   global use_tautau = false

elseif scenario == "currentDY"
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
   
   global use_ee     = true
   global use_mumu   = true
   global use_tautau = true
   
elseif scenario == "onlynear"
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
   
   global use_ee     = false
   global use_mumu   = false
   global use_tautau = false
   
elseif scenario == "nonu"
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
   
   global use_ee     = false
   global use_mumu   = false
   global use_tautau = false
   
elseif scenario == "topnu"
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
   
   global use_ee     = false
   global use_mumu   = false
   global use_tautau = false
   
elseif scenario == "nu"
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
   
   global use_ee     = false
   global use_mumu   = false
   global use_tautau = false
end
