_shop = cursorObject;
_pos = getpos _shop;
_stolen = 0;
_amount = 0;

if(count currentcop == 0) exitwith { ["Bez policji nie ma zabawy!", true] spawn domsg; };

if(_shop getVariable["robbing",FALSE]) exitwith { ["Ktoś napada na ten sklep!", true] spawn domsg; }; 

if(isNil "robbedStores2") then { robbedstores2 = []; rs2modifier = 0; };

if(_shop IN robbedstores2) exitwith { ["W tym sklepie nie ma więcej pieniędzy!", true] spawn domsg; };

_shop setvariable ["robbing",true,true];
//rs2modifier = rs2modifier + 1;
//if(rs2modifier > count currentcop) then { rs2modifier = count currentcop; };
_policecount = count currentcop;
for "_i" from 0 to _policecount do {
	rs2modifier = rs2modifier + 75;
};

_counter = 0;
//_distpolice = round((player distance [1340.72,1000.15,0]) / 2000);

//if(_distpolice < 2) then { _distpolice=2; };

_failure = false;

[player] remoteexec ["server_fnc_robberyCall",2];
_marker = createMarker[format["robbery%1",round(random(100))], getpos _shop];
_marker setMarkerShape "ICON";
_marker setMarkerType "mil_warning";
_marker setMarkerText "UWAGA!! NAPAD NA SKLEP UWAGA!!";

if(count currentCop > 0) then {
	_nearest = currentCop apply {[player distance getPos _x, _x]};
	_nearest sort true;
	_nearest = (_nearest select 0) select 1;

	[_pos, "Napad na sklep", "Location", currentCop-currentMarshals-currentDetectives] remoteExec ["client_fnc_hudHelper", _nearest];
	[format["Wezwanie do %1: Trwa napad na sklep w okolicach %2.", name _nearest, mapGridPosition _pos], true] remoteExec ["domsg", currentCop-currentMarshals-currentDetectives];
};

_counter2 = 0;
while{true} do {
	_dist = player distance _shop;
	if ((player getVariable["dead",FALSE]) || currentWeapon player == "" || currentWeapon player == "Binocular" || currentWeapon player == "Rangefinder" || _dist >= 10) exitwith { _failure = true; };
	if(_failure) exitWith{ ["Przestałeś napadać!",true] spawn domsg;};
	sleep 2;
	_stolen = round(random(10));
	[_stolen,true,true] call Client_fnc_addMoneyToPlayer;
	_counter2 = _counter2 + _stolen; 
	if(_counter2 % 2 == 0) then {
		[format["+ $%1",_stolen],false] spawn domsg;
	};
//	["Add","Karma",random(3),"Stress"] call client_fnc_sustain;
	_counter = _counter + 1;
	//if((_distpolice - _counter) < 0.2) exitwith {};
	if(_counter >= 150) exitWith {}; //5 min 5*60/2
};

robbedstores2 pushback _shop; 

if(!_failure) then {
	_amount =  (rs2modifier * (_counter / 10));//5*100 *  (150/10)
	[_amount,true,true] call Client_fnc_addMoneyToPlayer; 
	[format["Okradłeś ten sklep na %1",(_amount+_stolen) call client_fnc_numberText], true] spawn domsg;
	format["Robbery_Log: %1 robbed store for %2",player, _amount+_stolen] remoteExecCall["diag_log",2];
	deleteMarker _marker;

} else { 
	[format["Okradłeś ten sklep na %1",_stolen call client_fnc_numberText], true] spawn domsg;
	format["Robbery_Log: %1 robbed store for %2",player, _stolen] remoteExecCall["diag_log",2];
	deleteMarker _marker;
};

if(count currentCop > 0) then {
	_nearest = currentCop apply {[player distance getPos _x, _x]};
	_nearest sort true;
	_nearest = (_nearest select 0) select 1;

	[_pos, "Napad na sklep - podejrzany uciekł", "Location", currentCop-currentMarshals-currentDetectives] remoteExec ["client_fnc_hudHelper", _nearest];
	[format["Wezwanie do %1: Podejrzany o napad w okolicach %2 uciekł ze miejsca napadu.",name _nearest, mapGridPosition _pos], true] remoteExec ["domsg",currentCop-currentMarshals-currentDetectives];
};

_shop setvariable ["robbing",nil,true];

if(robbedstores2 isEqualto []) then {
	[] spawn { uisleep 600; robbedstores2 = []; rs2modifier = 0; };
};

if(_amount > 10 || _stolen > 10) then {

	_GroundWeaponHolder = createVehicle["Land_Money_F", getPosATL player, [], 0, "CAN_COLLIDE"];

	_nearPlayers = [];
	{ _nearPlayers pushBack (name _x); if(count _nearPlayers > 5) exitWith {}; } forEach nearestObjects[player,["Man"],50];
	_nearPlayers = _nearPlayers call BIS_fnc_arrayShuffle;

	_daGun = (configfile >> "CfgWeapons" >> currentWeapon player >> "displayName") call BIS_fnc_getCfgData;

	_GroundWeaponHolder setVariable ["evidenceInformation", [player, name player, getplayeruid player, _shop, getText(configFile >> "cfgVehicles" >> typeOf _shop >> "displayName"), "", _daGun, currentMagazine player, 0, _nearPlayers, 3], true ];

	[player, _GroundWeaponHolder] spawn {
		params["_player","_GroundWeaponHolder"];
		uiSleep 120;
		if(isNull _GroundWeaponHolder) exitWith {};
	
		if(count currentDetectives > 0) then {
			_nearest = currentDetectives apply {[_player distance getPos _x, _x]};
			_nearest sort true;
			_nearest = (_nearest select 0) select 1;

			[getPos _GroundWeaponHolder, "Napad na sklep","Location", currentDetectives] remoteExec ["client_fnc_hudHelper", _nearest];
			[format["Wezwanie do %1: Doszło do napadu na sklep w okolicach %2.",name _nearest, mapGridPosition getPos _GroundWeaponHolder], true] remoteExec ["domsg", currentDetectives];
		};
	};
	
};