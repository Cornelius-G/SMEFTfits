#============= Observables ============================================#
include("observables/observables_ee.jl")
include("observables/observables_mumu.jl")
include("observables/observables_tautau.jl")

#============= Measurements ============================================#

measurements = (
    #ee
    MeasDist_ee = MeasurementDistribution(ee_dist, [15452, 22003, 69945, 304020, 1522250, 9638500, 13100500,
    2188450, 634750, 330785, 213745, 153970, 118255, 94995, 78355, 65250, 56545, 48691, 79345, 62263, 50152,
    40918, 33718, 51164, 36436, 26303, 19516, 14567, 11186, 8636, 6792, 5293, 4123, 3360, 2759, 2228, 1748,
    1528, 1234, 1059, 864, 751, 661, 793, 639, 515, 433, 374, 311, 204, 207, 156, 124, 177, 156, 86, 78, 78, 49,
    41, 43, 32, 21, 25, 15, 15, 8, 11, 6, 8, 8, 7, 3, 2, 6, 0, 1, 0, 2, 1, 0, 2, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    uncertainties = (
    stat = [1.24306074e+02, 1.48334082e+02, 2.64471170e+02, 5.51380087e+02,
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
    bg = [831.0, 1023.3, 2692.9500000000003, 10302.0, 50005.0, 321280.0, 429800.0, 72980.0,
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
    uncertainties = (stat = [402.28969661, 385.68251192, 344.18309081, 330.842863,   302.35575073,
     273.21054152, 246.20722979, 221.64837017, 204.450483,   180.68757567,
     162.58843747, 145.56098378, 129.6032407,  114.76062042, 102.42070103,
      87.46427842,  78.28154316,  67.91906949,  58.79625838,  51.33225107,
      44.48595284,  38.44476557,  31.8747549,   27.54995463,  23.9582971,
      19.72308292,  17.17556404,  14.2126704,   11.48912529,  10.34408043,
       8.42614977,   7.68114575,   5.19615242,   4.24264069,   3.60555128,
       3.31662479,   2.23606798,   2.23606798,   2.0,           1.41421356,
       1.0,           1.0,          0.0,           0.0,           0.0,
       0.0,           0.0,           0.0],
    bg = [7121.214999999992, 5933.636800000011, 4336.571999999996, 4070.8384000000046,
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
    stat = [140, 106.40, 82.49, 66.08, 53.79, 44.12, 37.93,
    31.81, 26.38, 24.25, 20.22, 23.54, 24.94, 14.25, 9.27, 6.08, 6],
    bg = [707.5961, 421.48083, 260.83565, 177.9145, 126.935, 89.8379, 71.98022, 51.2475, 36.4549, 31.7743,
    23.8511, 32.5274, 39.5603, 14.4624, 7.11048, 3.6846, 3.573], ),
    active=use_tautau
))
#============= Correlations ============================================#

correlations = (
    stat = NoCorrelation(active=true) ,
    bg = NoCorrelation(active=true) ,
)
