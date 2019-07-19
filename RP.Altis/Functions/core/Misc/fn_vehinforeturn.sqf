params ["_vehicle","_owedPlayers","_owedInformation","_object"];
private["_owner"];
_carowner = _vehicle select 8;
_owner = _carowner call BIS_fnc_getUnitByUid;


//copy from car shop - cunt.
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

if(_owner IN _owedPlayers) then {

	_pia = _owedplayers FIND _owner;

	_amount = (_owedinformation SELECT _pia) SELECT 1;

	_typeofVeh = (_vehicle select 1);
	_licensePlate = (_vehicle select 0);
	_value = 0;

	{
		if((_x select 0) == _typeofVeh) then { _value = (_x select 1) * 0.65; };
	}foreach _civilianVehicle;

	if(_value == 0) exitwith { ["Value of vehicle is 0", true] spawn domsg; };

	_amount = _amount - _value;
	if(_amount < 0) then { _amount = 0; };

	["set","MafiaMoney",_amount] remoteExec ["client_fnc_sustain",_owner];

	//add funds to mafia bank

	["mafiaBank", _value, "Add"] remoteexec ["server_fnc_setValue",2];


	[_licensePlate, _vehicle, nil, nil, nil, nil, nil, nil, nil, "Remove", _owner] remoteExec ["Server_fnc_garageUpdate",2];
	
	deletevehicle _object;
	//delete from database

} else {
	["The owner of this vehicle is not in debt to the Mafia.", true] spawn domsg;	
};