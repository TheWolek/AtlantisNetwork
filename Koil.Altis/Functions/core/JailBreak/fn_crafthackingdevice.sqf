
_total = {_x == "cg_lockpick"} count magazines player;

if(_total == 0) exitwith { ["Potrzebujesz wytrycha", true] spawn domsg; };

_chance = random ( 100 );
if(_chance > 75) then {
	player additem "cg_hackingtool";
	["Udało się", true] spawn domsg;
} else { ["Nie Udało się", true] spawn domsg; };