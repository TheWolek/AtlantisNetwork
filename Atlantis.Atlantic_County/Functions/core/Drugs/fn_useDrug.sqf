params["_type","_amount"];

_unhealth = client_unhealthiness / 50;


_amount = _amount - _unhealth;


IF(PLAYER DISTANCE [6270.86,1359.5,0.00143623] < 15) THEN { 
	[] spawn { ALLOWDANCE = TRUE; UISLEEP 100; ALLOWDANCE = FALSE; }; 
};

if(_type == "marijuana") then {
	[player,20] spawn drug_marijuana_effects;
	client_marijuana = _amount;
	player setCustomAimCoef 0;
	["set",0] call Client_Fnc_DoHealth;
	["Remove","Karma",5,"Stress"] call client_fnc_sustain;
	["Czujesz się świetnie i jesteś spokojny.",false] spawn domsg;
};

if(_type == "cocaine") then {
	[player,20] spawn drug_cocaine_effects;
	client_cocaine = _amount;

	if (((client_level_array select 10) / 100) > -1 && ((client_level_array select 10) / 100) < 2 ) then { 	player setAnimSpeedCoef 1.1; ["Jesteś 10% szybszy.",false] spawn domsg; };

	if (((client_level_array select 10) / 100) > 1 && ((client_level_array select 10) / 100) < 3 ) then { player setAnimSpeedCoef 1.15; ["Jesteś 15% szybszy.",false] spawn domsg; };

	if (((client_level_array select 10) / 100) > 2 ) then { player setAnimSpeedCoef 1.25; ["Jesteś 25% szybszy.",false] spawn domsg; };

	["Add","unhealthiness",5] call client_fnc_sustain;
	//["Add","Karma",5,"Stress"] call client_fnc_sustain;

};

if(_type == "heroin") then {
	[player,20] spawn drug_heroin_effects;
	client_heroin = _amount;
	player setUnitRecoilCoefficient 0.5;
	["Możesz bardzo dobrze kontrolowac swoją broń.",false] spawn domsg;
	["Add","unhealthiness",5] call client_fnc_sustain;
	["Remove","Karma",5,"Stress"] call client_fnc_sustain;
};

if(_type == "meth") then {
	[player,20] spawn drug_lsd_effects;
	client_meth = _amount;
	["Czujesz się nieśmiertelny.",false] spawn domsg;
	["Add","unhealthiness",5] call client_fnc_sustain;
	//["Add","Karma",5,"Stress"] call client_fnc_sustain;
};

if(_type == "energy") then {

	if (((client_level_array select 13) / 100) > -1 && ((client_level_array select 13) / 100) < 2 ) then { client_energy = _amount; };

	if (((client_level_array select 13) / 100) > 1 && ((client_level_array select 13) / 100) < 3 ) then { client_energy = (_amount * 4); };

	if (((client_level_array select 13) / 100) > 2 ) then { client_energy = (_amount * 8); };
	
	player enablefatigue false;
	player enablestamina false;
	["Czujesz się lekki.",false] spawn domsg;
};

if(_type == "donuts") then {
	if(myjob != "Cop" && myjob != "Doc") then { ["Add","unhealthiness",5] call client_fnc_sustain; };
	client_donuts = _amount;
	player setUnitRecoilCoefficient 0.5;
	player setCustomAimCoef 0;
	["Czujesz się najedzony!",false] spawn domsg;
};







[format ["%1 będzie trwać %2m przez chorobę %3",[_type] call CBA_fnc_capitalize, (_amount * 5), client_unhealthiness],false] spawn domsg;


/*

	if(client_meth > 14) then { _damage = _damage / 1.1; };
	if(client_meth > 10) then { _damage = _damage / 1.1; };
	if(client_meth > 7) then { _damage = _damage / 1.1; };
	if(client_meth > 4) then { _damage = _damage / 1.1; };
	if(client_meth > 0) then { _damage = _damage / 1.1; };

*/