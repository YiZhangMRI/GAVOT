function map = viewordermap(name)
% color talbe definition source: http://www.ncl.ucar.edu/Document/Graphics/color_table_gallery.shtml
% (c) Tao Zu, 2024

if strcmp(name, 'MPL_rainbow_VO')
    map = [
0.492157	0.01232	0.999981
0.492157	0.01232	0.999981
0.484314	0.0246355	0.999905
0.476471	0.036951	0.999829
0.4686275	0.049256	0.9996775
0.460784	0.061561	0.999526
0.452941	0.073847	0.999298
0.445098	0.086133	0.99907
0.437255	0.098393	0.998767
0.429412	0.110653	0.998464
0.4215685	0.122879	0.9980845
0.413725	0.135105	0.997705
0.405882	0.1472905	0.99725
0.398039	0.159476	0.996795
0.390196	0.171613	0.9962645
0.382353	0.18375	0.995734
0.37451	0.195831	0.995128
0.366667	0.207912	0.994522
0.3627455	0.213929	0.9941905
0.358824	0.219946	0.993859
0.347059	0.2378945	0.992752
0.335294	0.255843	0.991645
0.3313725	0.261788	0.991238
0.327451	0.267733	0.990831
0.3156865	0.285443	0.989498
0.303922	0.303153	0.988165
0.3	0.3090115	0.9876835
0.296078	0.31487	0.987202
0.2843135	0.3322985	0.985644
0.272549	0.349727	0.984086
0.2686275	0.3554845	0.9835295
0.264706	0.361242	0.982973
0.252941	0.3783465	0.9811915
0.241176	0.395451	0.97941
0.233333	0.4067055	0.978129
0.22549	0.41796	0.976848
0.2215685	0.4235405	0.97618
0.217647	0.429121	0.975512
0.2058825	0.4456625	0.9733965
0.194118	0.462204	0.971281
0.1862745	0.4730575	0.9697785
0.178431	0.483911	0.968276
0.170588	0.494618	0.9667
0.162745	0.505325	0.965124
0.1588235	0.5106215	0.9643085
0.154902	0.515918	0.963493
0.1431375	0.531569	0.960937
0.131373	0.54722	0.958381
0.1235295	0.5574475	0.956586
0.115686	0.567675	0.954791
0.107843	0.57773	0.952924
0.1	0.587785	0.951057
0.0960785	0.592746	0.950096
0.092157	0.597707	0.949135
0.080392	0.6123155	0.9461445
0.068627	0.626924	0.943154
0.060784	0.636426	0.941071
0.052941	0.645928	0.938988
0.045098	0.655234	0.936834
0.037255	0.66454	0.93468
0.0333335	0.669118	0.933576
0.029412	0.673696	0.932472
0.017647	0.6871195	0.929055
0.005882	0.700543	0.925638
0.007843	0.7092275	0.923272
0.009804	0.717912	0.920906
0.017647	0.7263785	0.91847
0.02549	0.734845	0.916034
0.033333	0.7430885	0.9135285
0.041176	0.751332	0.911023
0.0490195	0.7593475	0.908448
0.056863	0.767363	0.905873
0.064706	0.7751455	0.90323
0.072549	0.782928	0.900587
0.0764705	0.78673	0.8992395
0.080392	0.790532	0.897892
0.092157	0.801577	0.893748
0.103922	0.812622	0.889604
0.111765	0.819678	0.886757
0.119608	0.826734	0.88391
0.127451	0.833539	0.8809955
0.135294	0.840344	0.878081
0.143137	0.846894	0.8751005
0.15098	0.853444	0.87212
0.1588235	0.8597345	0.8690725
0.166667	0.866025	0.866025
0.17451	0.872053	0.8629125
0.182353	0.878081	0.8598
0.190196	0.8838425	0.856622
0.198039	0.889604	0.853444
0.2019605	0.8923835	0.8518305
0.205882	0.895163	0.850217
0.217647	0.903093	0.8452805
0.229412	0.911023	0.840344
0.237255	0.9159645	0.836973
0.245098	0.920906	0.833602
0.252941	0.9255675	0.830168
0.260784	0.930229	0.826734
0.2686275	0.9346085	0.823237
0.276471	0.938988	0.81974
0.284314	0.9430825	0.816181
0.292157	0.947177	0.812622
0.3	0.950984	0.8090015
0.307843	0.954791	0.805381
0.315686	0.9583085	0.801699
0.323529	0.961826	0.798017
0.327451	0.963475	0.7961535
0.331373	0.965124	0.79429
0.3431375	0.9696315	0.788609
0.354902	0.974139	0.782928
0.362745	0.9767745	0.779066
0.370588	0.97941	0.775204
0.3784315	0.981748	0.7712835
0.386275	0.984086	0.767363
0.394118	0.9861255	0.763384
0.401961	0.988165	0.759405
0.409804	0.989905	0.7553685
0.417647	0.991645	0.751332
0.42549	0.9930835	0.7472385
0.433333	0.994522	0.743145
0.4411765	0.9956585	0.738995
0.44902	0.996795	0.734845
0.4529415	0.99725	0.732749
0.456863	0.997705	0.730653
0.4686275	0.9986155	0.7242825
0.480392	0.999526	0.717912
0.488235	0.9997535	0.7135965
0.496078	0.999981	0.709281
0.5039215	0.999905	0.704912
0.511765	0.999829	0.700543
0.519608	0.9994495	0.6961205
0.527451	0.99907	0.691698
0.535294	0.9983875	0.6872235
0.543137	0.997705	0.682749
0.5509805	0.9967195	0.6782225
0.558824	0.995734	0.673696
0.566667	0.9944465	0.669118
0.57451	0.993159	0.66454
0.582353	0.9915695	0.659912
0.590196	0.98998	0.655284
0.598039	0.9880905	0.650606
0.605882	0.986201	0.645928
0.6137255	0.984012	0.641201
0.621569	0.981823	0.636474
0.629412	0.9793355	0.631699
0.637255	0.976848	0.626924
0.645098	0.9740645	0.622101
0.652941	0.971281	0.617278
0.660784	0.9682025	0.6124085
0.668627	0.965124	0.607539
0.672549	0.963475	0.605087
0.676471	0.961826	0.602635
0.6882355	0.9564415	0.59521
0.7	0.951057	0.587785
0.707843	0.9471055	0.5827795
0.715686	0.943154	0.577774
0.7235295	0.938917	0.5727245
0.731373	0.93468	0.567675
0.739216	0.930159	0.562582
0.747059	0.925638	0.557489
0.754902	0.920836	0.5523545
0.762745	0.916034	0.54722
0.770588	0.9109535	0.5420435
0.778431	0.905873	0.536867
0.7862745	0.900518	0.5316495
0.794118	0.895163	0.526432
0.801961	0.8895365	0.521175
0.809804	0.88391	0.515918
0.817647	0.878015	0.5106215
0.82549	0.87212	0.505325
0.833333	0.86596	0.4999905
0.841176	0.8598	0.494656
0.8490195	0.853379	0.4892835
0.856863	0.846958	0.483911
0.864706	0.84028	0.4785025
0.872549	0.833602	0.473094
0.880392	0.826671	0.467649
0.888235	0.81974	0.462204
0.8960785	0.8125605	0.456724
0.903922	0.805381	0.451244
0.911765	0.7979565	0.44573
0.919608	0.790532	0.440216
0.9235295	0.78673	0.437446
0.927451	0.782928	0.434676
0.9392155	0.7711665	0.426318
0.95098	0.759405	0.41796
0.9588235	0.751275	0.4123485
0.966667	0.743145	0.406737
0.97451	0.7347895	0.401094
0.982353	0.726434	0.395451
0.990196	0.7178575	0.3897785
0.998039	0.709281	0.384106
0.9990195	0.7004895	0.378404
1	0.691698	0.372702
1	0.682697	0.366972
1	0.673696	0.361242
1	0.66449	0.3554845
1	0.655284	0.349727
1	0.645879	0.3439425
1	0.636474	0.338158
1	0.626876	0.3323485
1	0.617278	0.326539
1	0.6074925	0.3207045
1	0.597707	0.31487
1	0.5877405	0.3090115
1	0.577774	0.303153
1	0.5676315	0.2972715
1	0.557489	0.29139
1	0.547178	0.2854865
1	0.536867	0.279583
1	0.5263925	0.273658
1	0.515918	0.267733
1	0.505287	0.261788
1	0.494656	0.255843
1	0.4892835	0.252863
1	0.483911	0.249883
1	0.4675775	0.2409155
1	0.451244	0.231948
1	0.4401825	0.225947
1	0.429121	0.219946
1	0.417929	0.213929
1	0.406737	0.207912
1	0.3954215	0.2018785
1	0.384106	0.195845
1	0.372674	0.1897975
1	0.361242	0.18375
1	0.3497	0.177688
1	0.338158	0.171626
1	0.326514	0.165551
1	0.31487	0.159476
1	0.30313	0.153389
1	0.29139	0.147302
1	0.2795615	0.1412035
1	0.267733	0.135105
1	0.2558235	0.1289965
1	0.243914	0.122888
1	0.23193	0.1167705
1	0.219946	0.110653
1	0.2078955	0.1045265
1	0.195845	0.0984
1	0.1837355	0.0922665
1	0.171626	0.086133
1	0.159464	0.079993
1	0.147302	0.073853
1	0.135095	0.067707
1	0.122888	0.061561
1	0.1167705	0.058486
1	0.110653	0.055411
1	0.092253	0.046181
1	0.073853	0.036951
1	0.0615565	0.030794
1	0.04926	0.024637
1	0.0369485	0.0184785
1	0.024637	0.01232
1	0.0123185	0.00616
1	0	0
0 0 0
    ];
map = flip(map,1);

end