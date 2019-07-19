params[["_type",0]];

if (vehicle player == player) exitwith { ["You need to be inside your vehicle to upgrade it!", true] spawn domsg; };
_PROCESS = vehicle player;
_civilianVehicle = [
	// type 1
	["ivory_190e",3300],
	["red_beetle_66_black",3300],
	["jf_fairlane",3300], 
	["jf_diplomat",5900], 
	["jf_crownvic",5900], 
	["ivory_gti",6000],	
	["jf_silverado",6900], 
	["jf_c10",7900], 
	["ivory_e36",8000],
	["jf_cherokee",8900], 
	["jf_caprice_wagon",8900], 
	["jf_caprice",9900], 
	["jf_buick_century",9900], 

	// type 2
	["jf_Camper_Mid",10000],	
	["jf_e150",10000],	
	["jf_f150",10000],	
	["jf_f350",14000], 
	["jf_ltd_cv",15900], 

	// type 3
	["ivory_gt500",22000],
	["red_fusion_10_black",24000], 
	["jf_gmc_vandura",24000], 

	// type 4
	["jf_tahoe",31000],
	["red_ram_06_black",31000],  
	["jf_mustang",87500], 
	["jf_levante",136000], 
	["jf_amg_gt",436000], 
	["ivory_rs4",40000],
	["ivory_isf",42000],
	["ivory_m3",46000],	
	["red_explorer_16_black",46000],	
	["jf_explorer",46000],	

	// type 5
	["ivory_evox",55000],
	["ivory_wrx",56000],	
	["ivory_elise",59000],	
	["ivory_supra",62000],	
	["ivory_r34",60000],
	["jf_bmw_m5",65000],
	// type 6
	["ivory_suburban",70000],
	["jf_tesla_s",172000], 
	["jf_bentley_continental",120000],
	["ivory_c",102000],	
	["jf_tesla_x",120000], 
	["ivory_r8",120000],
	["ivory_r8_spyder",125000],
	["jf_gtr",320000],	
	["ivory_911",120000],
	["ivory_supra_topsecret",140000],	
	["ivory_lp560",170000],	
	["ivory_mp4",195000],

	// type 7
	["red_porsche_12_black",265000],
	["ivory_lfa",265000],
	["red_f12_13_black",295000],
	["red_corvette_14_black",244000], 
	["ivory_f1",320000],
	["ivory_rev",340000],
	["ivory_veyron",390000],
	["ivory_ccx",450000]
];
_num = 0;
_reprocess = false;
_price = 5000;
if(typeof _PROCESS IN ["ADM_1964_Impala","ADM_1969_Charger","ADM_1969_Camaro","ADM_1964_Impala_1","ADM_1969_Charger_1","ADM_1969_Camaro_1","ivory_f1_1"]) then {
	_reprocess = true;
	_price = 500;
} else {

	_typeof = TYPEOF (_PROCESS) splitString "_1" joinString "_";
	_typeof = _typeof splitString "_2" joinString "_";
	{ if(_typeof == _x select 0) then { _price = (_x select 1) * 0.25; }; } foreach _civilianVehicle;
};


if(_type == 1) exitWith {

	_price

};


_vehicle = _PROCESS;
_oldveh = _vehicle;
_vehicle = typeof _vehicle;
_attempt = false;
_newVehicle = _vehicle;

if(_reprocess) then {

		if(_vehicle == "ADM_1964_Impala") exitwith { _attempt = true; _newVehicle = format["%1_1",_vehicle]; };
		if(_vehicle == "ADM_1964_Impala_1") exitwith { _attempt = true; _newVehicle = "ADM_1964_Impala_2"; };
		if(_vehicle == "ADM_1964_Impala_2") exitwith { _attempt = false; };

		if(_vehicle == "ADM_1969_Charger") exitwith { _attempt = true; _newVehicle = format["%1_1",_vehicle]; };
		if(_vehicle == "ADM_1969_Charger_1") exitwith { _attempt = true; _newVehicle = "ADM_1969_Charger_2"; };
		if(_vehicle == "ADM_1969_Charger_2") exitwith { _attempt = false; };

		if(_vehicle == "ADM_1969_Camaro") exitwith { _attempt = true; _newVehicle = format["%1_1",_vehicle]; };
		if(_vehicle == "ADM_1969_Camaro_1") exitwith { _attempt = true; _newVehicle = "ADM_1969_Camaro_2"; };
		if(_vehicle == "ADM_1969_Camaro_2") exitwith { _attempt = false; };		

		if(_vehicle == "ivory_f1_1") exitwith { _attempt = true; _newVehicle = "ivory_f1_2"; };
		if(_vehicle == "ivory_f1_2") exitwith { _attempt = false; };	

} else {

	if (_vehicle find "_2" == -1 && _vehicle find "_1" == -1) then {

			_newVehicle = format["%1_1",_vehicle];
			_attempt = isClass (ConfigFile >> "CfgVehicles" >> _newVehicle);

	} else {

			_vehicle = _vehicle splitString "_1" joinString "_";
			_newVehicle = format["%1_2",_vehicle];
			_attempt = isClass (ConfigFile >> "CfgVehicles" >> _newVehicle);

	};
	
};

if(_attempt && _oldveh in current_cars) then {


	_cashCheck = [1, _price] call Client_fnc_checkMoney;
	if!(_cashCheck) exitwith { [format["%1 - You do not have enough money to pay for this!",_price call client_fnc_numberText], true] spawn domsg; };	
	
	[_price] call Client_fnc_removecash;

 	_car = _oldveh getvariable "information";

 	if(isNil "_car") exitwith { ["You can not upgrade this vehicle...", true] spawn domsg; };

	_garage = player getVariable "garage";

	_car SET [1,_newVehicle];
	_garage pushback _car;

	player setVariable ["garage", _garage, false];

	_numberplate = _car select 0;

	_pia = Current_Cars find _car;
	Current_Cars deleteAt _pia;
	deletevehicle _oldveh;

	[_garage,_numberPlate,_newVehicle,player,getPlayerUID player,Current_Cars] remoteexec ["server_fnc_upgradeVehicle",2];

} else {
	["This car is either already upgraded or unable to be upgraded!", true] spawn domsg;
};