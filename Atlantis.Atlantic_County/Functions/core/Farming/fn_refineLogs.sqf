/*
Refine Logs trees by koil
*/
private["_localprotection"];

if(backpack player == "") exitwith { ["Musisz mieć plecak, zanim możesz to robić!", true] spawn domsg; };

if(isNil "globalProtection") then { globalProtection = 0; };
if(globalProtection != 0) exitwith { ["Błąd - W trakcie przetwarzania", true] spawn domsg; };
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
		//player additem "NP_Wood";	
		//vehspawned addItemCargo ["NP_WOOD",8];
		for "_i" from 0 to 7 do { player additem "NP_WOOD"; };
		sleep 2;
		if(dialog) then { closedialog 0; };
		["Przetwarzasz drewno, stój w miejscu!", true] spawn domsg;
	};
} forEach attachedObjects vehspawned;
["Przetworzone drewno zostało włożone do twojego plecaka", true] spawn domsg;  
totalLogs = 0;

globalProtection = 0;