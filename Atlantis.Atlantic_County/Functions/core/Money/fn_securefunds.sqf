_units = nearestObjects [player, ["plp_ct_HighSecMediumBlack"], 30];
if(count _units == 0) exitwith {};
deletevehicle (_units select 0);

_cash = 1000 + (count currentcop * 500);

[_cash] call Client_fnc_addCash;

[format["Odzyskałeś pieniądze i dostałeś wypłatę w wysokości %1.",_cashadded], true] spawn domsg;

