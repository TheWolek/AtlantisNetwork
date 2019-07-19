params ["_type","_number","_player","_pos"];
private ["_vehspawn","_veh","_endmission"];

if(count allplayers < 19) exitwith { ["Must be 19 players to start a drug run.", true] spawn domsg;};
	
if(isNil "drugcount") then { drugcount = 0; };

if(_type == 1) then { drugcount = drugcount + _number; } else { drugcount = drugcount - _number; };

if(drugcount > 100) then {

	drugcount0 = 0;

	_endmission = [1109.4,715.803,0.000686407];

	_vehspawn = [1199.49,7866.82,0.001436];

	_veh = createVehicle ["jf_gmc_vandura",_vehspawn,[],0,"NONE"];

	[_veh, ["white","glossy"]] remoteexec ["client_fnc_ivoryInitVehicle",2];

	_veh addMagazineCargoGlobal  ["CG_Heroin", 20 ];

	_veh lock 2;

	[_vehspawn,_endmission,currentMafia,_veh] spawn client_fnc_mafiaDrugEvent;

};