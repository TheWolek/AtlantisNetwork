params["_house"];
if(myJob IN ['Cop','doc'] && lastGovtUseCar > time) exitWith {

	["Niedawno wyjąłeś samochód z garażu, musisz poczekać 5 minut.", true] spawn domsg;

};

createDialog "garage3"; 

ctrlSetText [1000, "Garage"];

_garage = [];

[player, "govtbank"] remoteExec ["client_fnc_getremotevar",2];
waitUntil { !isNil "packet"; };

_num = round (random(4));	
if(_num == 0) then { _num = 1; };

if(myJob == "Legal") then {
	if(player getVariable "legal" >= 1) then {
		_garage pushBack "d3s_malibu_18_LT";
		_garage pushBack "d3s_malibu_18_LT";
	};

	if(player getVariable "legal" >= 2) then {
		_garage pushBack "d3s_xe_15";
		_garage pushBack "d3s_c63_14";
	};

};

if(myJob == "Cop") then {
	if(player getvariable "cop" >= 1) then {
		_garage pushback "GM_MPD_CVPI";
		_garage pushback "d3s_taurus_FPI_10";
        _garage pushback "GM_SIO_RANGEROVER";
	};

	if(player getvariable "cop" >= 4 ) then {
		_garage pushback "GM_MPD_CHARGER";
        _garage pushback "GM_CHARGER_CHP_LB";
        _garage pushback "GM_CHARGER_CHP_W_LB";
	};

	if(player getVariable "cop" >= 5 ) then {
		_garage pushback "GM_MPD_DURANGO";
        _garage pushback "GM_MPD_RAPTOR";	
	};

	//PD air
	if(player getVariable "cop" >= 5 || 13 IN licenseArray) then {
		_garage pushback "B_Heli_Light_01_F";
	};

	//PD air leader
	if(player getVariable "cop" >= 6 || 12 IN licenseArray) then {
		_garage pushback "d3s_AS_365";
	};

	//PD SWAT
	if(player getVariable "cop" >= 5 && (9 IN licenseArray || 8 in licenseArray)) then {
		_garage pushback "GM_SWAT_DURANGO";
        _garage pushback "GM_SWAT_RAPTOR";
        _garage pushback "GM_SWAT_TAHOE";
        _garage pushback "d3s_fseries_17_P3E";
	};

	if(player getVariable "cop" >= 7) then {
		_garage pushback "d3s_vklasse_17_UNM";
        _garage pushback "d3s_savana_PSV";
        _garage pushback "GM_SIO_CHARGER_SRT";
        _garage pushback "GM_SIO_CTSV";
		_garage pushback "d3s_f10_12_UNM";		
	};
	if(player in currentMarshals || player in currentDetectives) then {
		_garage pushback "chvwT6_raid";
		_garage pushback "GM_SWAT_TAHOE";
		_garage pushback "d3s_f10_12_UNM";
		_garage pushback "d3s_taurus_UNM_10";

	};
	/*

	if((player getvariable "cop" == 7 || 10 IN licenseArray || 11 IN licenseArray) && (str _house find "embarcadero" > -1) ) then { 

	};

	if((player getvariable "cop" == 7 || 12 IN licenseArray || 13 IN licenseArray) && (typeof _house IN ['Land_ScriptOase_PoliceHeadquarters','Land_PoliceStation'] || str _house find "em_heliport" > -1)  ) then {

	};
	*/
	
};

if(myJob == "doc") then {

	if(player getvariable "doc" >= 1) then {

	};

	if(player getvariable "doc" >= 6) then {

	};

	if((player getvariable "doc" == 7 || 10 IN licenseArray || 11 IN licenseArray) && (str _house find "embarcadero" > -1) ) then { 

	};

	if((player getvariable "doc" == 7 || 12 IN licenseArray || 13 IN licenseArray) ) then {

	};
	
};

if(myJob == "EMS") then {

	if(player getvariable "ems" >= 1 ) then {
		_garage pushback "d3s_fseries_17_EMS";
		_garage pushback "d3s_fseries_17_Rescue";
		_garage pushback "d3s_fseries_17_TOW";
		_garage pushback "d3s_savana_EMS";
	};

	if(player getvariable "ems" >= 3 ) then {
		_garage pushback "d3s_uaz_3162_EMS";
		_garage pushback "d3s_vklasse_17_EMS";
		_garage pushback "d3s_uaz_3165M_EMS";
	};

	if(player getVariable "ems" >= 5 ) then {
		_garage pushback "GM_ECFD_CHARGER";
		_garage pushback "d3s_charger_15_EMS";
		_garage pushback "d3s_explorer_EMS_13";
		_garage pushback "d3s_titan_17_TAR";
	};

	if(player getVariable "ems" >= 7 ) then {
		_garage pushback "d3s_svr_17_EMS";
		_garage pushback "d3s_g500_18_EMS";
		_garage pushback "d3s_cla_15_EMS";
	};

	if((player getvariable "ems" == 8 || 25 IN licenseArray || 26 IN licenseArray) ) then { 
		_garage pushback "B_CBS_WaterShadow730_F";
		_garage pushback "B_Boat_Transport_01_F";
		_garage pushback "C_Scooter_Transport_01_F";
		_garage pushback "C_Boat_Civil_01_rescue_F";
		_garage pushback "B_T_Lifeboat";
	};

	if((player getvariable "ems" == 10 || 23 IN licenseArray || 24 IN licenseArray)  ) then {
		_garage pushback "C_hh60j_unarmed_F";
	};
	
};

if(myJob == "Mafia") then {
	_garage pushback "d3s_malibu_18_LT";
	_garage pushback "d3s_kodiaq_17";

	if(player getVariable "mafia" >= 3) then {
		_garage pushBack "d3s_ghost_18_EWB_III";	
		_garage pushBack "d3s_tahoe_08";	
	};
	if(player getvariable "mafia" >= 6) then { 
	    _garage pushback "d3s_cayenne_16";
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