params["_target"];
_price = 1000;

_cashcheck = [1,_price] call client_fnc_checkmoney;
if!(_cashCheck) exitwith { [format["%1 - Nie masz dość pieniędzy, aby za to zapłacić!",_price call client_fnc_numberText], true] spawn domsg; };	

[_price] call Client_fnc_removeCash;

[player] remoteexec ["client_fnc_trackedby",_target];

if(isNil "TracingPlayers") then { TracingPlayers = []; };

TracingPlayers pushback _target;