_suspect = lbCurSel 1120;
_suspect = lbData [1120, _suspect];
_suspect = call compile _suspect;

closeDialog 0;

[[player], {
    params["_target"];

    [myhouse, format["%1's Home",name player], "Location", _target] remoteexec ["client_fnc_hudHelper", _target];
    [format["Dom %1 został znaznaczony na mapie.", name player], true] remoteExec ["domsg", _target];

}] remoteExec["bis_fnc_spawn", _suspect];