params ["_type","_number","_player","_pos"];
private ["_vehspawn","_veh","_endmission","_amount"];

if(count allplayers < 1) exitwith { ["Not enough players to add to event..", true] remoteExec["domsg", currentMafia]; };
	
if(isNil "drugcount") then { drugcount = 0; };

if(_type == 1) then { drugcount = drugcount + _number; } else { drugcount = drugcount - _number; };

publicVariable "drugcount";

if(drugcount >= 375) then {

		drugcount = 0;
		publicVariable "drugcount";

		_endmission = [1109.4,715.803,0.000686407];

		_vehspawn = [1199.49,7866.82,0.001436];

		_veh = createVehicle ["jf_gmc_vandura",_vehspawn,[],0,"NONE"];

		clearMagazineCargoGlobal _veh;
		clearWeaponCargoGlobal _veh;
		clearItemCargoGlobal _veh;

		_veh addMagazineCargoGlobal  ["CG_Heroin", 90];

		_veh lock 2;



		[_vehspawn,_endmission,currentMafia,_veh] remoteexec ["client_fnc_mafiaDrugEvent",currentMafia];

} else {

	[format["%1 drugs have been added to the dump. (375 Needed)", drugcount], true] remoteExec["domsg", currentMafia];

};

