//file: sendDeath
_unit = _this select 0;
if(isNull _unit) exitWith {};
["Medyk stwierdził zgon",true] remoteExec ["domsg",_unit];
[] remoteExec ["client_fnc_startFresh",_unit];
format["ActionLog: %1 (%2) stwierdził zgon dla %3 (%4)", name player, getPlayerUID player, name _unit, getPlayerUID _unit] remoteExec ["diag_log",2];