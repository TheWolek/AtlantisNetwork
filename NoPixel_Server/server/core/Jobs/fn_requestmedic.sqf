private["_nearestMedic"];

_player = _this select 0;

_nearest = currentEMS apply {[_player distance getPos _x, _x]};
_nearest sort true;
_nearest = (_nearest select 0) select 1;

[getPos _player, "Downed Person", "Location", currentEMS] remoteExec ["client_fnc_hudHelper", _nearest];
wantedTimer = time;
[format["Dispatch do %1: Zestrzelona osoba została zauważona %2.", _nearest getVariable "badgeNumber", mapGridPosition getPos _player], true] remoteExec ["domsg", currentEMS];