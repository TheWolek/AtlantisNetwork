
private["_storeList","_addedprice"];
disableSerialization;
_condition = _this select 0;
_storeList = [];

if(_condition == "gunstore") then {
	_gunStorePistols = [
		["RH_m1911",nil,2500,1],
		["RH_g17",nil,3000,1],
		["RH_usp",nil,3000,1],
		["RH_kimber",nil,6500,1]
	];
	_gunstoretools = [
		["vvv_fishing_rod",nil,120,1],		
		["cg_hatchet",nil,120,1],
		["cg_pickaxe",nil,120,1],
		["cg_bat",nil,120,1]		
	];
    if(1 IN licenseArray) then {	
		{
			_storeList pushback _x;
		} foreach _gunStorePistols;
	};	
	{
		_storeList pushback _x;
	} foreach _gunstoretools;

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
		["V_RebreatherB",nil,4000,3,3]

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
		["TRYK_B_Alicepack",nil,100,4,2],
		["TRYK_B_Coyotebackpack",nil,100,4,2],
		["TRYK_B_Coyotebackpack_OD",nil,100,4,2],
		["TRYK_B_Carryall_blk",nil,100,4,2],
		["B_Messenger_Black_f",nil,100,4,2]
	];

	{
		_storeList pushback _x;
	} foreach _clothing;

};

if(_condition == "veststore") then {

	_gunStoreVests = [
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
		//["cg_torch",nil,120,1],
		["cg_tabletd",nil,1,1],
		["cg_atf_bandage_i",nil,45,3],	
		["ToolKit",nil,200,3],		
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
		["np_energydrink",nil,4,3],
		["plp_bo_inv_BottleBitters",nil,100,3]
	];

	{
		_storeList pushback _x;
	} foreach _drinks;

};


if(_condition IN ["nbar"]) then {

	_drinks = [
		["plp_bo_inv_BottleBitters",nil,100,3],
		["plp_bo_inv_BottleBlueCorazol",nil,200,3],
		["plp_bo_inv_BottleLiqCream",nil,200,3],
		["plp_bo_inv_BottleGin",nil,300,3],	
		["plp_bo_inv_BottleLiqOrange",nil,200,3],	
		["plp_bo_inv_BottleTequila",nil,300,3],	
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
		["G_Combat",nil,120,3,4]
	];

	{
		_storeList pushback _x;
	} foreach _gunStorePistols;

};
/*============================================ POLICE STORE =====================================*/
if(_condition == "police_gunstore") then {
	_gsplcadet = [
		["CG_BATON",nil,1,1],
		["RH_uspm",nil,10,1],
		["taser",nil,1,1]
	];
	_gspl1 = [
		["RH_g17",nil,20,1]	
	];
	_gspl2 = [
		["RH_p226",nil,30,1]
	];
	_gspl3 = [
		["RH_m1911",nil,40,1]
	];
	_gspl4 = [
		["RH_bull",nil,50,1]
	];
	_gspl5 = [
		["RH_Deaglem",nil,80,1],
		["CSW_M870",nil,150,1]		
	];
	_gspl6 = [
		["hlc_smg_MP5N",nil,600,1]
	];
	_gspl8do12 = [
		["RH_m4",nil,1300,1]
	];
	_gspmswat = [
		["RH_g18",nil,60,1],
		["CSW_FN57_Ballistic_Shield",nil,100,1],
		["bnae_trg42_virtual",nil,3000,1],	
		["RH_M4m_b",nil,2000,1]


	];

	_gsplm4auto = [
		["RH_M4A6",nil,1600,1]
	];

	_pddtushop = [
		["RH_g18",nil,150,1],
		["RH_kimber_nw",nil,100,1],
		["RH_fnp45",nil,100,1],
		["RH_cz75",nil,100,1]
	];

	_dtulr = [
		["RH_sbr9",nil,900,1]
		];

	if(player getvariable "cop" >= 1) then {
		{
			_storeList pushback _x;
		} foreach _gsplcadet;
	};
	if(player getvariable "cop" >= 2) then {
		{
			_storeList pushback _x;
		} foreach _gspl1;
	};
	if(player getvariable "cop" >= 3) then {
		{
			_storeList pushback _x;
		} foreach _gspl2;
	};
	if(player getvariable "cop" >= 4) then {
		{
			_storeList pushback _x;
		} foreach _gspl3;
	};
	if(player getvariable "cop" >= 5) then {
		{
			_storeList pushback _x;
		} foreach _gspl4;
	};
	if(player getvariable "cop" >= 6) then {
		{
			_storeList pushback _x;
		} foreach _gspl5;
	};
	if(player getvariable "cop" >= 7) then {
		{
			_storeList pushback _x;
		} foreach _gspl6;
	};
	if(player getvariable "cop" >= 8) then {
		{
			_storeList pushback _x;
		} foreach _gspl8do12;
	};
	if(player getvariable "cop" >= 10) then {
		{
			_storeList pushback _x;
		} foreach _gsplm4auto;
	};
	// marshale i swat
	if(player in currentMarshals || 9 IN licenseArray || 8 in licenseArray) then {
		{
			_storeList pushback _x;
		} foreach _gspmswat;
	};
	if(player in currentDetectives) then {
		{
			_storeList pushback _x;
		} foreach _pddtushop;
	};
	if(player in currentDetectives && player getvariable "cop" >= 6) then {
		{
			_storeList pushback _x;
		} foreach _dtulr;
	};
};


if(_condition == "police_veststore") then {

	_police_veststoree = [
		["dtdev_vest_hivis",nil,1,3,3],
		["TAC_PBDFG2CPP_CY_1",nil,1,3,3],
		["TAC_PBDFG2CPP_BK_1",nil,1,3,3],

		["TAC_V_tacv1_P",nil,1,3,3],
		["TAC_V_tacv1LC_P",nil,1,3,3],
		["EF_BS",nil,1,3,3],
		["EF_SH_BK",nil,1,3,3],
		["EF_SH_BW",nil,1,3,3]		



	];
	_dtuvests = [
	["TAC_PBDFG2CPP_BK_1",nil,1,3,3],
	["TAC_PBDFG2P_B",nil,1,3,3],
	["TAC_V_tacv1_P",nil,1,3,3],
	["TAC_V_tacv1_P2",nil,1,3,3],
	["TAC_V_tacv1LC_P",nil,1,3,3]		
	];

	_police_marshalvest = [
		["TAC_PBDFG2CPMSL_B_1",nil,1,3,3],
		["Kangaro0_MarshalV1",nil,1,3,3],
		["Kangaro0_MarshalV2",nil,1,3,3],
		["Kangaro0_MarshalV3",nil,1,3,3],
		["Kangaro0_MarshalV4",nil,1,3,3],
		["Kangaro0_MarshalV5",nil,1,3,3],
		["Kangaro0_MarshalV6",nil,1,3,3],
		["TAC_V_tacv1_MSL",nil,1,3,3],
		["TAC_V_tacv1LC_MSL",nil,1,3,3],					
		["dtdev_usms_sog_vest_blk_camo",nil,1,3,3],
		["dtdev_usms_sog_vest_blk",nil,1,3,3],
		["dtdev_usms_sog_vest_grn",nil,1,3,3],
		["Gsg9_PlateCarrier_Black_Assault",nil,1,3,3],
		["Gsg9_PlateCarrier_Brown_Assault",nil,1,3,3],
		["KSK_PlateCarrier_FlecktarnW_Specialist",nil,1,3,3],
		["Gsg9_PlateCarrier_Brown_SupportHeavy",nil,1,3,3],
		["Gsg9_Assault_Vest_Coyot",nil,1,3,3],
		["Gsg9_Medic_Vest_Coyot",nil,1,3,3]

	];	
	{
		_storeList pushback _x;
	} foreach _police_veststoree;

	if (player IN currentMarshals) then {
		{
		_storeList pushback _x;
		} foreach _police_marshalvest;
	};	
	if (player IN currentDetectives) then {
		{
		_storeList pushback _x;
		} foreach _dtuvests;
	};	

};
if(_condition == "police_uniformstore") then {
	_marshaluniformstore = [
		["TRYK_U_denim_hood_blk",nil,1,3,1],
		["Kangaro0_Marshal_Navy",nil,1,3,1],
		["Kangaro0_Marshal_Black",nil,1,3,1],
		["TRYK_U_B_BLKBLK_CombatUniform",nil,1,3,1],		
		["dtdev_usms_sog_uni_blk",nil,1,3,1],
		["dtdev_usms_sog_uni_green",nil,1,3,1],
		["dtdev_marshal_shirt",nil,1,3,1],
		["TRYK_shirts_DENIM_BK",nil,1,3,1],
		["TRYK_shirts_DENIM_BL",nil,1,3,1],
		["TRYK_shirts_DENIM_BWH",nil,1,3,1],
		["TRYK_shirts_DENIM_R",nil,1,3,1],
		["TRYK_shirts_DENIM_RED2",nil,1,3,1],
		["TRYK_shirts_DENIM_WHB",nil,1,3,1],
		["TRYK_shirts_DENIM_ylb",nil,1,3,1],
		["EF_HMMSL_1",nil,1,3,1],
		["EF_HMMSL_2",nil,1,3,1],
		["TRYK_U_B_3CD_BLK_BDUTshirt",nil,1,3,1]					
	];

	_dtuuniformstore = [
		["vvv_traje_policia_3",nil,1,3,1],
		["vvv_traje_jackoy5",nil,1,3,1],
		["vvv_traje_jackoy6",nil,1,3,1],
		["vvv_traje_jackoy7",nil,1,3,1],
		["TRYK_shirts_DENIM_BK",nil,1,3,1],
		["TRYK_shirts_DENIM_BL",nil,1,3,1],
		["TRYK_shirts_DENIM_BWH",nil,1,3,1],
		["TRYK_shirts_DENIM_R",nil,1,3,1],
		["TRYK_shirts_DENIM_RED2",nil,1,3,1],
		["TRYK_shirts_DENIM_WH",nil,1,3,1],
		["TRYK_shirts_DENIM_BL_Sleeve",nil,1,3,1],
		["TRYK_shirts_DENIM_BWH_Sleeve",nil,1,3,1],
		["TRYK_shirts_DENIM_R_Sleeve",nil,1,3,1],
		["TRYK_shirts_DENIM_RED2_Sleeve",nil,1,3,1],
		["TRYK_shirts_DENIM_WH_Sleeve",nil,1,3,1],
		["TRYK_shirts_BLK_PAD_BL",nil,1,3,1],
		["TRYK_shirts_BLK_PAD",nil,1,3,1],
		["TRYK_U_pad_hood_Cl_blk",nil,1,3,1],
		["TRYK_U_denim_hood_blk",nil,1,3,1],
		["TRYK_U_denim_hood_nc",nil,1,3,1],
		["TRYK_U_denim_jersey_blk",nil,1,3,1],
		["TRYK_U_denim_jersey_blu",nil,1,3,1],
		["TRYK_U_pad_j_blk",nil,1,3,1],
		["TRYK_U_pad_j",nil,1,3,1],
		["hoodie_dtu_1",nil,1,3,1],
		["hoodie_dtu_2",nil,1,3,1],
		["hoodie_dtu_3",nil,1,3,1]
	];

	_police_uniformstore = [
		["EF_HMP_1",nil,1,3,1],
		["EF_HMP_2",nil,1,3,1],
		["asp_cadet1",nil,1,3,1],
		["asp_trooper2",nil,1,3,1],
		["asp_seniortrooper3",nil,1,3,1],
		["asp_mastertrooper4",nil,1,3,1],
		["asp_corporal5",nil,1,3,1],
		["asp_sergeant6",nil,1,3,1],
		["asp_lieutenant7",nil,1,3,1],
		["asp_colonel8",nil,1,3,1],
		["asp_captain9",nil,1,3,1],
		["asp_major10",nil,1,3,1],
		["asp_deputychief11",nil,1,3,1],
		["asp_chief12",nil,1,3,1],
		["asp_ia13",nil,1,3,1],
		["dtdev_swat_1uni",nil,1,3,1],
		["dtdev_swat_2uni",nil,1,3,1]
	];

	{
		_storeList pushback _x;
	} foreach _police_uniformstore;

	if (player IN currentMarshals) then {	
		{
			_storeList pushback _x;
		} foreach _marshaluniformstore;
	};

	if (player in currentDetectives) then {
		{
			_storeList pushback _x;
		} foreach _dtuuniformstore;
	};
};


if(_condition == "police_glassesstore") then {

	_police_glassesstore = [
		["G_Aviator",nil,1,3,4],
		["G_AirPurifyingRespirator_01_F",nil,1,3,4],
		["G_WirelessEarpiece_F",nil,1,3,4],
		["G_Spectacles_Tinted",nil,1,3,4]


	];

	_marshalmasks = [
		["G_Bandanna_tan",nil,1,3,4],
		["G_Bandanna_blk",nil,1,3,4],
		["G_bandanna_aviator",nil,1,3,4],
		["G_Bandanna_oli",nil,1,3,4],
		["G_Balaclava_blk",nil,1,3,4],
		["G_Balaclava_TI_blk_F",nil,1,3,4],
		["Balaclava_Black_Gsg9",nil,1,3,4]
	];	

	_dtumasks = [

		["Balaclava_Black_Polizei_Gsg9",nil,1,3,4],
		["Balaclava_Black_Polizei_Gsg9_GreyG",nil,1,3,4],
		["Balaclava_Black_Gsg9",nil,1,3,4],
		["G_Bandanna_blk",nil,1,3,4],
		["G_Bandanna_khk",nil,1,3,4],
		["G_Bandanna_aviator",nil,1,3,4],
		["G_Bandanna_shades",nil,1,3,4],
		["G_Bandanna_sport",nil,1,3,4],
		["V12_CHAINE",nil,1,3,4],
		["G_Balaclava_blk",nil,1,3,4],
		["H_ALFR_SkiMask_Glasses_1",nil,1,3,4],
		["TRYK_kio_balaclava_BLK",nil,1,3,4],
		["TRYK_TAC_SET_bn",nil,1,3,4]
	];

	{
		_storeList pushback _x;
	} foreach _police_glassesstore;


	if (player IN currentMarshals || 9 IN licenseArray || 8 in licenseArray) then {	
		{
			_storeList pushback _x;
		} foreach _marshalmasks;
	};

	if (player in currentDetectives || 9 IN licenseArray || 8 in licenseArray) then {
		{
			_storeList pushback _x;
		} foreach _dtumasks;
	};

};
if(_condition == "police_headgearstore") then {

	_police_headgearstore = [
		["Campaign_Hat_Dark",nil,1,3,5],
		["Campaign_Hat_Light",nil,1,3,5],
		["Campaign_Hat_Tan",nil,1,3,5],
		["Campaign_Hat_Trooper",nil,1,3,5],
		["Campaign_Hat_Washedout",nil,1,3,5],
		["H_Cap_police",nil,1,3,5],
		["TRYK_H_PASGT_BLK",nil,1,3,5],
		["TRYK_R_CAP_BLK",nil,1,3,5],
		["TRYK_r_cap_blk_Glasses",nil,1,3,5],
		["G_WirelessEarpiece_F",nil,1,3,5],
		["EF_Mcap_PB",nil,1,3,5],
		["CG_sert_H2",nil,1,3,5],
		["Kangaro0_MarshalH",nil,1,3,5],
		["TRYK_H_headsetcap_blk_Glasses",nil,1,3,5]
	];
	_dtuhead = [
		["H_Cap_blk_ION",nil,1,3,5],
		["H_Watchcap_blk",nil,1,3,5],
		["FBI_Helmet2",nil,1,3,5],
		["H_Hat_brown",nil,1,3,5],
		["H_Hat_tan",nil,1,3,5],
		["TRYK_UA_CAP",nil,1,3,5],
		["TRYK_UA_CAP_GR",nil,1,3,5],
		["TRYK_UA_CAP_tan",nil,1,3,5],
		["TRYK_UA_CAP_U",nil,1,3,5],
		["TRYK_UA_CAP2R",nil,1,3,5],
		["TRYK_UA_CAP_GR2R",nil,1,3,5],
		["TRYK_UA_CAP_tan2R",nil,1,3,5],
		["TRYK_UA_CAP_U2R",nil,1,3,5],
		["TRYK_H_headsetcap_blk_Glasses",nil,1,3,5],
		["TRYK_H_headsetcap_od_Glasses",nil,1,3,5],
		["TRYK_R_CAP_BLK",nil,1,3,5],
		["TRYK_R_CAP_TAN",nil,1,3,5],
		["TRYK_R_CAP_OD_US",nil,1,3,5],
		["TRYK_r_cap_blk_Glasses",nil,1,3,5],
		["TRYK_r_cap_od_Glasses",nil,1,3,5],
		["TRYK_r_cap_tan_Glasses",nil,1,3,5],
		["TRYK_H_woolhat",nil,1,3,5]
	];

	{
		_storeList pushback _x;
	} foreach _police_headgearstore;

	if (player in currentDetectives) then {
		{
			_storeList pushback _x;
		} foreach _dtuhead;
	};	

};
if(_condition == "police_misc") then {

	_police_misc = [
		["EF_FBAG_BK",nil,1,4,2],
		["EF_FBAG_HB_BK",nil,1,4,2],
		["EF_FBAG_SL_BK",nil,1,4,2],
		["TRYK_B_Alicepack",nil,1,4,2],
		["TRYK_B_Coyotebackpack",nil,1,4,2],
		["TRYK_B_Coyotebackpack_OD",nil,1,4,2],
		["TRYK_B_Carryall_blk",nil,1,4,2],
		["B_Messenger_Black_f",nil,1,4,5],
		["DRPG_PoliceBelt",nil,1,4,2],
		["AM_PoliceBelt",nil,1,4,2],
		["TRYK_TAC_EARMUFF",nil,1,4,5],
		["cg_atf_bandage_i",nil,5,3],
		["CG_ATF_First_Aid_Kit_i",nil,50,3],		
		["CG_Spikes_Collapsed",nil,50,3],
		["ItemMap",nil,1,3],
		["ItemCompass",nil,1,3],
		["Oase_ID_Card_Police",nil,1,3],
		["ItemGPS",nil,1,3],
		["cg_tabletd",nil,1,3],
		["RH_compm2",nil,10,3],
		["RH_compm2l",nil,10,3],
		["RH_cmore",nil,10,3],
		["RH_barska_rds",nil,10,3],
		["RH_eotech553",nil,10,3],
		["RH_spr_mbs",nil,10,3],
		["hlc_muzzle_Agendasix",nil,10,3],
		["ToolKit",nil,10,3]
	];


	_pddtuaccshop = [
		["RH_gemtech9",nil,1,3],
		["RH_matchsd",nil,1,3],
		["RH_gemtech45",nil,1,3],
		["RH_X2",nil,1,3],
		["RH_docter",nil,1,3],
		["RH_tundra",nil,1,3],
		["KA_ANPEQ15_Black_IR",nil,1,3],
		["RH_compM2",nil,1,3]
	];	

	_pdmarshalstuff = [
		["SUPER_flash",nil,100,3],	
		["CSW_FN57_Shield_P",nil,300,3],	
		["bnae_muzzle_blk_virtual",nil,300,3],		
		["bnae_scope_blk_virtual",nil,600,3],
		["bnae_bipod_v2_virtual",nil,300,3],
		["5Rnd_APDS_338LM_Magazine",nil,150,3]
	];	

	{
		_storeList pushback _x;
	} foreach _police_misc;

	if(player in currentMarshals || 9 IN licenseArray || 8 in licenseArray) then {
		{
			_storeList pushback _x;
		} foreach _pdmarshalstuff;
	};
	if(player in currentDetectives) then {
		{
			_storeList pushback _x;
		} foreach _pddtuaccshop;
	};





};

/* ========================================== MAFIA STORE ==============================================================================================*/
if(_condition == "mafia_gunstore") then {

	_gunStorePistols = [

		["RH_m9",nil,2500,1],
        ["RH_g17",nil,3000,1],
        ["RH_uspm",nil,4000,1],
		["RH_kimber_nw",nil,7500,1],
		["RH_tec9",nil,11000,1],
        ["RH_bull",nil,13000,1],
        ["RH_Deaglem",nil,15000,1],
        ["hlc_smg_MP5N",nil,17000,1],
        ["RH_m4",nil,40000,1],
		["RH_ar10",nil,55000,1],
		["hlc_rifle_g3a3",nil,60000,1],
		["hlc_rifle_M1903A1_unertl",nil,90000,1],
		["arifle_mas_ww2_mos",nil,160000,1],
		["optic_LRPS",nil,5000,3],		
		["arifle_mas_ww2_ppsh",nil,20000,1],
		["arifle_mas_ww2_tommy",nil,16000,1],
		["arifle_mas_ww2_sten",nil,15000,1]

	];

	{
		_storeList pushback _x;
	} foreach _gunStorePistols;

};


if(_condition == "mafia_veststore") then {

	_mafia_veststoree = [
        ["TRYK_V_ArmorVest_Delta",nil,8500,3,3],
		["TAC_V_tacv1_BK",nil,4500,3,3],
		["EF_SHF_BK",nil,700,3,3]




	];

	{
		_storeList pushback _x;
	} foreach _mafia_veststoree;

};
if(_condition == "mafia_uniformstore") then {

	_mafia_uniformstore = [
		["vvv_hazmat",nil,4500,3,1],
		["vvv_traje_mafioso_F_1",nil,1600,3,1],
        ["vvv_traje_ejecutivo_1",nil,1400,3,1],
		["vvv_character_funcionario_1",nil,2000,3,1],
		["vvv_traje_jackoy5",nil,1200,3,1],
		["Gsg9_AirUniform_black",nil,900,3,1],
		["cg_invisbp",nil,9000,4,2],
		["B_Bergen_dgtl_F",nil,10000,4,2]

	];

	{
		_storeList pushback _x;
	} foreach _mafia_uniformstore

};


if(_condition == "mafia_glassesstore") then {

	_mafia_glassesstore = [
        ["G_Bandanna_tan",nil,1,3,4],
        ["G_Bandanna_blk",nil,1,3,4],
        ["G_bandanna_aviator",nil,1,3,4],
        ["G_Bandanna_oli",nil,1,3,4],
        ["G_Balaclava_blk",nil,1,3,4],
        ["G_Balaclava_TI_blk_F",nil,1,3,4],
        ["Balaclava_Black_Gsg9",nil,1,3,4],
        ["G_Aviator",nil,1,3,4],
        ["G_AirPurifyingRespirator_01_F",nil,1,3,4],
        ["G_WirelessEarpiece_F",nil,1,3,4],
        ["G_Spectacles_Tinted",nil,1,3,4]


	];

	{
		_storeList pushback _x;
	} foreach _mafia_glassesstore;

};
if(_condition == "mafia_headgearstore") then {

	_mafia_headgearstore = [
		["H_Hat_brown",nil,300,3,5],
		["H_Hat_grey",nil,300,3,5],
		["H_Hat_tan",nil,300,3,5]
	];

	{
		_storeList pushback _x;
	} foreach _mafia_headgearstore;

};
if(_condition == "mafia_misc") then {

	_mafia_misc = [
		["NP_drillitem",nil,20000,3],
		["CG_HackingTool",nil,9000,3],
		["CG_Lockpick",nil,1000,3],
		["NP_DrugTable",nil,6500,3],
		["DemoCharge_Remote_Mag",nil,60000,3],
 		["RH_m9qd",nil,1900,3]


	];

	{
		_storeList pushback _x;
	} foreach _mafia_misc;

};
/*================================================= ems =====================================*/
if(_condition == "ems_gunstore") then {

	_gunStorePistols = [

		["A3L_Extinguisher",nil,50,1]

	];

	{
		_storeList pushback _x;
	} foreach _gunStorePistols;

};


if(_condition == "ems_veststore") then {

	_veststoree = [




	];

	{
		_storeList pushback _x;
	} foreach _veststoree;

};
if(_condition == "ems_uniformstore") then {

	_ems_uniformstore = [
		["CG_EMS6",nil,500,3,1],
		["CG_EMS5",nil,500,3,1],
		["CG_EMS9",nil,500,3,1],
		["CG_EMS8",nil,500,3,1],
		["CG_EMS7",nil,500,3,1],
		["CG_EMS10",nil,500,3,1],
		["CG_EMS4",nil,500,3,1],
		["CG_EMS3",nil,500,3,1],
		["CG_EMS2",nil,500,3,1],
		["CG_EMS1",nil,500,3,1],
		["EF_MKJKT_EMS",nil,500,3,1],
		["female_ems",nil,500,3,1],
		["vvv_traje_doctor",nil,500,3,1],
		["cg_invisbp",nil,300,4,2],
        ["EF_BLT_MEMS",nil,150,4,2],
		["V_RebreatherB",nil,150,4,2],
		["TRYK_B_Medbag",nil,250,4,2],
		["TRYK_B_Medbag_OD",nil,250,4,2]

	];

	{
		_storeList pushback _x;
	} foreach _ems_uniformstore

};


if(_condition == "ems_glassesstore") then {

	_ems_glassesstore = [
        ["Masque_Chirurgical",nil,1,3,4]



	];

	{
		_storeList pushback _x;
	} foreach _ems_glassesstore;

};
if(_condition == "ems_headgearstore") then {

	_ems_headgearstore = [
		["EF_Mcap_EMSB",nil,300,3,5],
		["H_Hat_brown",nil,300,3,5],
		["H_Hat_grey",nil,300,3,5],
		["H_Cap_marshal",nil,300,3,5],
		["H_Hat_tan",nil,300,3,5],
		["H_Beret_02",nil,300,3,5],
		["H_Beret_Colonel",nil,300,3,5],
		["Kio_Capital_Hat",nil,300,3,5]
	];

	{
		_storeList pushback _x;
	} foreach _ems_headgearstore;

};
if(_condition == "ems_misc") then {

	_ems_misc = [


	];

	{
		_storeList pushback _x;
	} foreach _ems_misc;

};
/*================================================= gang =====================================*/
if(_condition == "gang_gunstore") then {

	_gunStorePistols = [

		["RH_m9",nil,2500,1],
        ["RH_g17",nil,3000,1],
        ["RH_uspm",nil,4000,1],
		["RH_kimber_nw",nil,7500,1],
		["RH_tec9",nil,11000,1],
        ["RH_bull",nil,13000,1],
        ["RH_Deaglem",nil,15000,1],
        ["hlc_smg_MP5N",nil,17000,1],
        ["RH_m4",nil,40000,1],
		["RH_ar10",nil,55000,1],
		["hlc_rifle_g3a3",nil,60000,1],
		["hlc_rifle_M1903A1_unertl",nil,90000,1],
		["arifle_mas_ww2_mos",nil,160000,1],
		["optic_LRPS",nil,5000,3],		
		["arifle_mas_ww2_ppsh",nil,20000,1],
		["arifle_mas_ww2_tommy",nil,16000,1],
		["arifle_mas_ww2_sten",nil,15000,1]

	];

	{
		_storeList pushback _x;
	} foreach _gunStorePistols;

};


if(_condition == "gang_veststore") then {

	_gang_veststoree = [
        ["TRYK_V_ArmorVest_Delta",nil,8500,3,3],
		["TAC_V_tacv1_BK",nil,4500,3,3],
		["EF_SHF_BK",nil,700,3,3]




	];

	{
		_storeList pushback _x;
	} foreach _gang_veststoree;

};
if(_condition == "gang_uniformstore") then {

	_gang_uniformstore = [
		["vvv_hazmat",nil,4500,3,1],
		["vvv_traje_mafioso_F_1",nil,1600,3,1],
        ["vvv_traje_ejecutivo_1",nil,1400,3,1],
		["vvv_character_funcionario_1",nil,2000,3,1],
		["vvv_traje_jackoy5",nil,1200,3,1],
		["Gsg9_AirUniform_black",nil,900,3,1],
		["cg_invisbp",nil,9000,4,2],
		["B_Bergen_dgtl_F",nil,10000,4,2]

	];

	{
		_storeList pushback _x;
	} foreach _gang_uniformstore

};


if(_condition == "gang_glassesstore") then {

	_gang_glassesstore = [
        ["G_Bandanna_tan",nil,1,3,4],
        ["G_Bandanna_blk",nil,1,3,4],
        ["G_bandanna_aviator",nil,1,3,4],
        ["G_Bandanna_oli",nil,1,3,4],
        ["G_Balaclava_blk",nil,1,3,4],
        ["G_Balaclava_TI_blk_F",nil,1,3,4],
        ["Balaclava_Black_Gsg9",nil,1,3,4],
        ["G_Aviator",nil,1,3,4],
        ["G_AirPurifyingRespirator_01_F",nil,1,3,4],
        ["G_WirelessEarpiece_F",nil,1,3,4],
        ["G_Spectacles_Tinted",nil,1,3,4]


	];

	{
		_storeList pushback _x;
	} foreach _gang_glassesstore;

};
if(_condition == "gang_headgearstore") then {

	_gang_headgearstore = [
		["H_Hat_brown",nil,300,3,5],
		["H_Hat_grey",nil,300,3,5],
		["H_Hat_tan",nil,300,3,5]
	];

	{
		_storeList pushback _x;
	} foreach _gang_headgearstore;

};
if(_condition == "gang_misc") then {

	_gang_misc = [
		["NP_drillitem",nil,20000,3],
		["CG_HackingTool",nil,9000,3],
		["CG_Lockpick",nil,1000,3],
		["NP_DrugTable",nil,6500,3],
		["DemoCharge_Remote_Mag",nil,60000,3],
 		["RH_m9qd",nil,1900,3]


	];

	{
		_storeList pushback _x;
	} foreach _gang_misc;

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

	if(_condition == "gunstore" || _condition =="police_gunstore" || _condition =="mafia_gunstore") then {
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