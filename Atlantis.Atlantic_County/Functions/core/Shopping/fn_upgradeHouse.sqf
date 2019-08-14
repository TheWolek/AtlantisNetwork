_houseLevel = player getvariable "houselevel";
_uid = getPlayerUID player;
_cashcheck = [1,225000] call client_fnc_checkmoney;
if!(_cashCheck) exitwith { [format["%1 - Nie masz wystarczająco pieniędzy!",225000 call client_fnc_numberText], true] spawn domsg; };	

if( ((player getvariable "cashinhand") - 225000) < (client_level_array select 16) ) exitWith {
    [format["The store does not accept your %1 in dirty money.", (client_level_array select 16) call client_fnc_numberText], true] spawn domsg;
};

if(_houselevel == 1) then { ["Ulepszyłeś swój dom na 2 poziom, dostaniesz go po wyjsciu z serwera.", true] spawn domsg; player setvariable ["houselevel",2,false]; [player, "houselevel", 2] remoteExec ["Server_fnc_setVariable",2]; };
format["HouseUpgrade_Log: %1 (UID %2) upgraded hid house to tier 2",name player,_uid] remoteExecCall["diag_log",2];
if(_houselevel == 2) then { ["Ulepszyłeś swój dom na 3 poziom, dostaniesz go po wyjsciu z serwera.", true] spawn domsg; player setvariable ["houselevel",3,false]; [player, "houselevel", 3] remoteExec ["Server_fnc_setVariable",2]; };
format["HouseUpgrade_Log: %1 (UID %2) upgraded hid house to tier 3",name player,_uid] remoteExecCall["diag_log",2];
if(_houselevel == 3) then { ["Nie możesz jeszcze bardziej ulepszyć swojego domu!", true] spawn domsg; };

[225000, true] call Client_fnc_removecash;