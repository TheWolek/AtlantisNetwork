if(isNil "GoldTimer") then { GoldTimer = time - 35; };

GoldTimer = time + 5;

_goldbars = nearestObjects [player, ["itemsGoldbar1"], 20];

if(count _goldbars == 0) exitwith { ["Nie jesteś blisko złota!", true] spawn domsg; };

[format["Złoto jest %1 metrów od ciebie. Możesz zacząć szukać kiedy będziesz 5 metrów od złota.",(_goldbars select 0) distance player], true] spawn domsg;