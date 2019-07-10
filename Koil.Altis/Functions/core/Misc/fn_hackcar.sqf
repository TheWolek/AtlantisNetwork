params["_target"];
_price = 5000;

_cashcheck = [1,_price] call client_fnc_checkmoney;
if!(_cashCheck) exitwith { [format["%1 - Nie masz dość pieniędzy, aby za to zapłacić!",_price call client_fnc_numberText], true] spawn domsg; };	

[_price] call Client_fnc_removeCash;

_name = ("car" + (str round(random(10000))));
missionNamespace setVariable [_name, _target];

hackedcars pushBack _name;

["Car has been hacked.", true] spawn domsg;