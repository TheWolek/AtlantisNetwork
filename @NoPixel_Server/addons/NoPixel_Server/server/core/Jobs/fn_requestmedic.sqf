private["_nearestMedic"];

_player = _this select 0;

_nearest = currentEMS apply {[_player distance getPos _x, _x]};
_nearest sort true;
_nearest = (_nearest select 0) select 1;

[getPos _player, "Ranna Osoba", "Location", currentEMS] remoteExec ["client_fnc_hudHelper", _nearest];
wantedTimer = time;
[format["Wezwanie do %1: Ranna osoba byłwa widziana w okolicach %2.", name _nearest, mapGridPosition getPos _player], true] remoteExec ["domsg", currentEMS];