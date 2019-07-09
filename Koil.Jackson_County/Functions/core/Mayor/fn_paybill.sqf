disableSerialization;
_quantity = ctrlText 9339;
_quantity = call compile format["%1", _quantity];
if(_quantity > 1000000) exitWith { ["Nie możesz wydać więcej niż $1,000,000.00!", true] spawn domsg; };
if(_quantity < 0) exitWith { };
[format["Z powodzeniem wydałeś %1 i transakcja została zarejestrowana.",_quantity call client_fnc_numberText], true] spawn domsg;

["govtBank", format["Mayor %1 (%2) wydał %3 pieniędzy rządowych.", name player, getplayeruid player, _quantity call client_fnc_numberText]] remoteExec["server_fnc_log",2];

["govtBank", _quantity, "Remove"] remoteExec["server_fnc_setValue",2];

closeDialog 0;