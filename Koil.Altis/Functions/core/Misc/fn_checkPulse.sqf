params["_target"];


if(deadPhase == 1) then {

    [format["Ta osoba jest sparaliżowana i zostanie uratowana przez Straż Pożarną w %1.", [(maxTime - time),"MM:SS"] call BIS_fnc_secondsToString], true] remoteExec ["domsg", _target];

};

if(deadPhase == 2) then {

    [format["Ta osoba jest nieprzytomna i zostanie uratowana przez Straż Pożarną w %1.", [(maxTime - time),"MM:SS"] call BIS_fnc_secondsToString], true] remoteExec ["domsg", _target];

};
