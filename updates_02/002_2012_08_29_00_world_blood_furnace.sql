SET @GUID := 3080; -- 149 // 4.x

-- Delete old data before inserting new data. This could make trouble later on.
DELETE `creature_addon` FROM `creature_addon` INNER JOIN `creature` ON `creature`.`guid`=`creature_addon`.`guid` WHERE `map`=542;
DELETE `creature_formations` FROM `creature_formations` INNER JOIN `creature` ON `creature`.`guid`=`creature_formations`.`memberGUID` OR `creature`.`guid`=`creature_formations`.`leaderGUID` WHERE `map`=542;
DELETE `linked_respawn` FROM `linked_respawn` INNER JOIN `creature` ON `creature`.`guid`=`linked_respawn`.`linkedGuid` WHERE `map`=542;


-- CREATURE_TEMPLATE
-- Trash
UPDATE `creature_template` SET `speed_walk`=1.1 WHERE `entry`=17624;
UPDATE `creature_template` SET `AIName`='' WHERE `entry`=17398;
-- Broggok
UPDATE `creature_template` SET `unit_flags`=`unit_flags`|256|512|2 WHERE `entry` IN(17380,18601);

-- CREATURE
DELETE FROM `creature` WHERE `guid` BETWEEN @GUID AND @GUID+148 OR `map`=542;
INSERT INTO `creature`(`guid`,`id`,`map`,`spawnMask`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`curhealth`,`curmana`,`MovementType`) VALUES 
(@GUID+88,17414,542,3,317.15,189.009,10.0509,1.88412,7200,10472,5875,0),
(@GUID+92,17414,542,3,436.311,198.522,11.4389,1.34468,7200,10472,5875,0),
(@GUID+91,17414,542,3,345.706,198.519,11.139,1.6879,7200,10472,5875,0),
(@GUID+96,17398,542,3,379.741,192.233,9.59787,3.36158,7200,7210,0,0),
(@GUID+103,17414,542,3,448.428,190.764,9.6054,1.01795,7200,10472,5875,0),
(@GUID+97,17395,542,3,373.636,184.777,9.59848,1.15697,7200,10472,17625,0),
(@GUID+95,17371,542,3,371.98,194.243,9.59956,5.36434,7200,10472,5875,0),
(@GUID+94,17491,542,3,480.502,180.017,9.61526,3.42991,7200,7479,0,0),
(@GUID+26,17398,542,3,412.728,85.7323,9.65141,0.141552,7200,6963,0,0),
(@GUID+125,17477,542,3,485.76,8.63405,9.54898,1.43024,7200,4126,9944,0),
(@GUID+68,17371,542,3,327.262,30.5611,9.61686,4.68833,7200,10472,5875,2),
(@GUID+124,17477,542,3,490.168,11.6964,9.54898,1.13336,7200,4126,9944,0),
(@GUID+123,17477,542,3,489.518,5.51373,9.54353,1.96038,7200,4126,9944,0),
(@GUID+122,17371,542,3,494.46,7.58925,9.54249,2.87616,7200,10472,5875,0),
(@GUID+112,17414,542,3,479.898,98.2961,9.62183,6.09707,7200,10472,5875,0),
(@GUID+120,17491,542,3,433.6,-18.2301,9.55216,0.450845,7200,7479,0,0),
(@GUID+126,17477,542,3,484.202,13.9732,9.5505,6.25258,7200,4126,9944,0),
(@GUID+128,17371,542,3,465.905,-19.9126,9.55319,5.19624,7200,10472,5875,2),
(@GUID+129,17371,542,3,476.506,-63.3028,9.54636,0,7200,10472,5875,2),
(@GUID+131,17491,542,3,495.566,-43.8895,9.5591,2.9343,7200,7479,0,0),
(@GUID+46,17477,542,3,-10.8822,-85.2033,-41.3341,2.09342,7200,4126,9944,0),
(@GUID+55,17397,542,3,224.587,-96.0037,9.61879,0.647748,7200,11965,2486,0),
(@GUID+54,17397,542,3,231.512,-91.5716,9.62435,3.65189,7200,11965,2486,0),
(@GUID+56,17477,542,3,227.94,-93.8952,9.61879,0.561355,7200,4126,9944,0),
(@GUID+53,17491,542,3,234.022,-106.406,9.61037,1.88867,7200,7479,0,0),
(@GUID+52,17477,542,3,28.2572,-85.4531,-41.0542,4.63284,7200,4126,9944,0),
(@GUID+59,17477,542,3,241.827,-68.3783,9.61987,1.82585,7200,4126,9944,0),
(@GUID+58,17397,542,3,242.883,-72.4289,9.61514,1.81799,7200,11965,2486,0),
(@GUID+57,17397,542,3,240.674,-64.4904,9.62484,5.05383,7200,11965,2486,0),
(@GUID+14,21174,542,3,320.912,-83.0625,-133.307,3.00197,7200,8338000,0,0),
(@GUID+136,17477,542,3,412.944,-83.971,9.61695,5.1156,7200,4126,9944,0),
(@GUID+137,17477,542,3,420.081,-88.5245,9.62061,0.206074,7200,4126,9944,0),
(@GUID+139,17491,542,3,404.193,-62.5071,9.61827,5.54913,7200,7479,0,0),
(@GUID+134,17477,542,3,432.656,-78.7667,9.62296,1.5821,7200,4126,9944,0),
(@GUID+140,17477,542,3,419.961,-76.9838,9.62318,5.67087,7200,4126,9944,0),
(@GUID+135,17477,542,3,427.911,-69.9011,9.61668,4.99622,7200,4126,9944,0),
(@GUID+142,18894,542,3,355.194,-175.571,-25.5497,0.0701911,7200,14958,0,0),
(@GUID+144,18894,542,3,325.278,-191.535,-25.5078,1.49412,7200,14958,0,0),
(@GUID+145,17371,542,3,312.396,-174.925,-25.5082,6.21829,7200,10472,5875,0),
(@GUID+146,18894,542,3,312.116,-179.382,-25.5071,6.20258,7200,14958,0,0),
(@GUID+147,18894,542,3,313.392,-170.618,-25.5086,6.20651,7200,14958,0,0),
(@GUID+78,17371,542,3,331.268,69.7599,9.61402,1.77024,7200,10472,5875,0),
(@GUID+70,17397,542,3,313.949,13.7401,9.61652,4.38997,7200,11965,2486,0),
(@GUID+69,17395,542,3,311.261,7.92634,9.62195,0.656179,7200,10472,17625,0),
(@GUID+71,17397,542,3,317.184,8.72084,9.6192,2.67896,7200,11965,2486,0),
(@GUID+75,17491,542,3,314.564,-7.67602,9.6169,2.30511,7200,7479,0,0),
(@GUID+77,17370,542,3,331.076,28.8939,9.62118,4.2576,7200,14958,0,0),
(@GUID+73,17395,542,3,338.84,8.10661,9.61679,5.05086,7200,10472,17625,0),
(@GUID+72,17395,542,3,338.242,1.09978,9.61664,1.01391,7200,10472,17625,0),
(@GUID+25,17398,542,3,413.285,81.8238,9.65038,0.154642,7200,6963,0,0),
(@GUID+24,17398,542,3,500.076,84.7778,9.65474,3.08941,7200,6963,0,0),
(@GUID+23,17398,542,3,502.724,82.8731,9.65935,3.08941,7200,6963,0,0),
(@GUID+22,17398,542,3,498.962,83.0695,9.6524,3.08941,7200,6963,0,0),
(@GUID+21,17398,542,3,498.393,86.641,9.65219,3.19309,7200,6963,0,0),
(@GUID+104,17414,542,3,327.172,188.393,9.61882,1.09492,7200,10472,5875,0),
(@GUID+27,17398,542,3,409.226,83.2983,9.65786,0.141552,7200,6963,0,0),
(@GUID+28,17398,542,3,412.081,112.626,9.65613,6.1865,7200,6963,0,0),
(@GUID+29,17398,542,3,412.462,116.555,9.65317,6.1865,7200,6963,0,0),
(@GUID+30,17398,542,3,411.735,114.446,9.65571,0.00803471,7200,6963,0,0),
(@GUID+31,17398,542,3,409.699,113.048,9.65731,0.0185067,7200,6963,0,0),
(@GUID+32,17398,542,3,407.17,115.172,9.66061,0.0185067,7200,6963,0,0),
(@GUID+33,17398,542,3,495.677,116.285,9.64388,3.14963,7200,6963,0,0),
(@GUID+34,17398,542,3,495.696,113.877,9.64425,3.14963,7200,6963,0,0),
(@GUID+35,17398,542,3,499.774,112.283,9.65334,3.14963,7200,6963,0,0),
(@GUID+36,17398,542,3,503.042,114.321,9.65788,3.14963,7200,6963,0,0),
(@GUID+37,17398,542,3,503.024,116.589,9.65788,3.14963,7200,6963,0,0),
(@GUID+38,17398,542,3,499.499,118.085,9.65347,3.14963,7200,6963,0,0),
(@GUID+111,17414,542,3,482.454,103.335,9.61156,5.27398,7200,10472,5875,0),
(@GUID+110,17414,542,3,458.068,92.7015,9.61519,1.89206,7200,10472,5875,0),
(@GUID+109,17414,542,3,452.317,94.5807,9.61519,0.545102,7200,10843,6015,0),
(@GUID+108,17395,542,3,457.121,99.2828,9.61496,4.44777,7200,10472,17625,0),
(@GUID+102,17370,542,3,466.171,176.663,9.6201,2.8927,7200,14958,0,2),
(@GUID+98,17371,542,3,412.814,195.493,9.60144,3.55951,7200,10472,5875,0),
(@GUID+100,17395,542,3,403.447,190.68,9.59739,0.0770466,7200,10472,17625,0),
(@GUID+99,17398,542,3,411.319,185.388,9.60154,2.28952,7200,6963,0,0),
(@GUID+101,17370,542,3,466.657,179.674,9.61915,2.88877,7200,14958,0,2),
(@GUID+76,17370,542,3,323.216,28.6452,9.62206,4.92205,7200,14958,0,0),
(@GUID+74,17397,542,3,344.219,5.00403,9.62297,3.2955,7200,11965,2486,0),
(@GUID+67,17370,542,3,286.75,-7.12364,9.33158,3.50552,7200,14958,0,0),
(@GUID+65,17370,542,3,258.511,-30.4009,6.95261,4.07258,7200,14958,0,0),
(@GUID+63,17371,542,3,246.377,-85.311,9.61661,3.04947,7200,10472,5875,2),
(@GUID+62,17477,542,3,226.371,-71.3008,9.61766,2.01394,7200,4126,9944,0),
(@GUID+60,17397,542,3,224.497,-68.0896,9.62108,5.19786,7200,11965,2486,0),
(@GUID+61,17397,542,3,227.979,-74.6894,9.61909,1.96987,7200,11965,2486,0),
(@GUID+106,17626,542,3,458.614,116.989,9.61455,3.07559,7200,14958,0,0),
(@GUID+43,17491,542,3,182.461,-68.9882,9.62108,3.98337,7200,7479,0,0),
(@GUID+42,17491,542,3,107.083,-96.6171,-14.2289,0.930522,7200,7479,0,0),
(@GUID+51,17397,542,3,27.6779,-90.5785,-40.7088,1.48496,7200,11965,2486,0),
(@GUID+82,17414,542,3,304.249,103.356,9.62076,5.61477,7200,10843,6015,0),
(@GUID+83,17371,542,3,308.919,100.519,9.62138,2.61455,7200,10472,5875,0),
(@GUID+86,17626,542,3,356.154,108.175,9.62332,4.06125,7200,14958,0,0),
(@GUID+85,17371,542,3,343.419,102.651,9.6201,5.16709,7200,10472,5875,0),
(@GUID+93,17414,542,3,346.912,193.875,9.60419,1.74602,7200,10472,5875,0),
(@GUID+115,17414,542,3,476.291,65.9018,9.60985,3.98357,7200,10472,5875,0),
(@GUID+114,17414,542,3,469.409,65.9985,9.61271,5.036,7200,10843,6015,0),
(@GUID+116,17371,542,3,472.66,59.4292,9.6097,1.58025,7200,10472,5875,0),
(@GUID+105,17624,542,3,456.429,118.903,9.61496,3.16198,7200,16023,0,0),
(@GUID+107,17626,542,3,458.704,120.842,9.61456,3.1619,7200,14958,0,2),
(@GUID+127,18894,542,3,462.905,-19.9126,9.55215,5.18053,7200,14958,0,0),
(@GUID+41,17377,542,3,325.862,-87.2087,-24.6512,5.87314,43200,34830,6156,0),
(@GUID+143,18894,542,3,333.631,-192.252,-25.5027,1.51768,7200,14958,0,0),
(@GUID+148,17371,542,3,329.584,-189.111,-25.5067,1.50511,7200,10472,5875,0),
(@GUID+132,17371,542,3,424.675,-83.9057,9.6166,0.059993,7200,10472,5875,0),
(@GUID+130,18894,542,3,475.417,-66.3289,9.54527,0,7200,14958,0,0),
(@GUID+40,18894,542,3,455.566,-79.108,9.61164,0.09548,7200,14958,0,0),
(@GUID+39,18894,542,3,455.793,-89.9999,9.60743,0.09548,7200,14958,0,0),
(@GUID+121,17371,542,3,487.933,17.2848,9.55353,4.54905,7200,10472,5875,0),
(@GUID+119,17414,542,3,445.422,63.6577,9.61209,3.54218,7200,10472,5875,0),
(@GUID+118,17371,542,3,442.237,56.965,9.61104,1.84965,7200,10472,5875,0),
(@GUID+117,17371,542,3,437.232,64.7644,9.60927,5.1656,7200,10472,5875,0),
(@GUID+113,17414,542,3,483.48,91.8948,9.62303,1.14828,7200,10472,5875,0),
(@GUID+20,17398,542,3,437.158,201.984,11.6815,4.639,7200,6963,0,0),
(@GUID+19,17398,542,3,345.078,202.309,11.6826,4.90708,7200,6963,0,0),
(@GUID+18,17398,542,3,314.478,195.642,11.6815,5.01966,7200,6963,0,0),
(@GUID+17,17381,542,3,327.17,137.816,9.61546,4.72121,43200,38722,0,0),
(@GUID+90,17370,542,3,372.443,187.252,9.59815,3.08144,7200,14958,0,2),
(@GUID+87,17491,542,3,301.987,172.031,9.61921,0.398146,7200,7479,0,0),
(@GUID+89,17370,542,3,372.443,191.252,9.59815,3.3214,7200,14958,0,2),
(@GUID+80,17626,542,3,343.075,57.8455,9.6156,0,7200,14958,0,0),
(@GUID+81,17624,542,3,327.255,54.8455,9.61645,0,7200,16023,0,2),
(@GUID+15,17414,542,3,352.426,85.7746,9.6222,6.27838,7200,10472,5875,0),
(@GUID+84,17414,542,3,346.54,96.449,9.6201,2.21792,7200,10472,5875,0),
(@GUID+16,17414,542,3,302.425,61.1739,9.61642,3.14962,7200,10472,5875,0),
(@GUID+79,17414,542,3,328.075,76.9842,9.61402,5.19851,7200,10472,5875,0),
(@GUID+133,17477,542,3,433.797,-90.9604,9.62448,1.93317,7200,4126,9944,0),
(@GUID+141,18894,542,3,355.299,-163.451,-25.5338,6.16881,7200,14958,0,0),
(@GUID+138,17477,542,3,423.255,-96.3954,9.61869,1.21688,7200,4126,9944,0),
(@GUID+66,17626,542,3,279.674,1.44232,8.11077,3.8723,7200,14958,0,0),
(@GUID+64,17626,542,3,250.468,-24.7817,6.95538,4.23202,7200,14958,0,0),
(@GUID+50,17397,542,3,29.672,-80.5135,-40.787,4.36738,7200,11965,2486,0),
(@GUID+44,17397,542,3,-12.9018,-81.3588,-41.3358,5.36252,7200,11965,2486,0),
(@GUID+47,17397,542,3,6.99569,-89.3037,-41.3305,1.28394,7200,11965,2486,0),
(@GUID+45,17397,542,3,-9.04048,-88.5931,-41.3341,1.99081,7200,11965,2486,0),
(@GUID+49,17477,542,3,8.90866,-85.0585,-41.3294,1.02944,7200,4126,9944,0),
(@GUID+48,17397,542,3,10.3856,-81.342,-41.3294,4.24882,7200,11965,2486,0),
(@GUID+9,17380,542,3,455.336,-1.82919,9.6299,1.43117,43200,30960,18468,0),
(@GUID+8,17370,542,3,7.83757,-54.6224,-41.258,1.62316,7200,14958,0,0),
(@GUID+7,17370,542,3,-4.06964,-56.7616,-41.258,1.41372,7200,14958,0,0),
(@GUID+6,17370,542,3,49.3209,-93.3478,-40.1855,2.86234,7200,14958,0,0),
(@GUID+5,17370,542,3,49.2232,-75.6242,-40.1856,2.98451,7200,14958,0,0),
(@GUID+4,17256,542,3,369.461,-118.757,-137.368,2.54818,604800,152964,1016100,0),
(@GUID+3,17256,542,3,369.15,-55.5658,-137.368,3.71755,604800,152964,1016100,0),
(@GUID+2,17256,542,3,307.784,-31.8502,-137.368,4.95674,604800,152964,1016100,0),
(@GUID+1,17256,542,3,274.133,-87.1647,-137.368,0.017453,604800,152964,1016100,0),
(@GUID+0,17256,542,3,308.203,-141.769,-137.368,1.36136,604800,152964,1016100,0);

-- GAMEOBJECT_TEMPLATE
UPDATE `gameobject_template` SET `ScriptName`='go_broggok_lever' WHERE `entry`=181982;

-- CREATURE_MODEL_INFO
-- Old modelid_other_gender 12471. Need to do this because modelid in creature uses creature_model_info, too... so it would still bug.
UPDATE `creature_model_info` SET `modelid_other_gender`=0 WHERE `modelid`=16332;

-- CREATURE_ADDON
DELETE FROM `creature_addon` WHERE `guid` BETWEEN @GUID AND @GUID+144;
INSERT INTO `creature_addon`(`guid`,`path_id`,`bytes2`) VALUES
(@GUID+0,0,4097),
(@GUID+1,0,4097),
(@GUID+2,0,4097),
(@GUID+3,0,4097),
(@GUID+4,0,4097),
(@GUID+15,856820,0),
(@GUID+63,(@GUID+63)*10,0),
(@GUID+68,(@GUID+68)*10,0),
(@GUID+81,(@GUID+81)*10,0),
(@GUID+89,(@GUID+89)*10,0),
(@GUID+90,(@GUID+90)*10,0),
(@GUID+101,(@GUID+101)*10,0),
(@GUID+102,(@GUID+102)*10,0),
(@GUID+107,(@GUID+107)*10,0),
(@GUID+128,(@GUID+128)*10,0),
(@GUID+129,(@GUID+129)*10,0);

-- CREATURE_FORMATIONS
DELETE FROM `creature_formations` WHERE `leaderGUID` BETWEEN @GUID AND @GUID+148 OR `memberGUID` BETWEEN @GUID AND @GUID+148;
INSERT INTO `creature_formations`(`leaderGUID`,`memberGUID`,`dist`,`angle`,`groupAI`) VALUES
(@GUID+81,@GUID+81,0,0,2),
(@GUID+81,@GUID+80,3,290,2),
(@GUID+107,@GUID+107,0,0,2),
(@GUID+107,@GUID+105,4,220,2),
(@GUID+107,@GUID+106,3,285,2),
(@GUID+129,@GUID+129,0,0,2),
(@GUID+129,@GUID+130,3,90,2),
(@GUID+143,@GUID+143,0,0,2),
(@GUID+143,@GUID+148,3,120,2),
(@GUID+143,@GUID+144,3,240,2),
(@GUID+146,@GUID+146,0,0,2),
(@GUID+146,@GUID+145,3,120,2),
(@GUID+146,@GUID+147,3,240,2),
(@GUID+128,@GUID+128,0,0,2),
(@GUID+128,@GUID+127,4,45,2);

-- WAYPOINT_DATA
DELETE FROM `waypoint_data` WHERE `id` BETWEEN @GUID*10 AND (@GUID+148)*10;
INSERT INTO `waypoint_data`(`id`,`point`,`position_x`,`position_y`,`position_z`) VALUES
((@GUID+63 )*10,1,247.229,-66.59,9.62258),
((@GUID+63 )*10,2,246.245,-85.1909,9.61548),
((@GUID+63 )*10,3,219.765,-84.577,9.58612),
((@GUID+63 )*10,4,246.377,-85.311,9.61661),
((@GUID+68 )*10,1,328.417,-4.58593,9.61603),
((@GUID+68 )*10,2,327.28,24.0565,9.61603),
((@GUID+81 )*10,1,327.255,54.8455,9.61346),
((@GUID+81 )*10,18,322.72,55.3961,9.6137),
((@GUID+81 )*10,17,317.328,58.7127,9.6137),
((@GUID+81 )*10,16,315.042,62.5956,9.61509),
((@GUID+81 )*10,15,312.513,72.6059,9.6179),
((@GUID+81 )*10,14,311.755,83.2112,9.6179),
((@GUID+81 )*10,13,312.519,89.5342,9.6179),
((@GUID+81 )*10,12,313.959,93.8532,9.61756),
((@GUID+81 )*10,11,317.588,98.5635,9.61631),
((@GUID+81 )*10,10,322.28,101.14,9.61572),
((@GUID+81 )*10,9,328.8,102.991,9.61528),
((@GUID+81 )*10,8,334.164,102.162,9.61808),
((@GUID+81 )*10,7,339.203,99.0606,9.61948),
((@GUID+81 )*10,6,342.812,94.2829,9.61948),
((@GUID+81 )*10,5,345.611,85.8321,9.61948),
((@GUID+81 )*10,4,344.882,74.8707,9.61869),
((@GUID+81 )*10,3,343.069,64.3213,9.61614),
((@GUID+81 )*10,2,340.959,59.932,9.61435),
((@GUID+89 )*10,1,372.443,191.252,9.59815),
((@GUID+89 )*10,2,329.021,185.273,9.61524),
((@GUID+90 )*10,1,372.443,187.252,9.59815),
((@GUID+90 )*10,2,329.021,181.273,9.61524),
((@GUID+101)*10,1,416.026,191.714,9.59825),
((@GUID+101)*10,2,466.657,179.674,9.61915),
((@GUID+102)*10,1,415.314,187.668,9.59825),
((@GUID+102)*10,2,466.171,176.663,9.6201),
((@GUID+107)*10,18,464.47,117.962,9.62),
((@GUID+107)*10,17,471.688,113.794,9.62),
((@GUID+107)*10,16,477.046,107.409,9.62),
((@GUID+107)*10,15,479.897,99.5768,9.62),
((@GUID+107)*10,14,479.897,91.2417,9.62),
((@GUID+107)*10,13,477.046,83.4093,9.62),
((@GUID+107)*10,12,471.688,77.0242,9.62),
((@GUID+107)*10,11,464.47,72.8567,9.62),
((@GUID+107)*10,10,456.261,71.4093,9.62),
((@GUID+107)*10,9,448.053,72.8567,9.62),
((@GUID+107)*10,8,440.834,77.0242,9.62),
((@GUID+107)*10,7,435.477,83.4093,9.62),
((@GUID+107)*10,6,432.626,91.2417,9.62),
((@GUID+107)*10,5,432.626,99.5768,9.62),
((@GUID+107)*10,4,435.477,107.409,9.62),
((@GUID+107)*10,3,440.834,113.794,9.62),
((@GUID+107)*10,2,448.053,117.962,9.62),
((@GUID+107)*10,1,456.261,119.409,9.62),
((@GUID+128)*10,1,475.83,-58.5353,9.5419),
((@GUID+128)*10,2,474.83,-54.6723,9.5419),
((@GUID+128)*10,3,465.9,-19.9126,9.55319),
((@GUID+128)*10,4,466.89,-23.7756,9.55319),
((@GUID+129)*10,1,482.43,-67.1466,9.56),
((@GUID+129)*10,2,486.942,-69.7513,9.56),
((@GUID+129)*10,3,490.29,-73.742,9.56),
((@GUID+129)*10,4,492.072,-78.6373,9.56),
((@GUID+129)*10,5,492.072,-83.8467,9.56),
((@GUID+129)*10,6,490.29,-88.742,9.56),
((@GUID+129)*10,7,486.942,-92.7327,9.56),
((@GUID+129)*10,8,482.43,-95.3374,9.56),
((@GUID+129)*10,9,477.3,-96.242,9.56),
((@GUID+129)*10,10,472.17,-95.3374,9.56),
((@GUID+129)*10,11,467.658,-92.7327,9.56),
((@GUID+129)*10,12,464.31,-88.742,9.56),
((@GUID+129)*10,13,462.528,-83.8467,9.56),
((@GUID+129)*10,14,462.528,-78.6373,9.56),
((@GUID+129)*10,15,464.31,-73.742,9.56),
((@GUID+129)*10,16,467.658,-69.7513,9.56),
((@GUID+129)*10,17,472.17,-67.1466,9.56),
((@GUID+129)*10,18,477.3,-66.242,9.56);

-- Revert a previous bad fix
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=17398;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN  (-85712,-85717,-85719,-85724) AND `source_type`=0;
DELETE FROM `gameobject_scripts` WHERE `id`=150441;
