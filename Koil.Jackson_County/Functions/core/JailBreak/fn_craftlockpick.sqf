_chance = random ( 100 );
if(_chance > 85) then {
	player additem "cg_lockpick";
	["Udało Się", true] spawn domsg;
} else { ["Nie Udało Się", true] spawn domsg; };