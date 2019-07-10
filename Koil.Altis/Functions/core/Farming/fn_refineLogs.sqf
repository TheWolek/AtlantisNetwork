/*
Refine Logs trees by koil
*/
private["_localprotection"];

if(backpack player == "") exitwith { ["You need to grab a backpack before doing this!", true] spawn domsg; };

if(isNil "globalProtection") then { globalProtection = 0; };
if(globalProtection != 0) exitwith { ["Błąd - już trwa przetwarzanie", true] spawn domsg; };
_localProtection = 0;

if(vehSpawned distance player > 15 || isNil {vehSpawned} || isnull vehSpawned ) exitwith { ["Twoja ciężarówka jest za daleko!", true] spawn domsg; }; 
{ 
	if(_x distance vehspawned < 11) then {

		_localProtection = _localprotection + 1;
		globalProtection = globalProtection + 1;
		if(_localProtection != globalProtection) exitwith { [1,"Refine Pelt Script"] spawn client_fnc_anticheat; };
		detach _x;
		deletevehicle _x; 
		_sound = round(random 5);
		playSound3D ["CG_Jobs\sounds\sawing\saw.ogg", player, false, getPosasl player, 7, 1, 25];
		player additem "NP_Wood";	
		uisleep 0.25;
		if(dialog) then { closedialog 0; };
		["Przerabiasz drewno, nie ruszaj się!", true] spawn domsg;
	};
} forEach attachedObjects vehspawned;
["Drewno przerobione i umieszczone w ekwipunku", true] spawn domsg;  
totalLogs = 0;

globalProtection = 0;