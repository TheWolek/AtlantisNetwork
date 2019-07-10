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
        _arrest = "You have grounds to arrest this person.";
    } else {
        _arrest = "You DO NOT have grounds to arrest this person.";
    };

    if(_isMarshal) then {
        [format["%1 ma %2 niezapłaconych biletów, nakaz(y) %3 i niezapłacony podatek% 4. %5", name player, myTickets call client_fnc_numberText, myWarrants, ((player getVariable 'statuses') select 13) call client_fnc_numberText, _arrest], true] remoteExec["domsg", _target];
    } else {
        [format["%1 ma %2 niezapłaconych biletów i gwarancję %3(s). %4", name player, myTickets call client_fnc_numberText, myWarrants, _arrest], true] remoteExec["domsg", _target];
    };


} ] remoteExec ["bis_fnc_spawn", currentcursortarget];