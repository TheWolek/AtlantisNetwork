private ["_old", "_new"];
params ["_amount"];
_old = player getVariable "cashinhand";
_new = _old + _amount;
player setVariable ["cashinhand", _new, false];

[format ["Otrzymałeś wypłatę %1 w podatkach.",_amount], true] spawn domsg;