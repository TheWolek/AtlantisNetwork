disableSerialization;
_index = lbCurSel (911);
if (_index == -1) exitWith { ["Musisz wybrać mandat, który chcesz zapłacić.", true] spawn domsg; };
_status = lbData[911, _index];
_status = call compile format["%1", _status];

if (_status select 6 != 2) exitWith { ["To nie jest mandat.", true] spawn domsg; };

if (_status select 8 == 0) exitWith { ["Ten mandat został już opłacony lub zamknięty.", true] spawn domsg; };

_cashcheck = [1, _status select 9] call client_fnc_checkmoney;
if!(_cashCheck) exitwith { [format["%1 - Nie masz dość pieniędzy, aby za to zapłacić!",(_status select 9) call client_fnc_numberText], true] spawn domsg; };

[_status, name player, getplayeruid player] remoteExec ["Server_fnc_wantedRemove",2];
[_status select 0] remoteExec ["Server_fnc_acceptWarrant",2];

[_status select 9] call Client_fnc_removeCash;
["govtBank", _status select 9, "Add"] remoteExec["server_fnc_setValue",2];
["govtBank", format["%1 (%2) dodano %3 do rządowego konta bankowego.", name player, getplayeruid player, (_status select 9) call client_fnc_numberText]] remoteExec ["server_fnc_log",2];

["Zapłaciłeś za mandat.",false] spawn domsg;

[player, getPlayerUID player] remoteExec ["Server_fnc_wantedList",2];
[] spawn client_fnc_wantedinformationupdate;