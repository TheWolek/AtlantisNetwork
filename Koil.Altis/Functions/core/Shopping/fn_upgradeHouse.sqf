_houseLevel = player getvariable "houselevel";

_cashcheck = [1,225000] call client_fnc_checkmoney;
if!(_cashCheck) exitwith { [format["%1 - Nie masz dość pieniędzy, aby za to zapłacić!",225000 call client_fnc_numberText], true] spawn domsg; };	

if( ((player getvariable "cashinhand") - 225000) < (client_level_array select 16) ) exitWith {
    [format["Sklep nie akceptuje Twojego %1 w brudnych pieniądzach.", (client_level_array select 16) call client_fnc_numberText], true] spawn domsg;
};

if(_houselevel == 1) then { ["ulepszyłeś dom do poziomu 2, otrzymasz nowy dom po wyjścu z serwera.", true] spawn domsg; player setvariable ["houselevel",2,false]; [player, "houselevel", 2] remoteExec ["Server_fnc_setVariable",2]; };
if(_houselevel == 2) then { ["ulepszyłeś dom do poziomu 2, otrzymasz nowy dom po wyjścu z serwera.", true] spawn domsg; player setvariable ["houselevel",3,false]; [player, "houselevel", 3] remoteExec ["Server_fnc_setVariable",2]; };
if(_houselevel == 3) then { ["YNie możesz jeszcze ulepszyć żadnego!", true] spawn domsg; };

[225000, true] call Client_fnc_removecash;