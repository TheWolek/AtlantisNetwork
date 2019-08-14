
_response = currentcursortarget getvariable "sale";
if (isNil "_response") exitwith { ["Nie na sprzedaż lub już sprzedany!", true] spawn domsg; };
[format["Cena tego pojazdu to %1.", ((currentcursortarget getvariable "sale") select 0) call client_fnc_numberText], true] spawn domsg;