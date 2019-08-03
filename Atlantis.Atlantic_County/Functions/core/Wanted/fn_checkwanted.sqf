_currentitemindex = lbCurSel 1120;
if (_currentitemindex == -1) exitWith { ["Musisz wybrać osobę.", true] spawn domsg; };

_status2 = lbData [1120, _currentitemindex];
currentcursortarget = _status2;

_isMarshal = false;
if(player in currentMarshals) then {
    _isMarshal = true;   
};

[[player, _isMarshal], {
    params["_target", "_isMarshal"]; 
    
    _arrest = "";

    if( ( ((player getVariable 'statuses') select 13 >= 1000) && _isMarshal) || myTickets > 2000 || myWarrants > 0) then { 
        _arrest = "MASZ podstawy by aresztować tą osobę.";
    } else {
        _arrest = "NIE MASZ podstaw by aresztować tą osobę.";
    };

    if(_isMarshal) then {
        [format["%1 ma %2 w nie zapłaconych mandatach, %3 nakazów, oraz %4 nie zapłaconego podatku. %5", name player, myTickets call client_fnc_numberText, myWarrants, ((player getVariable 'statuses') select 13) call client_fnc_numberText, _arrest], true] remoteExec["domsg", _target];
    } else {
        [format["%1 ma %2 w nie zapłaconych mandatach oraz %3 nakazów. %4", name player, myTickets call client_fnc_numberText, myWarrants, _arrest], true] remoteExec["domsg", _target];
    };


} ] remoteExec ["bis_fnc_spawn", currentcursortarget];