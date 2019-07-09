_units = nearestObjects [player, ["plp_ct_HighSecMediumBlack"], 30];
if(count _units == 0) exitwith {};
deletevehicle (_units select 0);

_cashadded = 1000 + (count currentcop * 500);

[_cashadded,true,true] call Client_fnc_addMoneyToPlayer;

[format["Zabezpiecziłeś gotówkę i zapłaciłeś %1.",_cashadded], true] spawn domsg;

