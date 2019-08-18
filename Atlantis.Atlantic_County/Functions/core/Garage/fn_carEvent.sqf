[] spawn {
if(count allplayers < 20) exitwith {};
	private["_pos"];
	_civveh = [

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
		["d3s_ctsv_16",100500],
		["d3s_civic_17",110500],
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

	while{true} do {
		_pos = [random(10000),random(10000),0];
		_isWater = surfaceIsWater (_pos);
		if(!_isWater) exitwith {  };	
		uisleep 2;
	};

	_spawnedCar = _civveh call BIS_FNC_SELECTRANDOM;

	_spawnedCar = (_spawnedCar select 0) createvehicle _pos;

	_spawnedCar setvariable ["hotcar",true,true];
	_spawnedCar lock 2;

	_markerstr = createMarker ["hotcarmarker",_pos];
	_markerstr setMarkerShape "ICON";
	_markerstr setMarkerType "hd_dot";
	_markerstr setmarkertext "Skradziony samochód";
	["Skradziony samochód został oznaczony na mapie"] remoteexec ["client_fnc_announceCivilians",-2];

	uisleep 600;

	deletemarker "hotcarmarker";
};