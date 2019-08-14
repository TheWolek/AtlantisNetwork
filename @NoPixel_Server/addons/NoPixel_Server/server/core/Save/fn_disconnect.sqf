//file: fn_disconnect
// author: TheWolek

params["_player","_id","_uid","_name"];

if(_player in CurrentCop) then {
	_pia = currentCop find _player;
	currentCop deleteAt _pia;
	publicVariable "currentCop";
};

if(_player in CurrentEMS) then {
	_pia = CurrentEMS find _player;
	CurrentEMS deleteAt _pia;
	publicVariable "CurrentEMS";
};

if(_player in currentJudges) then {
	_pia = currentJudges find _player;
	currentJudges deleteAt _pia;
	publicVariable "currentJudges";
};

if(_player in currentPubDefs) then {
	_pia = currentPubDefs find _player;
	currentPubDefs deleteAt _pia;
	publicVariable "currentPubDefs";
};

deleteVehicle _player;