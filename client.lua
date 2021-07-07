Citizen.CreateThread(function()
	OnEnterMp() -- required to load heist ipl?
	RequestAllIpls()
end)

Citizen.CreateThread(function()
	for k,ipl in pairs(allIpls) do
		loadInterior(ipl.coords, ipl.interiorsProps, ipl.interiorsPropColors)
	end
end)

function loadInterior(coords, interiorProps, interiorsPropColors)
	for k,coords in pairs(coords) do

		local interiorID = GetInteriorAtCoords(coords[1], coords[2], coords[3])

		if IsValidInterior(interiorID) then
			PinInteriorInMemory(interiorID)

			for index,propName in pairs(interiorProps) do
				ActivateInteriorEntitySet(interiorID, propName)
			end

			if interiorsPropColors then
				for i=1, #interiorsPropColors, 1 do
					SetInteriorEntitySetColor(interiorID, interiorsPropColors[i][1], interiorsPropColors[i][2])
				end
			end

			RefreshInterior(interiorID)
		end
	end
end

-- https://wiki.gtanet.work/index.php?title=Online_Interiors_and_locations
-- IPL list 1.0.1290: https://pastebin.com/iNGLY32D
-- Extra IPL info: https://pastebin.com/SE5t8CnE
function RequestAllIpls()
	-- Simeon: -47.162, -1115.333, 26.5
	RequestIpl('shr_int')

	-- Trevor: 1985.481, 3828.768, 32.5
	-- Trash or Tidy. Only choose one.
	RequestIpl('TrevorsTrailerTrash')
	--RequestIpl('TrevorsTrailerTidy')

	-- Vangelico Jewelry Store: -637.202, -239.163, 38.1
	RequestIpl('post_hiest_unload')

	-- Max Renda: -585.825, -282.72, 35.455
	RequestIpl('refit_unload')

	-- Heist Union Depository: 2.697, -667.017, 16.130
	RequestIpl('FINBANK')

	-- Morgue: 239.752, -1360.650, 39.534
	RequestIpl('Coroner_Int_on')
	RequestIpl('coronertrash')

	-- Cluckin Bell: -146.384, 6161.5, 30.2
	RequestIpl('CS1_02_cf_onmission1')
	RequestIpl('CS1_02_cf_onmission2')
	RequestIpl('CS1_02_cf_onmission3')
	RequestIpl('CS1_02_cf_onmission4')

	-- Grapeseed Cow Farm: 2447.9, 4973.4, 47.7
	RequestIpl('farm')
	RequestIpl('farmint')
	RequestIpl('farm_lod')
	RequestIpl('farm_props')
	RequestIpl('des_farmhouse')

	-- FIB lobby: 105.456, -745.484, 44.755
	RequestIpl('FIBlobby')

	-- Billboard: iFruit
	RequestIpl('FruitBB')
	RequestIpl('sc1_01_newbill')
	RequestIpl('hw1_02_newbill')
	RequestIpl('hw1_emissive_newbill')
	RequestIpl('sc1_14_newbill')
	RequestIpl('dt1_17_newbill')

	-- Lester's factory: 716.84, -962.05, 31.59
	RequestIpl('id2_14_during_door')
	RequestIpl('id2_14_during1')

	-- Life Invader lobby: -1047.9, -233.0, 39.0
	RequestIpl('facelobby')

	-- Tunnels
	RequestIpl('v_tunnel_hole')

	-- Carwash: 55.7, -1391.3, 30.5
	RequestIpl('Carwash_with_spinners')

	-- Stadium 'Fame or Shame': -248.492, -2010.509, 34.574
	RequestIpl('sp1_10_real_interior')
	RequestIpl('sp1_10_real_interior_lod')

	-- House in Banham Canyon: -3086.428, 339.252, 6.372
	RequestIpl('ch1_02_open')

	-- Garage in La Mesa (autoshop): 970.275, -1826.570, 31.115
	RequestIpl('bkr_bi_id1_23_door')

	-- Hill Valley church - Grave: -282.464, 2835.845, 55.914
	RequestIpl('lr_cs6_08_grave_closed')

	-- Lost's trailer park: 49.494, 3744.472, 46.386
	RequestIpl('methtrailer_grp1')

	-- Lost safehouse: 984.155, -95.366, 74.50
	RequestIpl('bkr_bi_hw1_13_int')

	-- Raton Canyon river: -1652.83, 4445.28, 2.52
	RequestIpl('CanyonRvrShallow')

	-- Zancudo Gates (GTAO like): -1600.301, 2806.731, 18.797
	RequestIpl('CS3_07_MPGates')

	-- Pillbox hospital: 356.8, -590.1, 43.3
	-- RequestIpl('RC12B_Default')
	-- RequestIpl('RC12B_Fixed')

	-- Josh's house: -1117.163, 303.1, 66.522
	RequestIpl('bh1_47_joshhse_unburnt')
	RequestIpl('bh1_47_joshhse_unburnt_lod')

	-- Zancudo River (need streamed content): 86.815, 3191.649, 30.463
	RequestIpl('cs3_05_water_grp1')
	RequestIpl('cs3_05_water_grp1_lod')
	RequestIpl('cs3_05_water_grp2')
	RequestIpl('cs3_05_water_grp2_lod')

	-- Cassidy Creek (need streamed content): -425.677, 4433.404, 27.325
	RequestIpl('canyonriver01')
	RequestIpl('canyonriver01_lod')

	-- Graffitis
	RequestIpl('ch3_rd2_bishopschickengraffiti') -- 1861.28, 2402.11, 58.53
	RequestIpl('cs5_04_mazebillboardgraffiti') -- 2697.32, 3162.18, 58.1
	RequestIpl('cs5_roads_ronoilgraffiti') -- 2119.12, 3058.21, 53.25

	-- Aircraft Carrier (USS Luxington): 3082.312 -4717.119 15.262
	RequestIpl('hei_carrier')
	RequestIpl('hei_carrier_distantlights')
	RequestIpl('hei_Carrier_int1')
	RequestIpl('hei_Carrier_int2')
	RequestIpl('hei_Carrier_int3')
	RequestIpl('hei_Carrier_int4')
	RequestIpl('hei_Carrier_int5')
	RequestIpl('hei_Carrier_int6')
	RequestIpl('hei_carrier_lodlights')
	RequestIpl('hei_carrier_slod')

	-- Galaxy Super Yacht: -2043.974,-1031.582, 11.981
	RequestIpl('hei_yacht_heist')
	RequestIpl('hei_yacht_heist_Bar')
	RequestIpl('hei_yacht_heist_Bedrm')
	RequestIpl('hei_yacht_heist_Bridge')
	RequestIpl('hei_yacht_heist_DistantLights')
	RequestIpl('hei_yacht_heist_enginrm')
	RequestIpl('hei_yacht_heist_LODLights')
	RequestIpl('hei_yacht_heist_Lounge')

	-- Bahama Mamas: -1388, -618.420, 30.820
	--RequestIpl('hei_sm_16_interior_v_bahama_milo_')

	-- Red Carpet: 300.593, 199.759, 104.378
	--RequestIpl('redCarpet')

	-- UFO
	-- Zancudo: -2052, 3237, 1457
	-- Hippie base: 2490.5, 3774.8, 2414
	-- Chiliad: 501.53, 5593.86, 796.23
	-- RequestIpl('ufo')
	-- RequestIpl('ufo_eye')
	-- RequestIpl('ufo_lod')

	--
	-- Appartments & Offices
	-- Some have multiple choices, in that case pick one
	--

	--
	-- Arcadius Business Centre: -141.29, -621, 169
	--

	-- RequestIpl('ex_dt1_02_office_01a')	-- Old Spice: Warm
	RequestIpl('ex_dt1_02_office_01b')	-- Old Spice: Classical
	-- RequestIpl('ex_dt1_02_office_01c')	-- Old Spice: Vintage

	-- RequestIpl('ex_dt1_02_office_02a')	-- Executive: Contrast
	-- RequestIpl('ex_dt1_02_office_02b')	-- Executive: Rich
	-- RequestIpl('ex_dt1_02_office_02c')	-- Executive: Cool

	-- RequestIpl('ex_dt1_02_office_03a')	-- Power Broker: Ice
	-- RequestIpl('ex_dt1_02_office_03b')	-- Power Broker: Conservative
	-- RequestIpl('ex_dt1_02_office_03c')	-- Power Broker: Polished

	--
	-- Maze Bank Building: -75.498, -827.189, 243.386
	--

	-- RequestIpl('ex_dt1_11_office_01a')	-- Old Spice: Warm
	RequestIpl('ex_dt1_11_office_01b')	-- Old Spice: Classical
	-- RequestIpl('ex_dt1_11_office_01c')	-- Old Spice: Vintage

	-- RequestIpl('ex_dt1_11_office_02b')	-- Executive: Rich
	-- RequestIpl('ex_dt1_11_office_02c')	-- Executive: Cool
	-- RequestIpl('ex_dt1_11_office_02a')	-- Executive: Contrast

	-- RequestIpl('ex_dt1_11_office_03a')	-- Power Broker: Ice
	-- RequestIpl('ex_dt1_11_office_03b')	-- Power Broker: Conservative
	-- RequestIpl('ex_dt1_11_office_03c')	-- Power Broker: Polished

	--
	-- Lom Bank: -1579.756, -565.066, 108.523
	--

	-- RequestIpl('ex_sm_13_office_01a')	-- Old Spice: Warm
	RequestIpl('ex_sm_13_office_01b')	-- Old Spice: Classical
	-- RequestIpl('ex_sm_13_office_01c')	-- Old Spice: Vintage
	-- RequestIpl('ex_sm_13_office_02a')	-- Executive: Contrast
	-- RequestIpl('ex_sm_13_office_02b')	-- Executive: Rich
	-- RequestIpl('ex_sm_13_office_02c')	-- Executive: Cool
	-- RequestIpl('ex_sm_13_office_03a')	-- Power Broker: Ice
	-- RequestIpl('ex_sm_13_office_03b')	-- Power Broker: Conservative
	-- RequestIpl('ex_sm_13_office_03c')	-- Power Broker: Polished

	--
	-- Maze Bank West: -1392.667, -480.474, 72.042
	--

	-- RequestIpl('ex_sm_15_office_01a')	-- Old Spice: Warm
	RequestIpl('ex_sm_15_office_01b')	-- Old Spice: Classical
	-- RequestIpl('ex_sm_15_office_01c')	-- Old Spice: Vintage
	-- RequestIpl('ex_sm_15_office_02b')	-- Executive: Rich
	-- RequestIpl('ex_sm_15_office_02c')	-- Executive: Cool
	-- RequestIpl('ex_sm_15_office_02a')	-- Executive: Contrast
	-- RequestIpl('ex_sm_15_office_03a')	-- Power Broker: Ice
	-- RequestIpl('ex_sm_15_office_03b')	-- Power Broker: Convservative
	-- RequestIpl('ex_sm_15_office_03c')	-- Power Broker: Polished

	--
	-- Apartment 1: -786.866, 315.764, 217.638
	--

	RequestIpl('apa_v_mp_h_01_a') -- Modern
	-- RequestIpl('apa_v_mp_h_02_a') -- Mody
	-- RequestIpl('apa_v_mp_h_03_a') -- Vibrant
	-- RequestIpl('apa_v_mp_h_04_a') -- Sharp
	-- RequestIpl('apa_v_mp_h_05_a') -- Monochrome
	-- RequestIpl('apa_v_mp_h_06_a') -- Seductive
	-- RequestIpl('apa_v_mp_h_07_a') -- Regal
	-- RequestIpl('apa_v_mp_h_08_a') -- Aqua

	--
	-- Apartment 2: -786.956, 315.622, 187.913
	--

	-- RequestIpl('apa_v_mp_h_01_c') -- Modern
	RequestIpl('apa_v_mp_h_02_c') -- Mody
	-- RequestIpl('apa_v_mp_h_03_c') -- Vibrant
	-- RequestIpl('apa_v_mp_h_04_c') -- Sharp
	-- RequestIpl('apa_v_mp_h_05_c') -- Monochrome
	-- RequestIpl('apa_v_mp_h_06_c') -- Seductive
	-- RequestIpl('apa_v_mp_h_07_c') -- Regal
	-- RequestIpl('apa_v_mp_h_08_c') -- Aqua

	--
	-- Apartment 3: -774.012, 342.042, 196.686
	--

	-- RequestIpl('apa_v_mp_h_01_b') -- Modern
	-- RequestIpl('apa_v_mp_h_02_b') -- Mody
	-- RequestIpl('apa_v_mp_h_03_b') -- Vibrant
	RequestIpl('apa_v_mp_h_04_b') -- Sharp
	-- RequestIpl('apa_v_mp_h_05_b') -- Monochrome
	-- RequestIpl('apa_v_mp_h_06_b') -- Seductive
	-- RequestIpl('apa_v_mp_h_07_b') -- Regal
	-- RequestIpl('apa_v_mp_h_08_b') -- Aqua

	--
	-- Bunkers, Biker clubhouses & Warehouses
	--

	-- Clubhouse 1: 1107.04, -3157.399, -37.519
	RequestIpl('bkr_biker_interior_placement_interior_0_biker_dlc_int_01_milo')

	-- Clubhouse 2: 998.4809, -3164.711, -38.907
	RequestIpl('bkr_biker_interior_placement_interior_1_biker_dlc_int_02_milo')

	-- Warehouse 1: 1009.5, -3196.6, -39
	RequestIpl('bkr_biker_interior_placement_interior_2_biker_dlc_int_ware01_milo')
	RequestIpl('bkr_biker_interior_placement_interior_2_biker_dlc_int_ware02_milo')
	RequestIpl('bkr_biker_interior_placement_interior_2_biker_dlc_int_ware03_milo')
	RequestIpl('bkr_biker_interior_placement_interior_2_biker_dlc_int_ware04_milo')
	RequestIpl('bkr_biker_interior_placement_interior_2_biker_dlc_int_ware05_milo')

	-- Warehouse 2: 1051.491, -3196.536, -39.148
	RequestIpl('bkr_biker_interior_placement_interior_3_biker_dlc_int_ware02_milo')

	-- Warehouse 3: 1093.6, -3196.6, -38.998
	RequestIpl('bkr_biker_interior_placement_interior_4_biker_dlc_int_ware03_milo')

	-- Warehouse 4: 1121.897, -3195.338, -40.4025
	RequestIpl('bkr_biker_interior_placement_interior_5_biker_dlc_int_ware04_milo')

	-- Warehouse 5: 1165, -3196.6, -39.013
	RequestIpl('bkr_biker_interior_placement_interior_6_biker_dlc_int_ware05_milo')

	-- Warehouse Small: 1094.988, -3101.776, -39
	RequestIpl('ex_exec_warehouse_placement_interior_1_int_warehouse_s_dlc_milo')

	-- Warehouse Medium: 1056.486, -3105.724, -39
	RequestIpl('ex_exec_warehouse_placement_interior_0_int_warehouse_m_dlc_milo')

	-- Warehouse Large: 1006.967, -3102.079, -39.0035
	RequestIpl('ex_exec_warehouse_placement_interior_2_int_warehouse_l_dlc_milo')

	-- Import / Export Garage: 994.593, -3002.594, -39.647
	RequestIpl('imp_impexp_interior_placement')
	RequestIpl('imp_impexp_interior_placement_interior_0_impexp_int_01_milo_')
	RequestIpl('imp_impexp_interior_placement_interior_1_impexp_intwaremed_milo_')
	RequestIpl('imp_impexp_interior_placement_interior_2_imptexp_mod_int_01_milo_')
	RequestIpl('imp_impexp_interior_placement_interior_3_impexp_int_02_milo_')

	-- Import / Export Garages: Interiors
	RequestIpl('imp_dt1_02_modgarage')
	RequestIpl('imp_dt1_02_cargarage_a')
	RequestIpl('imp_dt1_02_cargarage_b')
	RequestIpl('imp_dt1_02_cargarage_c')

	RequestIpl('imp_dt1_11_modgarage')
	RequestIpl('imp_dt1_11_cargarage_a')
	RequestIpl('imp_dt1_11_cargarage_b')
	RequestIpl('imp_dt1_11_cargarage_c')

	RequestIpl('imp_sm_13_modgarage')
	RequestIpl('imp_sm_13_cargarage_a')
	RequestIpl('imp_sm_13_cargarage_b')
	RequestIpl('imp_sm_13_cargarage_c')

	RequestIpl('imp_sm_15_modgarage')
	RequestIpl('imp_sm_15_cargarage_a')
	RequestIpl('imp_sm_15_cargarage_b')
	RequestIpl('imp_sm_15_cargarage_c')

	-- Bunkers: Exteriors
	RequestIpl('gr_case0_bunkerclosed') -- 848.6175, 2996.567, 45.81612
	RequestIpl('gr_case1_bunkerclosed') -- 2126.785, 3335.04, 48.21422
	RequestIpl('gr_case2_bunkerclosed') -- 2493.654, 3140.399, 51.28789
	RequestIpl('gr_case3_bunkerclosed') -- 481.0465, 2995.135, 43.96672
	RequestIpl('gr_case4_bunkerclosed') -- -391.3216, 4363.728, 58.65862
	RequestIpl('gr_case5_bunkerclosed') -- 1823.961, 4708.14, 42.4991
	RequestIpl('gr_case6_bunkerclosed') -- 1570.372, 2254.549, 78.89397
	RequestIpl('gr_case7_bunkerclosed') -- -783.0755, 5934.686, 24.31475
	RequestIpl('gr_case9_bunkerclosed') -- 24.43542, 2959.705, 58.35517
	RequestIpl('gr_case10_bunkerclosed') -- -3058.714, 3329.19, 12.5844
	RequestIpl('gr_case11_bunkerclosed') -- -3180.466, 1374.192, 19.9597

	-- Smugglers run / Doomsday interiors

	RequestIpl('xm_siloentranceclosed_x17')
	RequestIpl('sm_smugdlc_interior_placement')
	RequestIpl('sm_smugdlc_interior_placement_interior_0_smugdlc_int_01_milo_')
	RequestIpl('xm_x17dlc_int_placement')

	RequestIpl('xm_x17dlc_int_placement_interior_0_x17dlc_int_base_ent_milo_')
	RequestIpl('xm_x17dlc_int_placement_interior_1_x17dlc_int_base_loop_milo_')
	RequestIpl('xm_x17dlc_int_placement_interior_2_x17dlc_int_bse_tun_milo_')
	RequestIpl('xm_x17dlc_int_placement_interior_3_x17dlc_int_base_milo_')
	RequestIpl('xm_x17dlc_int_placement_interior_4_x17dlc_int_facility_milo_')
	RequestIpl('xm_x17dlc_int_placement_interior_5_x17dlc_int_facility2_milo_')
	RequestIpl('xm_x17dlc_int_placement_interior_6_x17dlc_int_silo_01_milo_')
	RequestIpl('xm_x17dlc_int_placement_interior_7_x17dlc_int_silo_02_milo_')
	RequestIpl('xm_x17dlc_int_placement_interior_8_x17dlc_int_sub_milo_')
	RequestIpl('xm_x17dlc_int_placement_interior_9_x17dlc_int_01_milo_')

	RequestIpl('xm_x17dlc_int_placement_interior_10_x17dlc_int_tun_straight_milo_')
	RequestIpl('xm_x17dlc_int_placement_interior_11_x17dlc_int_tun_slope_flat_milo_')
	RequestIpl('xm_x17dlc_int_placement_interior_12_x17dlc_int_tun_flat_slope_milo_')
	RequestIpl('xm_x17dlc_int_placement_interior_13_x17dlc_int_tun_30d_r_milo_')
	RequestIpl('xm_x17dlc_int_placement_interior_14_x17dlc_int_tun_30d_l_milo_')
	RequestIpl('xm_x17dlc_int_placement_interior_15_x17dlc_int_tun_straight_milo_')
	RequestIpl('xm_x17dlc_int_placement_interior_16_x17dlc_int_tun_straight_milo_')
	RequestIpl('xm_x17dlc_int_placement_interior_17_x17dlc_int_tun_slope_flat_milo_')
	RequestIpl('xm_x17dlc_int_placement_interior_18_x17dlc_int_tun_slope_flat_milo_')
	RequestIpl('xm_x17dlc_int_placement_interior_19_x17dlc_int_tun_flat_slope_milo_')

	RequestIpl('xm_x17dlc_int_placement_interior_20_x17dlc_int_tun_flat_slope_milo_')
	RequestIpl('xm_x17dlc_int_placement_interior_21_x17dlc_int_tun_30d_r_milo_')
	RequestIpl('xm_x17dlc_int_placement_interior_22_x17dlc_int_tun_30d_r_milo_')
	RequestIpl('xm_x17dlc_int_placement_interior_23_x17dlc_int_tun_30d_r_milo_')
	RequestIpl('xm_x17dlc_int_placement_interior_24_x17dlc_int_tun_30d_r_milo_')
	RequestIpl('xm_x17dlc_int_placement_interior_25_x17dlc_int_tun_30d_l_milo_')
	RequestIpl('xm_x17dlc_int_placement_interior_26_x17dlc_int_tun_30d_l_milo_')
	RequestIpl('xm_x17dlc_int_placement_interior_27_x17dlc_int_tun_30d_l_milo_')
	RequestIpl('xm_x17dlc_int_placement_interior_28_x17dlc_int_tun_30d_l_milo_')
	RequestIpl('xm_x17dlc_int_placement_interior_29_x17dlc_int_tun_30d_l_milo_')

	RequestIpl('xm_x17dlc_int_placement_interior_30_v_apart_midspaz_milo_')
	RequestIpl('xm_x17dlc_int_placement_interior_31_v_studio_lo_milo_')
	RequestIpl('xm_x17dlc_int_placement_interior_32_v_garagem_milo_')
	RequestIpl('xm_x17dlc_int_placement_interior_33_x17dlc_int_02_milo_')
	RequestIpl('xm_x17dlc_int_placement_interior_34_x17dlc_int_lab_milo_')
	RequestIpl('xm_x17dlc_int_placement_interior_35_x17dlc_int_tun_entry_milo_')

	RequestIpl('xm_x17dlc_int_placement_strm_0')
	RequestIpl('xm_bunkerentrance_door')
	RequestIpl('xm_hatch_01_cutscene')
	RequestIpl('xm_hatch_02_cutscene')
	RequestIpl('xm_hatch_03_cutscene')
	RequestIpl('xm_hatch_04_cutscene')
	RequestIpl('xm_hatch_06_cutscene')
	RequestIpl('xm_hatch_07_cutscene')
	RequestIpl('xm_hatch_08_cutscene')
	RequestIpl('xm_hatch_09_cutscene')
	RequestIpl('xm_hatch_10_cutscene')
	RequestIpl('xm_hatch_closed')
	RequestIpl('xm_hatches_terrain')
	RequestIpl('xm_hatches_terrain_lod')
	RequestIpl('xm_mpchristmasadditions')

	-- Bunkers: Interior: 892.638, -3245.866, -98.265
	--[[
	RequestIpl('gr_entrance_placement')
	RequestIpl('gr_grdlc_interior_placement')
	RequestIpl('gr_grdlc_interior_placement_interior_0_grdlc_int_01_milo_')
	RequestIpl('gr_grdlc_interior_placement_interior_1_grdlc_int_02_milo_')
	--]]

	-- North Yankton: 3217.697, -4834.826, 111.815
	--[[
	RequestIpl('prologue01')
	RequestIpl('prologue01c')
	RequestIpl('prologue01d')
	RequestIpl('prologue01e')
	RequestIpl('prologue01f')
	RequestIpl('prologue01g')
	RequestIpl('prologue01h')
	RequestIpl('prologue01i')
	RequestIpl('prologue01j')
	RequestIpl('prologue01k')
	RequestIpl('prologue01z')
	RequestIpl('prologue02')
	RequestIpl('prologue03')
	RequestIpl('prologue03b')
	RequestIpl('prologue04')
	RequestIpl('prologue04b')
	RequestIpl('prologue05')
	RequestIpl('prologue05b')
	RequestIpl('prologue06')
	RequestIpl('prologue06b')
	RequestIpl('prologue06_int')
	RequestIpl('prologuerd')
	RequestIpl('prologuerdb')
	RequestIpl('prologue_DistantLights')
	RequestIpl('prologue_LODLights')
	RequestIpl('prologue_m2_door')
	--]]
end
