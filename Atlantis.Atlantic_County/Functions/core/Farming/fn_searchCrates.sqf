params["_target"];

if (isNil "searchedcrates") then { searchedcrates = []; };
	
if (_target IN searchedcrates) exitwith { ["Niedawno przszukałeś tą skrzynkę", true] spawn domsg; };

searchedcrates pushback _target;

_chance = round(random(100));
if(_chance > 85) then {
	player additem "cg_DrugBrick"; 

	if(((client_level_array select 15) / 300) > 1) then {
		player additem "cg_DrugBrick"; 
	};
	if(((client_level_array select 15) / 300) > 2) then {
		player additem "cg_DrugBrick"; 
	};

	["Znalazłeś narkotyki",false] spawn domsg;
} else {
	["Pusto....",false] spawn domsg;
};

if(_chance > 95) THEN {
	player additem "NP_kPelt";
	["Znalazłeś rzadką skórę!",false] spawn domsg; 
};

[_target] spawn {
	params["_target"];

	_crate = _target;
	uisleep 300;
	_pia = searchedcrates find _crate;
	searchedcrates deleteAT _pia;
};