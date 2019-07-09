if(isNil "GoldTimer") then { GoldTimer = time - 35; };

GoldTimer = time + 5;

_goldbars = nearestObjects [player, ["itemsGoldbar1"], 20];

if(count _goldbars == 0) exitwith { ["Nie jesteś w pobliżu sztabki złota!", true] spawn domsg; };

[format["Złoto jest w odległości 1% od ciebie. Możesz poszukać w odległości do 5 metrów.",(_goldbars select 0) distance player], true] spawn domsg;