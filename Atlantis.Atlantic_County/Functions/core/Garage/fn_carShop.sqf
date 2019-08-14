 disableSerialization;

_whatdo = _this select 0;

_textures = [
	["Oxford white","\colors\oxford_white.paa"],
	["Marina blue","\colors\marina_blue.paa"],
	["Hyper blue","\colors\hyper_blue.paa"],
	["Deep blue","\colors\deep_blue.paa"],
	["Imperial blue","\colors\imperial_blue.paa"],
	["Green pearl","\colors\green_pearl.paa"],
	["Green gem","\colors\green_gem.paa"],
	["Ignot silver","\colors\ignot_silver.paa"],
	["Silverstone","\colors\silverstone.paa"],
	["champagne quartz","\colors\champagne_quartz.paa"],
	["Kodial brown","\colors\kodial_brown.paa"],
	["bronze fire","\colors\bronze_fire.paa"],
	["Almandine brown","\colors\almandine_brown.paa"],
	["Ruby red","\colors\ruby_red.paa"],
	["Red hot","\colors\red_hot.paa"],
	["Austin yellow","\colors\austin_yellow.paa"],
	["Sakhir orange","\colors\sakhir_orange.paa"],
	["Sterling gray","\colors\sterling_gray.paa"],
	["Tuxedo black","\colors\tuxedo_black.paa"],
	["Obsidian black","\colors\obsidian_black.paa"]
];
_finishes = [["Glossy",0]];



_farmingVehicles = ["vvv_DOD_RamSRT_civ","jf_caprice_wagon"];

//remember to use this array in the mafia selling script & ALSO THE CAR UPDATE SCRIPT.
_civilianVehicle = [
	// type 1
	["d3s_KTM_1290_Super_Duke",82500],
	["d3s_Ducati_Monster_1200_S",95500],
	["d3s_Aprilia_Tuono_V4_1100_RR",100500],
	["d3s_Kawasaki_Ninja_H2R",122500],
	["d3s_Suzuki_Hayabusa",150000],
	["d3s_oka",7000],
	["d3s_giulietta_16",7000],
	["d3s_beetle_04",9500],
	["d3s_vesta_15",13500],
	["d3s_e89_12",11040],
	["d3s_e38_98",19500],
	["d3s_crown_98",22500],
	["d3s_wrx_17",29500],
	["d3s_taurus_eco_10",30500],
	["d3s_is_16",33500],
	["d3s_f87_17",42500],
	["d3s_charger_15",49500],
	["d3s_f87_17_ACH",53500],
	["d3s_savana_05",56000],
	["d3s_vklasse_17",60500],
	["d3s_challenger_15_SP",68500],
	["d3s_ctsv_16",73500],
	["d3s_civic_17",78500],
	["d3s_srthellcat_15",89500],
	["d3s_C63_14",95500],
	["d3s_continentalGT_18",101500],
	["d3s_camaro_16",115500],
	["d3s_boss_15_payback",127500],
	["d3s_amazing_ACS8_17",192500],
	["d3s_asterion_15",225500],
	["d3s_LaFerrari_14",295500],
	["d3s_ghost_18_EWB",551500],
	["d3s_durango_18",35500],
	["d3s_escalade_16_pt",45500],
	["d3s_tahoe_ltz_08",35500],
	["d3s_explorer_13",43500],
	["d3s_cayenne_16",65500],
	["d3s_bentayga_18",56500],
	["d3s_fiesta_16",20000]

];

if(str CursorObject find "embarcadero" > -1) then {
	_type = "BOAT";
	_civilianVehicle = [
		["B_Lifeboat",20000],
		["C_Scooter_Transport_01_F",15000],
		["C_Boat_Transport_02_F",100000],		
		["C_Boat_Civil_01_F",150000]
	];
};


if(str CursorObject find "hangar" > -1) then {
	_type = "AIR";
	_civilianVehicle = [
		["B_Heli_Light_01_F",100000],
		["d3s_AS_365",300000],
		["C_Plane_Civil_01_F",550000],
		["C_Plane_Civil_01_racing_F",550000]
	];
};

if(_whatdo == "NEW") then {
	_display = findDisplay 1444;
	_list = _display displayCtrl 1500;

	lbClear _list;

	{
		_class = _x select 0;
		_cost = _x select 1;
		_vehicleName = [(_x select 0)] call Client_fnc_getVehicleName;

		_addedprice = (_cost / 100) * taxRate;
		_cost = _addedprice + _cost;

		if(_class IN _farmingvehicles) then { 
			_list lbAdd format["%2 %1 (Auto Refine)",_vehicleName, _cost call client_fnc_numberText]; 
		} else { 
			_list lbAdd format["%2 %1",_vehicleName, _cost call client_fnc_numberText]; 
		};



		_list lbSetdata [(lbSize _list)-1,str([_class, _cost - _addedprice])];
	} foreach _civilianVehicle;

	_list = _display displayCtrl 1501;
	lbClear _list;
	{
		//_TextureDisplayName = getText(configFile >> "CfgIvoryTextures" >> _x >> "displayName");
		_list lbAdd format["%1",_x select 0];
		_list lbSetdata [(lbSize _list)-1,_x select 1];
	} foreach _textures;

	_list = _display displayCtrl 1502;
	lbClear _list;
	{
		_class = _x select 0;
		_cost = _x select 1;	
		_FinishDisplayName = getText(configFile >> "CfgIvoryMaterials" >> _class >> "displayName");
		_list lbAdd format["COST: %2 - %1",_FinishDisplayName,_cost call client_fnc_numberText];
		_list lbSetdata [(lbSize _list)-1,str([_class, _cost])];
	} foreach _finishes;

	lbSetCurSel [1500, 0];
	lbSetCurSel [1501, 0];
	lbSetCurSel [1502, 0];

};

_index = lbCurSel (1500);
_status = lbData[1500, _index];
_SELECTEDVEHICLE = call compile format["%1", _status];
_selectedvehicle = _selectedvehicle select 0;

_index = lbCurSel (1501);
_status = lbData[1501, _index];
_SELECTEDCOLOR = _status;
//_SELECTEDCOLOR = getText(configfile >> "CfgIvoryTextures" >> _SELECTEDCOLOR >> "texture");

_index = lbCurSel (1502);
_status = lbData[1502, _index];
_SELECTEDFINISH = call compile format["%1", _status];
_SELECTEDFINISH = _SELECTEDFINISH select 0;
_SELECTEDFINISH = getText(configfile >> "CfgIvoryMaterials" >> _SELECTEDFINISH >> "material");

if(_whatdo == "CAR" || isNil "spawnedvehicle") then {
	
	if(!isNil "spawnedvehicle") then {
		deletevehicle spawnedvehicle;
	};

	player allowdamage false;
	_dir = 180;

	//[1060.8,4128.42,0.00143909] airfield pos
	if(_SELECTEDVEHICLE iskindof "car") then {
		spawnedvehicle = _SELECTEDVEHICLE createvehiclelocal [1060.8,4128.42,1];
		spawnedvehicle setpos [1060.8,4128.42,1];
		spawnedvehicle setdir _dir;
	};

	if(_SELECTEDVEHICLE iskindof "ship") then {
		spawnedvehicle = _SELECTEDVEHICLE createvehiclelocal [696.876,416.723,3.13335];
		spawnedvehicle setpos [696.876,419.723,3.13335];
		_dir = 180;
		spawnedvehicle setdir _dir;
	};

	if(_SELECTEDVEHICLE iskindof "Air") then {
		spawnedvehicle = _SELECTEDVEHICLE createvehiclelocal [1060.8,4128.42,0.00143909];
		spawnedvehicle setpos [1060.8,4128.42,0.00143909];
		_dir = 180;
		spawnedvehicle setdir _dir;
	};

	spawnedvehicle animate["spoiler", 0];

	spawnedvehicle allowdamage false;
	client_kcCamera camSetTarget spawnedvehicle;
	client_kcCamera camSetRelPos [4,1,2];
	client_kcCamera camSetFOV .99;
	client_kcCamera camCommit 0;

	spawnedVehicle setObjectTexture	[0, _SELECTEDCOLOR];
	spawnedVehicle setObjectMaterial [0, _SELECTEDFINISH];
	player allowDamage true;
};

if((spawnedvehicle iskindof "car" || spawnedvehicle iskindof "air") && !isNil "spawnedvehicle") then {
	spawnedVehicle setObjectMaterial [0, _SELECTEDFINISH];

	spawnedVehicle setObjectTexture	[0, _SELECTEDCOLOR];
};

















_medicVehicles = [
"Jonzie_ambluance",
"ivory_evox_ems"
];

_policeVehicle = [

"ivory_suburban_marked",

"ivory_rs4_marked",
"ivory_wrx_marked",
"ivory_evox_marked",
"ivory_isf_marked",

"ivory_suburban_unmarked",
"ivory_rs4_unmarked",
"ivory_wrx_unmarked",
"ivory_evox_unmarked",
"ivory_isf_unmarked",

"ivory_suburban_slicktop",
"ivory_rs4_slicktop",
"ivory_wrx_slicktop",
"ivory_evox_slicktop",
"ivory_isf_slicktop"

];


_specialVehicleList = [

//buggys no colors

"shounka_buggy",
"shounka_buggy_bleufonce",
"shounka_buggy_grise",
"shounka_buggy_jaune",
"shounka_buggy_noir",
"shounka_buggy_orange",
"shounka_buggy_rose",
"shounka_buggy_rouge",
"shounka_buggy_violet",

//utility

"Jonzie_flatbed_roadtrain",
"Jonzie_flatbed",
"Jonzie_curtain_roadtrain",
"Jonzie_Curtain",

"Jonzie_Log_Truck",
"Jonzie_Tanker_Truck",
"Jonzie_Tow_Truck",

"ivory_190e_taxi",
"ivory_rs4_taxi",
"Jonzie_Forklift",
"Jonzie_Transit",

//racing F1
"vvv_formula1_tmac",
"vvv_formula1_sayeed",
"vvv_formula1_Ciggy",
"vvv_formula1_Doge",
"vvv_formula1_ferrari",
"vvv_formula1_mario",
"vvv_formula1_marvel",
"vvv_formula1_mclaren",
"vvv_formula1_mingsucks",
"vvv_formula1_netflix1",
"vvv_formula1_netflix2",
"vvv_formula1_fb",
"vvv_formula1_andy",
"vvv_formula1_redbull",
"vvv_formula1_thad",
"vvv_formula1_twitch",

"vvv_seatleon_2014_arruabarrena",
"vvv_seatleon_2014_baus",
"vvv_seatleon_2014_briche_blue",
"vvv_seatleon_2014_carbonell",
"vvv_seatleon_2014_comini",
"vvv_seatleon_2014_dediego",
"vvv_seatleon_2014_font",
"vvv_seatleon_2014_giao",
"vvv_seatleon_2014_grise",
"vvv_seatleon_2014_hernandez",
"vvv_seatleon_2014_mourgues",
"vvv_seatleon_2014_oriola",
"vvv_seatleon_2014_rueda",
"vvv_seatleon_2014_schmarl",
"vvv_seatleon_2014_veglia",
"vvv_seatleon_2014_vinyes",
"vvv_seatleon_2014_weber"

];



















_medicVehicles = [
"Jonzie_ambluance",
"ivory_evox_ems"
];

_policeVehicle = [

"ivory_suburban_marked",

"ivory_rs4_marked",
"ivory_wrx_marked",
"ivory_evox_marked",
"ivory_isf_marked",

"ivory_suburban_unmarked",
"ivory_rs4_unmarked",
"ivory_wrx_unmarked",
"ivory_evox_unmarked",
"ivory_isf_unmarked",

"ivory_suburban_slicktop",
"ivory_rs4_slicktop",
"ivory_wrx_slicktop",
"ivory_evox_slicktop",
"ivory_isf_slicktop"

];


_specialVehicleList = [

//buggys no colors

"shounka_buggy",
"shounka_buggy_bleufonce",
"shounka_buggy_grise",
"shounka_buggy_jaune",
"shounka_buggy_noir",
"shounka_buggy_orange",
"shounka_buggy_rose",
"shounka_buggy_rouge",
"shounka_buggy_violet",

//utility

"Jonzie_flatbed_roadtrain",
"Jonzie_flatbed",
"Jonzie_curtain_roadtrain",
"Jonzie_Curtain",

"Jonzie_Log_Truck",
"Jonzie_Tanker_Truck",
"Jonzie_Tow_Truck",

"ivory_190e_taxi",
"ivory_rs4_taxi",
"Jonzie_Forklift",
"Jonzie_Transit",

//racing F1
"vvv_formula1_tmac",
"vvv_formula1_sayeed",
"vvv_formula1_Ciggy",
"vvv_formula1_Doge",
"vvv_formula1_ferrari",
"vvv_formula1_mario",
"vvv_formula1_marvel",
"vvv_formula1_mclaren",
"vvv_formula1_mingsucks",
"vvv_formula1_netflix1",
"vvv_formula1_netflix2",
"vvv_formula1_fb",
"vvv_formula1_andy",
"vvv_formula1_redbull",
"vvv_formula1_thad",
"vvv_formula1_twitch",

"vvv_seatleon_2014_arruabarrena",
"vvv_seatleon_2014_baus",
"vvv_seatleon_2014_briche_blue",
"vvv_seatleon_2014_carbonell",
"vvv_seatleon_2014_comini",
"vvv_seatleon_2014_dediego",
"vvv_seatleon_2014_font",
"vvv_seatleon_2014_giao",
"vvv_seatleon_2014_grise",
"vvv_seatleon_2014_hernandez",
"vvv_seatleon_2014_mourgues",
"vvv_seatleon_2014_oriola",
"vvv_seatleon_2014_rueda",
"vvv_seatleon_2014_schmarl",
"vvv_seatleon_2014_veglia",
"vvv_seatleon_2014_vinyes",
"vvv_seatleon_2014_weber"

];