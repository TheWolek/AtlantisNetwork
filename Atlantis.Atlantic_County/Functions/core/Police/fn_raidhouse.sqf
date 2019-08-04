private["_suspect3","_warrant3"];

_player = _this select 0;

if (!(isNil "_player")) exitWith {

	[myhouse, format["%1's House",name player], "Job"] remoteexec ["client_fnc_hudHelper", _player];

	[[player, _player, myhouse], {
		_suspect = _this select 0;
		_officer = _this select 1;
		_myhouse = _this select 2;

		waitUntil {uiSleep 1; getPos _officer distance _myhouse < 20}; 
		[_suspect, _officer] remoteExec ["server_fnc_retreiveHouse",2]; 
	}] remoteExec ["bis_fnc_spawn", _player]

};

_suspect = lbCurSel 1120;
_warrant = lbCurSel 911;

_suspect2 = lbData [1120, _suspect];
_warrant2 = lbData [911, _warrant];

if(_suspect2 != "") then { _suspect3 = (call compile _suspect2); };
if(_warrant2 != "") then { _warrant3 = (call compile _warrant2); };

if (_warrant > -1) exitWith {

	if (_warrant3 select 6 != 3) exitWith { ["Musisz wybrać nakaz.", true] spawn domsg; };
	if (_suspect == -1) exitWith { ["Musisz wybrać osobę.", true] spawn domsg; };
	if ((getplayeruid _suspect3) != (_warrant3 select 2)) exitWith { ["Musisz wybrac poprawną osobę.", true] spawn domsg; };
	if (_warrant3 select 7 == 0) exitWith { ["Ten nakaz nie jest podpisany.", true] spawn domsg; };
	if !(myJob == "Cop" && (player getVariable 'cop' >= 8 || 8 IN licenseArray || 9 IN licenseArray || player IN currentMarshals)) exitWith { ["Aby zacząć nalot na dom musisz być członkiem SWAT, Supervisorem lub Marshalem.", true] spawn domsg; };

	[player] remoteexec ["client_fnc_raidhouse", _suspect3];

	[_warrant3, name player, getplayeruid player] remoteExec ["Server_fnc_wantedRemove",2];

	closedialog 0;

};

if (_suspect > -1) exitWith {

	if ( myJob != "DA" && !(myJob == "Cop" && (player IN currentDetectives || (player getVariable "cop") >= 6 )) ) exitWith { ["Musisz być detektywem, supervisorem lub prokuratorem, aby wydać nakaz.", true] spawn domsg; };

	if (count nearestobjects[player,["Land_buildingscourthouse1"],100] == 0) exitWith { ["Musisz pójść do sądu, aby wydać nakaz. Nie zapomnij poprozmawiac z sędzią.", true] spawn domsg; };
	
	currentcursortarget = _suspect3;

	closedialog 0;
	sleep 0.15;
	createDialog "insertSearchHouse";

};