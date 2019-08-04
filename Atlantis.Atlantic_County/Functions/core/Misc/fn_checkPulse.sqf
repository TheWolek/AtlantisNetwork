params["_target"];


if(deadPhase == 1) then {

    [format["Ta osoba jest sparaliżowana i zostanie uratowana za %1 przez EMS.", [(maxTime - time),"MM:SS"] call BIS_fnc_secondsToString], true] remoteExec ["domsg", _target];

};

if(deadPhase == 2) then {

    [format["Ta osoba jest nieprzytomna i zostanie uratowana za %1 przez EMS.", [(maxTime - time),"MM:SS"] call BIS_fnc_secondsToString], true] remoteExec ["domsg", _target];

};
