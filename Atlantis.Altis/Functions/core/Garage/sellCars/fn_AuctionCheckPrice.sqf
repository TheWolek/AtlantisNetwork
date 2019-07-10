
_response = currentcursortarget getvariable "sale";
if (isNil "_response") exitwith { ["Nie na sprzedaż lub już sprzedane!", true] spawn domsg; };
[format["Cena pojazdu to %1.", ((currentcursortarget getvariable "sale") select 0) call client_fnc_numberText], true] spawn domsg;