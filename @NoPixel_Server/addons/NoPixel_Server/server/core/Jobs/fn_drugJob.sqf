params ["_type","_number","_player","_pos"];
private ["_vehspawn","_veh","_endmission","_amount"];

if(count allplayers < 1) exitwith { ["Za mało graczy, aby rozpocząć zadanie", true] remoteExec["domsg", currentMafia]; };
	
if(isNil "drugcount") then { drugcount = 0; };

if(_type == 1) then { drugcount = drugcount + _number; } else { drugcount = drugcount - _number; };

publicVariable "drugcount";

if(drugcount >= 200) then {

		drugcount = 0;
		publicVariable "drugcount";

		_endmission = [1083.07,4126.32,0];

		_vehspawnarr = [[5392.3,5855.11,0],[5456.02,4236.2,0],[3618.88,1479.71,0],[1555.06,1090.91,0]];
		_vehspawn = selectRandom _vehspawnarr;

		_veharr = ["d3s_kamaz_tent","d3s_kraz_6316","d3s_kamaz_6350"];
		_veh = createVehicle [(selectRandom _veharr),_vehspawn,[],0,"NONE"];

		clearMagazineCargoGlobal _veh;
		clearWeaponCargoGlobal _veh;
		clearItemCargoGlobal _veh;

		_veh addMagazineCargoGlobal  ["CG_Heroin", 90];

		_veh lock 2;



		[_vehspawn,_endmission,currentMafia,_veh] remoteexec ["client_fnc_mafiaDrugEvent",currentMafia];

} else {

	[format["%1 narkotyków dodane do zrzutu narkotyków (Wymagane 50)", drugcount], true] remoteExec["domsg", currentMafia];

};

