params["_player"];

[[player],{
    params["_player"];

    _bail = client_level_array select 18;

    if(_bail == 0) exitWith { ["Ta osoba nie ma żadnych kaucji.", true] remoteExec["domsg",_player]; };

    ["Set", "Bail", 0] call client_fnc_sustain;

    [getplayeruid player, name _player, getplayeruid _player] remoteExec ["Server_fnc_closeBail",2];

    [format["Ta osoba nie otrzymała z powortem swoich %1.", _bail call client_fnc_numberText], true] remoteExec["domsg", _player];
    [format["Nie otrzymałeś z powrotem swoich %1.", _bail call client_fnc_numberText], true] remoteExec["domsg", player];

    //["bail", format["%1 (%2) has closed the %3 bail of %4 (%5).", name _player, getplayeruid _player, _bail call client_fnc_numberText, name player, getplayeruid player]] remoteExec ["server_fnc_log",2];


}] remoteExec["bis_fnc_spawn",_player];