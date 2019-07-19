
private["_storeList","_addedprice"];
disableSerialization;
_condition = _this select 0;
_storeList = [];

if(_condition == "gunstore") then {

	_gunStorePistols = [
		["cg_hatchet",nil,120,1],
		["cg_pickaxe",nil,120,1],
		["cg_bat",nil,120,1],

		["vvv_fishing_rod",nil,120,1],

		["RH_g17",nil,1200,1],
		["RH_usp",nil,1900,1],
		["RH_m1911",nil,1900,1],
		["RH_ttracker",nil,2100,1],
		["RH_mp412",nil,1900,1],
		["RH_python",nil,2100,1],
		["RH_fn57",nil,3300,1],
		["RH_gsh18",nil,3500,1]


	];

	{
		_storeList pushback _x;
	} foreach _gunStorePistols;

};

if(_condition == "rarefish") then {

		_gunStorePistols = [

			//weapons
			["gold_fishing_rod",nil,6,1],
			["platinum_fishing_rod",nil,10,1],
			["epic_fishing_rod",nil,25,1],
			["legendary_fishing_rod",nil,38,1],

			["vvv_azgt_hat",nil,12,3,5],
			["vvv_azteca_hat",nil,12,3,5],
			["vvv_bane_hat",nil,12,3,5],
			["vvv_cerdo_hat",nil,12,3,5],
			["vvv_hockey_hat",nil,12,3,5],

			["H_ShrekMask",nil,12,3,5],
			["H_MickeyMask",nil,12,3,5],
			["H_UltronMask",nil,12,3,5],
			["H_PatriotMask",nil,12,3,5],
			["H_AntmanMask",nil,12,3,5],
			["H_BobaMask",nil,12,3,5],
			["H_AugustusMask",nil,12,3,5],
			["H_RAAMMask",nil,12,3,5],
			["H_HulkMask",nil,12,3,5],
			["H_VenomMask",nil,12,3,5],
			["H_SpongebobMask",nil,12,3,5],
			["H_SquidwardMask",nil,12,3,5],
			["H_JasonMask",nil,12,3,5],
			["H_DeadpoolMask",nil,12,3,5],
			["H_GingerbreadMask",nil,12,3,5],
			["H_KermitMask",nil,12,3,5],
			["H_SpidermanMask",nil,12,3,5],
			["H_StarFoxMask",nil,12,3,5],
			["H_BatmanMask",nil,12,3,5],
			["H_ScarecrowMask",nil,12,3,5],
			["H_GuyFawkesMask",nil,12,3,5],
			["H_WashingtonMask",nil,12,3,5],
			["H_LincolnMask",nil,12,3,5],
			["H_GrantMask",nil,12,3,5],
			["H_NixonMask",nil,12,3,5],
			["H_ClintonMask",nil,12,3,5],
			["H_BushMask",nil,12,3,5],
			["H_ObamaMask",nil,12,3,5],
			["H_FranklinMask",nil,12,3,5],

			["Masque_Alien1",nil,12,3,5],
			["Masque_Anonymous",nil,12,3,5],
			["Masque_Chains",nil,12,3,5],
			["Payday_GeneralO",nil,12,3,5],
			["Casque_Moto",nil,12,3,5],
			["Masque_Clinton",nil,12,3,5],
			["Masque_speedRunner",nil,12,3,5],
			["Masque_Unic",nil,12,3,5],
			["Masque_Aubrey",nil,12,3,5],
			["Masque_Bonnie",nil,12,3,5],
			["Masque_Bush",nil,12,3,5],
			["Masque_Mempo",nil,12,3,5],
			["Masque_Lincoln",nil,12,3,5],
			["Masque_Wolfv2",nil,12,3,5],
			["Masque_archNemesis",nil,12,3,5],
			["Masque_Arnold",nil,12,3,5],
			["Masque_Chuck",nil,12,3,5],
			["Masque_Clover",nil,12,3,5],
			["Masque_Fish",nil,12,3,5],
			["Masque_Hockey",nil,12,3,5],
			["Masque_Metalhead",nil,12,3,5],
			["Masque_Religieuse",nil,12,3,5],
			["Masque_Smiley",nil,12,3,5],
			["Masque_Santa",nil,12,3,5],
			["Masque_Momie",nil,12,3,5],
			["Masque_Optimiste",nil,12,3,5],
			["Masque_forceAlpha",nil,12,3,5],
			["Masque_GdG",nil,12,3,5],
			["Masque_Gombo",nil,12,3,5],
			["Masque_Lion",nil,12,3,5],
			["Masque_Orc",nil,12,3,5],
			["Masque_Mark",nil,12,3,5],
			["Masque_Macrilleuse",nil,12,3,5],
			["Masque_Hoxton",nil,12,3,5],
			["Masque_Incendiaire",nil,12,3,5],
			["Masque_Dallas",nil,12,3,5],

			["jokermask",nil,12,3,5],
			
			["H_ALFR_Metal_Facemask_gry",nil,12,3,5],
			["H_ALFR_Metal_Facemask_oli",nil,12,3,5],
			["H_ALFR_Metal_Facemask_sand",nil,12,3,5],
			["H_ALFR_Metal_Facemask_blk",nil,12,3,5],
			["H_ALFR_Heist_Mask_1",nil,12,3,5],
			["H_ALFR_Heist_Mask_2",nil,12,3,5],
			["H_ALFR_Heist_Mask_3",nil,12,3,5],
			["H_ALFR_Heist_Mask_4",nil,12,3,5],
			["H_ALFR_Heist_Mask_5",nil,12,3,5],
			["H_ALFR_Heist_Mask_6",nil,12,3,5],
			["H_ALFR_Heist_Mask_7",nil,12,3,5],
			["H_ALFR_Sheep_Mask",nil,12,3,5],
			["H_ALFR_Samurai_Mask",nil,12,3,5],

			["sl_client_c_masks_afro_W",nil,12,3,5],
			["sl_client_c_hats_americanhelmet_W",nil,12,3,5],
			["sl_client_c_masks_anonymous_W",nil,12,3,5],
			["sl_client_c_masks_anonymous2_W",nil,12,3,5],
			["sl_client_c3_masks2_AntmanMask_W",nil,12,3,5],
			["sl_client_c5_Antler_W",nil,12,3,5],
			["sl_client_c3_masks2_AugustusMask_W",nil,12,3,5],
			["sl_client_c4_headbag18_W",nil,12,3,5],
			["sl_client_c4_headbag13_W",nil,12,3,5],
			["sl_client_c4_headbag6_W",nil,12,3,5],
			["sl_client_c4_headbag26_W",nil,12,3,5],
			["sl_client_c4_headbag8_W",nil,12,3,5],
			["sl_client_c4_headbag3_W",nil,12,3,5],
			["sl_client_c4_headbag10_W",nil,12,3,5],
			["sl_client_c4_headbag2_W",nil,12,3,5],
			["sl_client_c4_headbag23_W",nil,12,3,5],
			["sl_client_c3_masks2_BatmanMask_W",nil,12,3,5],
			["sl_client_c4_animals_Brear_Brown_W",nil,12,3,5]

/* add this during christmas time.....
			["Gorb_Santa_White",nil,12,3,5],
			["Gorb_Santa_Tan",nil,12,3,5],
			["Gorb_Santa_Black",nil,12,3,5],
			["Gorb_Reindeer",nil,12,3,5],
			["Gorb_Snowman",nil,12,3,5],
			["Gorb_Antler",nil,12,3,5],
			["Gorb_Elf",nil,12,3,5],
			["Gorb_SantaHat",nil,12,3,5],
			["Gorb_SantaHat_Green",nil,12,3,5],
			["Gorb_Penguin",nil,12,3,5],
			["Gorb_Gingerbread1",nil,12,3,5],
			["Gorb_KnittedHat1",nil,12,3,5],
			["Gorb_KnittedHat2",nil,12,3,5],
			["Gorb_KnittedHat3",nil,12,3,5],
			["Gorb_KnittedHat4",nil,12,3,5],
			["Gorb_ElfMask1",nil,12,3,5],
			["Gorb_ElfMask2",nil,12,3,5],
			["Gorb_ElfMask3",nil,12,3,5],
			["Gorb_PuddingHat",nil,12,3,5],
			["Gorb_FestiveHat1",nil,12,3,5],
			["Gorb_FestiveHat2",nil,12,3,5],
			["Gorb_FestiveHat3",nil,12,3,5],
			["Gorb_FestiveHat4",nil,12,3,5],
			["Gorb_FestiveHat5",nil,12,3,5],
			["Gorb_FestiveHat6",nil,12,3,5],
			["Gorb_FestiveHat7",nil,12,3,5],
			["Gorb_FestiveHat8",nil,12,3,5],
			["Gorb_PlaidHat1",nil,12,3,5],
			["Gorb_PlaidHat2",nil,12,3,5],
			["Gorb_PlaidHat3",nil,12,3,5],
			["Gorb_PlaidHat4",nil,12,3,5],
			["Gorb_TurkeyMask1",nil,12,3,5],
			["Gorb_TurkeyMask2",nil,12,3,5],
			["Gorb_TurkeyMask3",nil,12,3,5],
			["Gorb_UglyMrsClaus1",nil,12,3,5],
			["Gorb_UglyMrsClaus2",nil,12,3,5],
			["Gorb_UglyMrsClaus3",nil,12,3,5],
			["Gorb_AngryGingerbread1",nil,12,3,5],
			["Gorb_AngryGingerbread2",nil,12,3,5],
			["Gorb_AngryGingerbread3",nil,12,3,5],
			["Gorb_PuddingMask1",nil,12,3,5],
			["Gorb_PuddingMask2",nil,12,3,5],
			["Gorb_RoughSantaClaus1",nil,12,3,5],
			["Gorb_RoughSantaClaus2",nil,12,3,5],
			["Gorb_RoughSantaClaus3",nil,12,3,5],
			["Gorb_AngryGingerbreadSwirl1",nil,12,3,5],
			["Gorb_AngryGingerbreadSwirl2",nil,12,3,5],
			["Gorb_CoolElfMask1",nil,12,3,5],
			["Gorb_CoolElfMask2",nil,12,3,5],
			["Gorb_CoolElfMask3",nil,12,3,5],
			["Gorb_TreeMask1",nil,12,3,5],
			["Gorb_TreeMask2",nil,12,3,5],
			["Gorb_TreeMask3",nil,12,3,5],
			["Gorb_TreeMask4",nil,12,3,5],
			["Gorb_TreeMask5",nil,12,3,5],
			["Gorb_TreeMask6",nil,12,3,5],
			["Gorb_MrsClaus1",nil,12,3,5],
			["Gorb_MrsClaus2",nil,12,3,5],
			["Gorb_MrsClaus3",nil,12,3,5],
			["Gorb_HolidayBaseballHat1",nil,12,3,5],
			["Gorb_HolidayBaseballHat2",nil,12,3,5],
			["Gorb_HolidayBaseballHat3",nil,12,3,5],
			["Gorb_HolidayBaseballHat4",nil,12,3,5],
			["Gorb_HolidayBaseballHat5",nil,12,3,5],
			["Gorb_HolidayBaseballHat6",nil,12,3,5],
			["Gorb_HolidayBaseballHat7",nil,12,3,5],
			["Gorb_HolidayBaseballHat8",nil,12,3,5] */

		];

	{
		_storeList pushback _x;
	} foreach _gunStorePistols;

};


if(_condition == "clothing") then {

	_clothing = [

		["TRYK_U_B_BLK_T_BG_BK",nil,50,3,1],
		["TRYK_U_B_RED_T_BG_BR",nil,50,3,1],
		["TRYK_U_B_BLK_T_BK",nil,50,3,1],
		["TRYK_U_B_RED_T_BR",nil,50,3,1],
		["TRYK_U_B_BLK_T_WH",nil,50,3,1],
		["TRYK_U_B_Denim_T_BG_BK",nil,50,3,1],
		["TRYK_U_B_Denim_T_BG_WH",nil,50,3,1],
		["TRYK_U_B_Denim_T_BK",nil,50,3,1],
		["TRYK_U_B_Denim_T_WH",nil,50,3,1],

		["TRYK_U_denim_jersey_blk",nil,50,3,1],
		["TRYK_U_denim_jersey_blu",nil,50,3,1],

		["sl_client_c_civil01_01_W",nil,50,3,1],
		["sl_client_c_civil01_10_W",nil,50,3,1],
		["sl_client_c_civil01_02_W",nil,50,3,1],
		["sl_client_c_civil01_03_W",nil,50,3,1],

		["sl_client_c_civil01_04_W",nil,50,3,1],
		["sl_client_c_civil01_05_W",nil,50,3,1],
		["sl_client_c_civil01_06_W",nil,50,3,1],
		["sl_client_c_civil01_07_W",nil,50,3,1],

		["sl_client_c_civil01_09_W",nil,75,3,1],
		["sl_client_c_civil02_01_W",nil,75,3,1],
		["sl_client_c_civil02_02_W",nil,75,3,1],
		["sl_client_c_civil02_03_W",nil,75,3,1],
		["sl_client_c_civil02_04_W",nil,75,3,1],

		["sl_client_c_civil01_08_W",nil,75,3,1],
		["sl_client_c_civil02_05_W",nil,75,3,1],
		["sl_client_c_civil02_06_W",nil,75,3,1],
		["sl_client_c_civil02_07_W",nil,75,3,1],
		["sl_client_c_civil03_02_W",nil,75,3,1],
		["sl_client_c_civil03_03_W",nil,75,3,1],
		["sl_client_c_civil03_04_W",nil,75,3,1],
		["sl_client_c_civil03_05_W",nil,75,3,1],

		["sl_client_c_civil02_08_W",nil,100,3,1],
		["sl_client_c_civil03_01_W",nil,100,3,1],

		["TRYK_U_B_PCUGs_BLK_R",nil,100,3,1],
		["TRYK_U_B_PCUGs_gry_R",nil,100,3,1],
		["TRYK_U_B_PCUGs_OD_R",nil,100,3,1],
		["TRYK_U_B_wh_blk_Rollup_CombatUniform",nil,100,3,1],
		["TRYK_shirts_DENIM_BK",nil,100,3,1],
		["TRYK_shirts_DENIM_BL",nil,100,3,1],
		["TRYK_shirts_DENIM_BWH",nil,100,3,1],
		["TRYK_shirts_DENIM_R",nil,100,3,1],
		["TRYK_shirts_DENIM_RED2",nil,100,3,1],
		["TRYK_shirts_DENIM_WHB",nil,100,3,1],
		["TRYK_shirts_DENIM_ylb",nil,100,3,1],
		["TRYK_U_denim_hood_blk",nil,100,3,1],
		["TRYK_U_taki_G_BLK",nil,100,3,1],
		["TRYK_U_taki_G_COY",nil,100,3,1],

		["EF_suit_1",nil,100,3,1],
		["EF_suit_2",nil,100,3,1],
		["EF_suit_3",nil,100,3,1],
		["EF_suit_4",nil,100,3,1],
		["EF_suit_5",nil,100,3,1],
		["EF_suit_6",nil,100,3,1],

		["KAEL_SUITS_BR_F26",nil,100,3,1],
		["KAEL_SUITS_BR_F27",nil,100,3,1],
		["KAEL_SUITS_BR_F28",nil,100,3,1],
		["KAEL_SUITS_BR_F29",nil,100,3,1],
		["KAEL_SUITS_BR_F30",nil,100,3,1],
		["KAEL_SUITS_BR_F31",nil,100,3,1],
		["KAEL_SUITS_BR_F32",nil,100,3,1],
		["KAEL_SUITS_BR_F33",nil,100,3,1],
		["KAEL_SUITS_BR_F34",nil,100,3,1],
		["KAEL_SUITS_BR_F35",nil,100,3,1],
		
		["sl_client_c_jackoy1_W",nil,100,3,1],
		["sl_client_c_jackoy2_W",nil,100,3,1],
		["sl_client_c_jackoy3_W",nil,100,3,1],


		//femenism is the best
		["EF_FEM_2U",nil,100,3,1],
		["EF_FEM_2BK",nil,100,3,1],
		["EF_FEM_3_2",nil,100,3,1],
		["EF_FEM_3_3LPBPS",nil,100,3,1],
		["EF_FEM_3_3LPBP",nil,100,3,1],
		["EF_FEM_3_3LPBR",nil,100,3,1],
		["EF_FEM_3_3LPBW",nil,100,3,1],
		["EF_FEM_3_3LPB",nil,100,3,1],
		["EF_FEM_3_3LPBL",nil,100,3,1],
		["EF_FEM_3_3LPBPS2",nil,100,3,1],
		["EF_FEM_3_3LPBP2",nil,100,3,1],
		["EF_FEM_3_3LPBR2",nil,100,3,1],
		["EF_FEM_3_3LPBW2",nil,100,3,1],

		// other
		["U_B_Wetsuit",nil,2000,3,1],
		["V_RebreatherB",nil,4000,3,3],
		["sl_client_c4_hazmat_W",nil,7500,3,1]

	];

	{
		_storeList pushback _x;
	} foreach _clothing;

};


if(_condition == "backpack") then {

	_clothing = [
		["EF_FBAG_BK",nil,100,4,2],
		["EF_FBAG_HB_BK",nil,100,4,2],
		["EF_FBAG_SL_BK",nil,100,4,2],
		["sl_client_c_baglike_b",nil,100,4,2],
		["sl_client_c_baglike_bl",nil,100,4,2],
		["sl_client_c_baglike_gr",nil,100,4,2],
		["sl_client_c_baglike_pink",nil,100,4,2],
		["sl_client_c_baglike_pur",nil,100,4,2],
		["sl_client_c_baglike_r",nil,100,4,2],
		["sl_client_c_baglike_yel",nil,100,4,2],
		["sl_client_c_carryall_1",nil,1000,4,2],
		["sl_client_c_carryall_2",nil,1000,4,2],
		["sl_client_c_carryall_3",nil,1000,4,2],
		["sl_client_c_carryall_4",nil,1000,4,2],
		["sl_client_c_carryall_5",nil,1000,4,2],
		["sl_client_c_carryall_6",nil,1000,4,2],
		["sl_client_c_carryall_7",nil,1000,4,2],
		["sl_client_c_carryall_8",nil,1000,4,2],
		["sl_client_c_carryall_9",nil,1000,4,2],
		["sl_client_c_carryall_10",nil,1000,4,2],
		["sl_client_c_carryall_11",nil,1000,4,2],
		["sl_client_c_carryall_12",nil,1000,4,2],
		["sl_client_c_carryall_13",nil,1000,4,2],
		["sl_client_c_carryall_14",nil,1000,4,2],
		["sl_client_c_carryall_15",nil,1000,4,2],
		["sl_client_c_carryall_16",nil,1000,4,2],
		["sl_client_c_carryall_17",nil,1000,4,2],
		["sl_client_c_carryall_18",nil,1000,4,2],
		["sl_client_c_carryall_19",nil,1000,4,2],
		["sl_client_c_carryall_20",nil,1000,4,2],
		["sl_client_c_carryall_21",nil,1000,4,2],
		["sl_client_c_carryall_22",nil,1000,4,2],
		["sl_client_c_carryall_23",nil,1000,4,2],
		["sl_client_c_carryall_24",nil,1000,4,2],
		["sl_client_c_carryall_25",nil,1000,4,2],
		["sl_client_c_carryall_26",nil,1000,4,2],
		["sl_client_c_carryall_27",nil,1000,4,2],
		["sl_client_c_carryall_28",nil,1000,4,2],
		["sl_client_c_carryall_29",nil,1000,4,2],
		["sl_client_c_carryall_30",nil,1000,4,2],
		["sl_client_c_carryall_31",nil,1000,4,2],
		["sl_client_c_carryall_32",nil,1000,4,2],
		["sl_client_c_carryall_33",nil,1000,4,2],
		["sl_client_c_carryall_34",nil,1000,4,2],
		["sl_client_c_carryall_35",nil,1000,4,2],
		["sl_client_c_carryall_36",nil,1000,4,2],
		["sl_client_c_carryall_37",nil,1000,4,2],
		["sl_client_c_carryall_38",nil,1000,4,2],
		["sl_client_c_carryall_39",nil,1000,4,2],
		["sl_client_c_carryall_40",nil,1000,4,2],
		["sl_client_c_carryall_41",nil,1000,4,2],
		["sl_client_c_carryall_42",nil,1000,4,2],
		["sl_client_c_carryall_43",nil,1000,4,2],
		["sl_client_c_carryall_44",nil,1000,4,2],
		["sl_client_c_carryall_45",nil,1000,4,2],
		["sl_client_c_carryall_46",nil,1000,4,2],
		["sl_client_c_carryall_47",nil,1000,4,2],
		["sl_client_c_carryall_48",nil,1000,4,2],
		["sl_client_c_carryall_49",nil,1000,4,2],
		["sl_client_c_carryall_50",nil,1000,4,2],
		["sl_client_c_carryall_51",nil,1000,4,2],
		["sl_client_c_carryall_52",nil,1000,4,2],
		["sl_client_c_backpack_civil01",nil,1000,4,2],
		["sl_client_c_backpack_civil02_01",nil,1000,4,2],
		["sl_client_c_backpack_civil02_02",nil,1000,4,2],
		["sl_client_c_backpack_civil02_03",nil,1000,4,2],
		["sl_client_c_backpack_civil03_01",nil,1000,4,2],
		["sl_client_c_backpack_civil03_02",nil,1000,4,2],
		["sl_client_c_backpack_civil03_03",nil,1000,4,2],
		["sl_client_c_backpack_civil03_04",nil,1000,4,2],
		["sl_client_c_backpack_civil04_01",nil,1000,4,2],
		["sl_client_c_backpack_civil04_02",nil,1000,4,2],
		["sl_client_c_backpack_civil04_03",nil,1000,4,2],
		["sl_client_c_backpack_civil04_04",nil,1000,4,2],
		["sl_client_c_carryall_invisible",nil,2000,4,2]
	];

	{
		_storeList pushback _x;
	} foreach _clothing;

};

if(_condition == "veststore") then {

	_gunStoreVests = [
		["bj1",nil,1500,3,3],
		["bj2",nil,1500,3,3],
		["bj3",nil,1500,3,3]
	];

	{
		_storeList pushback _x;
	} foreach _gunStoreVests;

};


if(_condition == "mcdonalds") then {

	_mcdonalds = [
		["np_happymeal",nil,8,3],
		["np_bigmac",nil,8,3],
		["np_mchicken",nil,8,3],
		["np_cheeseburger",nil,8,3],
		["np_hamburger",nil,8,3]
	];

	{
		_storeList pushback _x;
	} foreach _mcdonalds;

};


if(_condition == "hotdogs") then {

	_hotdogStore = [
		["np_hotdog",nil,8,3],
		["np_mhotdog",nil,8,3],
		["np_kmhotdog",nil,8,3],
		["np_bbqhotdog",nil,8,3],
		["np_cheesehotdog",nil,8,3]
	];

	{
		_storeList pushback _x;
	} foreach _hotdogStore;

};

if(_condition == "general") then {

	_generalGroceries = [
		["cg_torch",nil,120,1],
		["cg_tabletd",nil,1,1],
		["cg_atf_bandage_i",nil,45,3],	
		["CG_wheel",nil,50,3],
		["CG_ATF_First_Aid_Kit_i",nil,200,3],		
		["ItemMap",nil,1,3],
		["ItemCompass",nil,10,3],
		["ItemWatch",nil,5,3],
		["ItemGPS",nil,1000,3],
		["np_ugroceries",nil,35,3],
		["np_fuelcan",nil,1000,3]
	];

	{
		_storeList pushback _x;
	} foreach _generalGroceries;

};


if(_condition == "donuts") then {

	_donuts = [
		["np_chdonuts",nil,8,3],
		["np_jdonuts",nil,8,3],
		["np_cdonuts",nil,8,3],
		["np_donuts",nil,8,3]
	];

	{
		_storeList pushback _x;
	} foreach _donuts;

};

if(_condition == "pizza") then {

	_pizza = [
		["np_hpizza",nil,14,3],
		["np_mpizza",nil,14,3],
		["np_cpizza",nil,14,3],
		["np_spizza",nil,14,3],
		["np_vpizza",nil,14,3]
	];

	{
		_storeList pushback _x;
	} foreach _pizza;

};




if(_condition IN ["general","hotdogs","donuts","pizza","mcdonalds","drinks"]) then {

	_drinks = [
		["np_coke",nil,4,3],
		["np_drpepper",nil,4,3],
		["np_energydrink",nil,4,3]
	];

	{
		_storeList pushback _x;
	} foreach _drinks;

};


if(_condition IN ["bar"]) then {

	_drinks = [
		["np_coke",nil,4,3],
		["np_drpepper",nil,4,3],
		["np_beer",nil,4,3],
		["np_energydrink",nil,4,3]
	];

	{
		_storeList pushback _x;
	} foreach _drinks;

};


if(_condition IN ["nbar"]) then {

	_drinks = [
		["np_tequila",nil,250,3],
		["murshun_cigs_lighter",nil,100,3],
		["murshun_cigs_matches",nil,100,3],
		["murshun_cigs_cigpack",nil,100,3],	
		["np_water",nil,4,3],
		["np_coke",nil,4,3],
		["np_drpepper",nil,4,3],
		["np_beer",nil,4,3],
		["np_energydrink",nil,4,3]
	];

	{
		_storeList pushback _x;
	} foreach _drinks;

};



if(_condition == "head") then {

	_gunStorePistols = [


			["sl_client_c_masks_gangster_W",nil,520,3,5],
			["ALE_H_Calot",nil,120,3,5],
			["ALE_H_Cowboy_White",nil,120,3,5],
			["ALE_H_Cowboy_Black",nil,120,3,5],
			["ALE_H_Cowboy_Brown",nil,120,3,5],
			["sl_client_c_hats_russian_W",nil,120,3,5],

			["ALE_H_NewEra_Monster",nil,120,3,5],
			["ALE_H_NewEra_Rouge",nil,120,3,5],
			["ALE_H_NewEra_Superman",nil,12,3,5],
			["ALE_H_NewEra_Cyan",nil,120,3,5],
			["ALE_H_NewEra_Black",nil,120,3,5],
			["ALE_H_NewEra_Lakers",nil,120,3,5],
			["ALE_H_NewEra_Redsox",nil,120,3,5],

			["sl_client_c5_cap_nike_blk_W",nil,120,3,5],
			["sl_client_c5_cap_nike_blu_W",nil,120,3,5],
			["sl_client_c5_cap_nike_grn_W",nil,12,3,5],
			["sl_client_c5_cap_nike_grey_W",nil,120,3,5],
			["sl_client_c5_cap_nike_navy_W",nil,120,3,5],
			["sl_client_c5_cap_nike_org_W",nil,120,3,5],
			["sl_client_c5_cap_nike_red_W",nil,120,3,5],
			["sl_client_c5_cap_nike_wh_W",nil,120,3,5],
			["sl_client_c5_cap_nike_ylw_W",nil,120,3,5],

			["sl_client_c5_cap_polo_blk_W",nil,120,3,5],
			["sl_client_c5_cap_polo_lblu_W",nil,120,3,5],
			["sl_client_c5_cap_polo_navy_W",nil,12,3,5],
			["sl_client_c5_cap_polo_pink_W",nil,120,3,5],
			["sl_client_c5_cap_polo_red_W",nil,120,3,5],
			["sl_client_c5_cap_polo_tan_W",nil,120,3,5],
			["sl_client_c5_cap_polo_wh_W",nil,120,3,5],
						
			["H_Beret_blk",nil,120,3,5],
			["H_Booniehat_khk",nil,120,3,5],
			["H_Booniehat_oli",nil,120,3,5],
			["H_Booniehat_tan",nil,120,3,5],

			["TRYK_H_woolhat_WH",nil,120,3,5],
			["TRYK_H_woolhat_tan",nil,120,3,5],
			["TRYK_H_woolhat_CW",nil,120,3,5],
			["TRYK_H_woolhat_cu",nil,120,3,5],
			["TRYK_H_woolhat_br",nil,120,3,5],
			["TRYK_H_woolhat",nil,120,3,5],
			["TRYK_r_cap_tan_Glasses",nil,120,3,5],
			["TRYK_r_cap_od_Glasses",nil,120,3,5],
			["TRYK_r_cap_blk_Glasses",nil,120,3,5],
			["TRYK_R_CAP_OD_US",nil,120,3,5],
			["TRYK_R_CAP_TAN",nil,120,3,5],
			["TRYK_R_CAP_BLK",nil,120,3,5],
			["TRYK_H_pakol2",nil,120,3,5],
			["TRYK_H_headsetcap",nil,120,3,5],
			["TRYK_H_headsetcap_od",nil,120,3,5],
			["TRYK_H_headsetcap_blk",nil,120,3,5],
			["TRYK_H_headsetcap_blk_Glasses",nil,120,3,5],
			["TRYK_H_headsetcap_Glasses",nil,120,3,5],
			["TRYK_H_LHS_HEL_G",nil,120,3,5],
			["TRYK_H_Bandana_wig_g",nil,120,3,5],
			["TRYK_H_Bandana_wig",nil,120,3,5],
			["TRYK_H_Bandana_H",nil,120,3,5],
			["H_Cap_tan",nil,120,3,5],
			["H_Cap_blk",nil,120,3,5],
			["H_Cap_blk_CMMG",nil,120,3,5],
			["H_Cap_brn_SPECOPS",nil,120,3,5],
			["H_Cap_tan_specops_US",nil,120,3,5],
			["H_Cap_khaki_specops_UK",nil,120,3,5],
			["H_Cap_grn",nil,120,3,5],
			["H_Cap_grn_BI",nil,120,3,5],
			["H_Cap_blk_Raven",nil,120,3,5],
			["H_Cap_blk_ION",nil,120,3,5],


		//head items
		["EF_Long_wig_B",nil,120,3,5],
		["EF_Long_wig_BL",nil,120,3,5],
		["EF_Long_wig_BW",nil,120,3,5],
		["EF_Long_wig_GL",nil,120,3,5],
		["EF_Punk_wig_B",nil,120,3,5],
		["EF_Punk_wig_BL",nil,120,3,5],
		["EF_Punk_wig_BW",nil,120,3,5],
		["EF_Punk_wig_GL",nil,120,3,5]

	];

	{
		_storeList pushback _x;
	} foreach _gunStorePistols;

};



if(_condition == "glasses") then {

	_gunStorePistols = [
		["G_Spectacles_Tinted",nil,120,3,4],
		["G_Shades_Black",nil,120,3,4],
		["G_Shades_Blue",nil,120,3,4],
		["G_Sport_Blackred",nil,120,3,4],
		["G_Sport_Checkered",nil,120,3,4],
		["G_Sport_Blackyellow",nil,120,3,4],
		["G_Sport_BlackWhite",nil,120,3,4],
		["G_Squares",nil,120,3,4],
		["G_Aviator",nil,120,3,4],
		["G_Lady_Mirror",nil,120,3,4],
		["G_Lady_Dark",nil,120,3,4],
		["G_Lady_Blue",nil,120,3,4],
		["G_Lowprofile",nil,120,3,4],
		["G_Combat",nil,120,3,4],

		["nigga_platok",nil,120,3,4],
		["nigga_platok2",nil,120,3,4],
		["nigga_platok3",nil,120,3,4],
		["nigga_platok4",nil,120,3,4],
		["nigga_platok5",nil,120,3,4],
		["nigga_platok6",nil,120,3,4],
		["nigga_platok7",nil,120,3,4],
		["nigga_platok8",nil,120,3,4],
		["nigga_platok9",nil,120,3,4],
		["nigga_platok10",nil,120,3,4],
		["nigga_platok11",nil,120,3,4],
		["nigga_platok12",nil,120,3,4],
		["nigga_gog",nil,120,3,4],

		["EF_ACC1",nil,120,3,4],
		["EF_ACC2",nil,120,3,4],
		["EF_ACC3",nil,120,3,4],
		["EF_AC1",nil,120,3,4],
		["EF_AC2",nil,120,3,4],
		["EF_AC3",nil,120,3,4],
		["SFG_Tac_smallBeardB",nil,120,3,4],
		["SFG_Tac_smallBeardD",nil,120,3,4],
		["SFG_Tac_smallBeardG",nil,120,3,4],
		["SFG_Tac_smallBeardO",nil,120,3,4],
		["SFG_Tac_BeardB",nil,120,3,4],
		["SFG_Tac_BeardD",nil,120,3,4],
		["SFG_Tac_BeardG",nil,120,3,4],
		["SFG_Tac_BeardO",nil,120,3,4],
		["SFG_Tac_chinlessbB",nil,120,3,4],
		["SFG_Tac_chinlessbD",nil,120,3,4],
		["SFG_Tac_chinlessbG",nil,120,3,4],
		["SFG_Tac_chinlessbO",nil,120,3,4],
		["SFG_Tac_moustacheB",nil,120,3,4],
		["SFG_Tac_moustacheD",nil,120,3,4],
		["SFG_Tac_moustacheG",nil,120,3,4],
		["SFG_Tac_moustacheO",nil,120,3,4],
		["SFG_Tac_ChopsB",nil,120,3,4],
		["SFG_Tac_ChopsD",nil,120,3,4],
		["SFG_Tac_ChopsG",nil,120,3,4],
		["SFG_Tac_ChopsO",nil,120,3,4]

	];

	{
		_storeList pushback _x;
	} foreach _gunStorePistols;

};








_display = findDisplay 9999;
_list = _display displayCtrl 9001;

lbClear _list;

{

	_class = _x select 0;
	_item = [_class] call client_fnc_fetchItemType;
	_price = _x select 2;
	_type = _x select 3;
	_classtype = _x select 4;
	
	if(isNil "_classtype") then { _classType = 0; };

	if(_condition == "rarefish") then {
		_list lbAdd format["%2 %1", _item select 1, _price];
	} else {
		_addedprice = (_price / 100) * taxRate;
		_price = _addedprice + _price;
		_list lbAdd format["%2 %1", _item select 1, _price call client_fnc_numberText];
	};

	_list lbSetdata [(lbSize _list)-1, str([_class,_item select 1, _price,_type,_classtype,_addedprice])];
	_list lbSetPicture [(lbSize _list)-1,_item select 2];

	if(_condition == "gunstore") then {
		_price = 10;

		_addedprice = (_price / 100) * taxRate;
		_price = _addedprice + _price;
		_magazines = getArray (configFile / "CfgWeapons" / _class / "magazines");
		_magazine = _magazines select 0;
		_item = [_magazine] call client_fnc_fetchItemType;
		_list lbAdd format["%2 %1",_item select 1, _price call client_fnc_numberText];
		_list lbSetdata [(lbSize _list)-1, str([_magazine,_item select 1, _price,2,0,_addedprice])];
		_list lbSetPicture [(lbSize _list)-1,_item select 2];
	};

} foreach _storeList;



lbSetCurSel [9001, 0];



/*

	_magazines = getArray (configFile / "CfgWeapons" / _weapon / "magazines");
	 _holder addMagazineCargoGlobal [_magazineClass, 3];



