params["_target"];
_price = 1000;

_cashcheck = [1,_price] call client_fnc_checkmoney;
if!(_cashCheck) exitwith { [format["%1 -Nie masz wystarczająco pieniędzy!",_price call client_fnc_numberText], true] spawn domsg; };	

[_price] call Client_fnc_removeCash;

_target setvariable ["tracking",true,false];