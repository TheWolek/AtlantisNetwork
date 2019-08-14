
_total = {_x == "cg_lockpick"} count magazines player;

if(_total == 0) exitwith { ["Potrzebujesz wytrychu", true] spawn domsg; };

_chance = random ( 100 );
if(_chance > 75) then {
	player additem "cg_hackingtool";
	["Udało ci się", true] spawn domsg;
} else { ["Wytrych się złamał", true] spawn domsg; };