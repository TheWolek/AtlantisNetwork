params["_target"];

[150] call client_fnc_addMoneyToBank;

[format["Otrzymałeś dodatkowe %1 za uratowanie życia.", 150 call client_fnc_numberText], true] spawn domsg;

[player] remoteExec ["client_fnc_revived",_target];