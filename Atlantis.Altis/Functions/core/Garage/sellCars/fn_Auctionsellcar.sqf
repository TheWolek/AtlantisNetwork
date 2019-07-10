_price = parseNumber (ctrlText 1111);
closeDialog 0;
if(isNil "_price") exitwith { ["Brak Ceny", true] spawn domsg; };
if(_price < 1) exitwith { ["Brak Ceny", true] spawn domsg; };

_car = currentcursortarget getvariable "information";
if(isNil "_car") exitwith { ["Nie możesz sprzedać tego samochodu", true] spawn domsg; };
_seller = player;
_licensePlate = _car select 0;
_information = _car;

if (currentcursortarget in current_cars) then {
    currentcursortarget setvariable ["sale",[_price,_seller,_licensePlate,_information],true];
    currentcursortarget setvariable ["salecheck",true,true];
} else {
    ["Nie jesteś właścicielem tego samochodu!", true] spawn domsg;
};