disableSerialization;
_index = lbCurSel (1113);
if (_index == -1) exitWith { ["Musisz wybrać mandat który chcesz zapłacić.", true] spawn domsg; };
_status = lbData[1113, _index];
_status = call compile format["%1", _status];

//if (_status select 6 != 2) exitWith { ["This is not a ticket.", true] spawn domsg; };
//select 1 - suspect name; select 3 - active; select 4 - amount

if (_status select 3 == 0) exitWith { ["Ten mandat został zapłacony.", true] spawn domsg; };

_cashcheck = [1, _status select 4] call client_fnc_checkmoney;
if!(_cashCheck) exitwith { [format["%1 - You do not have enough money to pay for this!",(_status select 4) call client_fnc_numberText], true] spawn domsg; };

[_status, name player, getplayeruid player] remoteExec ["Server_fnc_wantedRemove",2];
//[_status select 0] remoteExec ["Server_fnc_acceptWarrant",2];
[_status select 1, "Atlantis County", 0] remoteExec ["Server_fnc_wantedRemoveAll",2];

[_status select 4] call Client_fnc_removeCash;
["govtBank", _status select 4, "Add"] remoteExec["server_fnc_setValue",2];
closeDialog 0;
//["govtBank", format["%1 (%2) added %3 into the Government bank account.", name player, getplayeruid player, (_status select 9) call client_fnc_numberText]] remoteExec ["server_fnc_log",2];

["Zapłaciłeś mandat.",false] spawn domsg;

[player, getPlayerUID player] remoteExec ["Server_fnc_wantedList",2];
[] spawn client_fnc_wantedinformationupdate;