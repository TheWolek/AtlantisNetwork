
if(_this select 0 == 1) then {
	_playerGear = player getVariable "lastSave";
	player setunitloadout _playerGear;
	[] spawn client_fnc_hangup;
	player setVariable["badgeNumber", ""];
	player setVariable["coplevel",nil,true];
};
if(myjob in["Mafia"]) then {
	[] spawn client_fnc_hangup;
};
[player,"don_empty"] call BIS_fnc_setUnitInsignia;
format ["Job_Log: %1 stopped working as %2",name player,myjob] remoteExecCall["diag_log",2];
myjob = "none";
taskrunning = false;
dispatch = false;
playertasks = [];
paycheck = 0;
//_pia = serverRadioPlayers FIND player;
//if(_pia != -1) then { serverRadioPlayers SET [_pia,objNull]; publicVariable "serverRadioPlayers"; [] spawn client_fnc_hangup; };


deletemarkerlocal format["job%1",getPlayerUID player];

[player] remoteExec ["server_fnc_quitJob",2];

if(!isNil "vehspawned") then {
	if(!isNull vehspawned) then {
		if(count attachedobjects vehspawned > 0) exitwith {};
		_players = crew (vehspawned);
		if(count _players == 0) then {
			{ 
					detach _x;
					deletevehicle _x; 
			} forEach attachedObjects vehspawned;
			deletevehicle vehspawned;
		};
	};
};
[] call client_fnc_hudwork;

[getpos player,"text to display","destroy"] spawn client_fnc_hudHelper;

[player, "getunitloadout", getunitloadout player] remoteExec ["Server_fnc_setVariable",2];

AllowJob = true;