closedialog 0;

_check = currentcursortarget getvariable "information";

if(isNil "_check") exitwith { ["Nie jesteś właścicelem tego pojazdu.", true] spawn domsg; }; //no information so its not local owner.

createdialog "carPrice";