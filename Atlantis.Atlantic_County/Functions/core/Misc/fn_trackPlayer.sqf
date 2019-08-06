params["_target"];
_price = 3000;

_cashcheck = [2,_price] call client_fnc_checkmoney;
if!(_cashCheck) exitwith { [format["%1 - Nie masz wystarczająco pieniędzy!",_price call client_fnc_numberText], true] spawn domsg; };	

[_price] call Client_fnc_removeBank;

[player] remoteexec ["client_fnc_trackingme",_target]; 
_target setvariable ["tracking",true,false];