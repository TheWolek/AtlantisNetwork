_target = _this select 0;

[format["%1 ma %2 miesięcy do końca wyroku.", name player, [secondsLeft/60,"MM:SS"] call BIS_fnc_secondsToString], true] remoteExec ["domsg", _target];