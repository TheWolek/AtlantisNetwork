params["_vehicle"];
private["_pos"];

deletevehicle _vehicle;

[2500,true,true] call Client_fnc_addMoneyToPlayer;

["Pojazd został zwrócony, otrzymałeś $2,500.00", true] spawn domsg;