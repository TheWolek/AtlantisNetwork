disableSerialization;
_shopname = ctrlText 9339;

_cashcheck = [1, 500] call client_fnc_checkmoney;
if!(_cashCheck) exitwith { [format["%1 - Nie masz wystarczająco pieniędzy, aby za to zapłacić!",250 call client_fnc_numberText], true] spawn domsg; };	

if(count _shopname > 35) exitWith { ["Nazwa biura nie może być dłuższa niż 35 znaków.", false] spawn domsg; };

[getpos currentcursortarget,player,_shopname] remoteexec ["server_fnc_rentoffice",2];