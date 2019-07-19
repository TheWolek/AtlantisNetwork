params["_house"];

createDialog "garage3"; 

ctrlSetText [1000, "Garage"];

_garage = [];

[player, "govtbank"] remoteExec ["client_fnc_getremotevar",2];
waitUntil { !isNil "packet"; };

_num = round (random(4));	
if(_num == 0) then { _num = 1; };

if(myJob IN ['Cop','doc'] && lastGovtUseCar > time) exitWith {

	["You recently got a vehicle out, please wait 5 minutes.", true] spawn domsg;

};

if(myJob == "Legal") then {
	_garage pushBack "ivory_isf_1";
};

if(myJob == "Cop") then {

	if(player getvariable "cop" >= 1 && (typeof _house IN ['land_jf_sheriff_station_01','land_jf_sheriff_station_01'])) then {
		_garage pushback "ivory_cv_marked";
		_garage pushback "ivory_cv_unmarked";
		_garage pushback "ivory_taurus_unmarked";
        _garage pushback "ivory_taurus_marked";
        _garage pushback "ivory_charger_marked";
        _garage pushback "ivory_charger_unmarked";
	};

	if(player getvariable "cop" >= 6 && (typeof _house IN ['land_jf_sheriff_station_01','land_jf_sheriff_station_01'])) then {
		_garage pushback "ivory_isf_unmarked";
        _garage pushback "ivory_isf_marked";
        _garage pushback "ivory_rs4_unmarked";
        _garage pushback "ivory_rs4_marked";
        _garage pushback "ivory_m3_unmarked";
        _garage pushback "ivory_m3_marked";
        _garage pushback "ivory_suburban_marked";
        _garage pushback "ivory_suburban_slicktop";
        _garage pushback "ivory_suburban_unmarked";
        _garage pushback "ivory_wrx_unmarked";
        _garage pushback "ivory_wrx_marked";
        _garage pushback "ivory_wrx_slicktop";
        _garage pushback "ivory_evox_unmarked";
        _garage pushback "ivory_evox_marked";
        _garage pushback "ivory_evox_slicktop";
        _garage pushback "B_UAV_01_F";
        _garage pushback "B_Static_Designator_01_F";
	};

	if(player getvariable "cop" >= 10 && (typeof _house IN ['land_jf_sheriff_station_01','land_jf_sheriff_station_01'])) then {
		_garage pushback "ivory_isf_unmarked";
        _garage pushback "ivory_rev_marked";
        _garage pushback "ivory_rev_slicktop";
        _garage pushback "ivory_rev_unmarked";
	};

	if((player getvariable "cop" == 7 || 10 IN licenseArray || 11 IN licenseArray) && (str _house find "embarcadero" > -1) ) then { 
	    _garage pushback "B_Boat_Transport_01_F"; 
        _garage pushback "C_Scooter_Transport_01_F";
        _garage pushback "C_Boat_Civil_01_police_F";
        _garage pushback "B_CBS_WaterShadow730_F";
        _garage pushback "O_Boat_Armed_01_hmg_F";
	};

	if((player getvariable "cop" == 7 || 12 IN licenseArray || 13 IN licenseArray) && (typeof _house IN ['land_jf_sheriff_station_01','land_jf_sheriff_station_01'] || str _house find "em_heliport" > -1)  ) then {
		_garage pushback "jf_as350";
	};
	
};

if(myJob == "doc") then {

	if(player getvariable "doc" >= 1 && (typeof _house IN ['land_jf_sheriff_station_01','land_jf_sheriff_station_01'])) then {
		_garage pushback "red_savana_14_p_prison";
		_garage pushback "red_cvpi_06_p_sheriff";
		_garage pushback "red_cvpi_06_p_u_sheriff";
		_garage pushback "red_charger_12_p_u_sheriff";
		_garage pushback "red_charger_12_p_sheriff";
		_garage pushback "red_taurus_13_p_u_sheriff";
		_garage pushback "red_taurus_13_p_sheriff";
	};

	if(player getvariable "doc" >= 6 && (typeof _house IN ['land_jf_sheriff_station_01','land_jf_sheriff_station_01'])) then {
		_garage pushback "red_tahoe_13_p_u_sheriff";
		_garage pushback "red_tahoe_13_p_sheriff";
		_garage pushback "red_suburban_15_p_sheriff";
		_garage pushback "red_suburban_15_p_u_sheriff";
		_garage pushback "red_charger_15_p_u_sheriff";
		_garage pushback "red_charger_15_p_sheriff";
		_garage pushback "red_explorer_16_p_sheriff";
		_garage pushback "red_explorer_16_p_u_sheriff";
	};

	if((player getvariable "doc" == 7 || 10 IN licenseArray || 11 IN licenseArray) && (str _house find "embarcadero" > -1) ) then { 
	    _garage pushback "B_Boat_Transport_01_F"; 
        _garage pushback "C_Scooter_Transport_01_F";
        _garage pushback "C_Boat_Civil_01_police_F";
        _garage pushback "B_CBS_WaterShadow730_F";
        _garage pushback "O_Boat_Armed_01_hmg_F";
	};

	if((player getvariable "doc" == 7 || 12 IN licenseArray || 13 IN licenseArray) && (typeof _house IN ['land_jf_sheriff_station_01','land_jf_sheriff_station_01'] || str _house find "em_heliport" > -1)  ) then {
		_garage pushback "jf_as350";
	};
	
};

if(myJob == "EMS") then {

	if(player getvariable "ems" >= 1 && (typeof _house IN ['Land_buildingsfiredept1','Land_buildingshospital1'])) then {
		_garage pushback "red_ambulance_04_EMS";
		_garage pushback "red_ambulance_16_ems2";
		_garage pushback "red_f250_16_e_ems2";
	};

	if(player getvariable "ems" >= 6 && (typeof _house IN ['Land_buildingsfiredept1','Land_buildingshospital1'])) then {
		_garage pushback "red_tahoe_13_e_ems";
		_garage pushback "red_explorer_16_e_ems";
	};

	if((player getvariable "ems" == 10 || 25 IN licenseArray || 26 IN licenseArray) && (str _house find "embarcadero" > -1) ) then { 
		_garage pushback "B_CBS_WaterShadow730_F";
		_garage pushback "B_Boat_Transport_01_F";
		_garage pushback "C_Scooter_Transport_01_F";
		_garage pushback "C_Boat_Civil_01_rescue_F";
		_garage pushback "B_T_Lifeboat";
	};

	if((player getvariable "ems" == 10 || 23 IN licenseArray || 24 IN licenseArray) && (typeof _house IN ['Land_buildingsfiredept1','Land_buildingshospital1'] || str _house find "em_heliport" > -1)  ) then {
		_garage pushback "C_hh60j_unarmed_F";
		_garage pushback "jf_as350_4";
	};
	
};

if(myJob == "Mafia") then {
	_garage pushback "ivory_c";
	_garage pushback "jf_bmw_m5_f90_76561198089541702";

	if(player getvariable "mafia" >= 6) then { 
	    _garage pushback "red_suburban_15_black";
	    _garage pushback "red_sel300_72_black";
	};
};

if(myJob == "Mobster") then {
	_garage pushback "ivory_m3_2";
	_garage pushback "VVV_Cadillac_CTSV";

	if(player getvariable "mobster" >= 6) then { 
		_garage pushback "acj_Brinks";
	};
};

if(myJob == "Biker") then {
	_garage pushback "Acj_Harley_Davidson_Sons_Of_Anarchy";
	
	if(player getvariable "biker" >= 6) then { 
		_garage pushback "tortura_civ";
	};
};

if(Mayor) then {
	_garage pushback "shounka_limo_civ_noir";
};


{
	_class = _x;
	_vehicleName = [_x] call Client_fnc_getVehicleName; 

	_veh = lbAdd [1500, format["%1",_vehicleName] ];
	lbSetData [1500, _veh, format["%1",Str(_x)]];

}forEach _garage;

lbSetCurSel [1500, 0];

packet=nil;