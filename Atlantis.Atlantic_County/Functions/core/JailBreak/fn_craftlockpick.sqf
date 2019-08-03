_chance = random ( 100 );
if(_chance > 85) then {
	player additem "cg_lockpick";
	["Udało ci się wytworzyć wytrych", true] spawn domsg;
} else { ["Nie udało się", true] spawn domsg; };