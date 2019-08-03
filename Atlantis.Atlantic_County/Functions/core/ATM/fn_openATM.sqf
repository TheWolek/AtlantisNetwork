disableSerialization;
createDialog "ATM";

//_bankAccount = format ["ATM # Account:%1", str (player getVariable "bankAccount")]; 
//ctrlSetText [1000, _bankAccount];

_bank = player getVariable "cashinbank"; 
_bank = _bank call client_fnc_numberText;

ctrlSetText [1002, _bank];

_cash = (player getVariable "cashinhand") - (client_level_array select 16); 
_cash = _cash call client_fnc_numberText;
ctrlSetText [1004, _cash];

_totalTickets = 0;
_handle = false;
if(isNil "wantedTimer") then { wantedTimer = time-301; };
if (time >= wantedTimer + 300 && count currentMarshals > 0) then {
    if( ((player getVariable 'statuses') select 13 >= 1000) || myTickets > 2000 || myWarrants > 0) then {

        _nearest = currentMarshals apply {[player distance getPos _x, _x]};
        _nearest sort true;
        _nearest = (_nearest select 0) select 1;

        [getPos player, format["Zauważony %1", name player], "Location", currentMarshals] remoteExec ["client_fnc_hudHelper", _nearest];
        wantedTimer = time;
        [format["Wezwanie do %1: %2 został zauważony w okolicach %3 podczas używania bankomatu.", _nearest getVariable "badgeNumber", name player, mapGridPosition getPos player], true] remoteExec ["domsg", currentMarshals];

    };
};

if(isNil "loanTimer") then { loanTimer = time-301; };
if(time >= loanTimer + 300 && moneyOwed > 0 && count currentMafia > 0) then {
        [getPos player, format["Zauważony %1", name player], "Location", currentMafia] remoteExec ["client_fnc_hudHelper", _nearest];
        [format["%1 został zauważony w okolicach %2 podczas używania bankomatu.", name player, mapGridPosition getPos player], true] remoteExec ["domsg", currentMafia];
};