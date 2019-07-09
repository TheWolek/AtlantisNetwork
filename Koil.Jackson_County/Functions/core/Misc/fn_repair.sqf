params["_object"];

if(myjob == "Repairman") exitwith { _object setdamage 0; };

if(_object gethit "motor" > 0.9 && _object iskindof "car") exitwith { 

	_engines = {_x == "CG_Engine"} count magazines player;
	if(_engines > 0) exitwith { 
		_object setdamage 0; 
		_chance = random ( 100 );
		if(_chance > 85) then {
			player removeitem "cg_engine"; 
			["Zużyłeś zestaw naprawczy silnika w pojeździe.", true] spawn domsg;
		};
	};
	_repaired = false;
	_checkNear = nearestObjects [player, [], 30];
	{
		if(str _x find "tallerdepinturaabandonado" > -1) exitwith { _object setdamage 0; _repaired = true; };
	}foreach _checkNear;

	if(_repaired) exitwith {};

	["Potrzebujesz naprawy, holowania do garażu lub silnika, żeby to naprawić - jest zbyt uszkodzony!", true] spawn domsg; 
};

_wheels = {_x == "CG_wheel"} count magazines player;

if(_wheels > 0) exitwith {

	_wheelHPs = ["HitLFWheel","HitLF2Wheel","HitRFWheel","HitRF2Wheel"];
	_wheelHPs = _wheelHPs apply {[_object getHitPointDamage _x, _x]};
	_wheelHPs sort false;
	_wheelHPs = _wheelHPs apply {_x select 1};

	{

		if ( _object getHitPointDamage _x > 0 ) exitWith {

			[_object,[_x,0]] remoteExec ["setHitPointDamage"];

			_chance = 10;
			if(random(100) < _chance) then {
				player removeitem "CG_wheel";
				["Wymieniłeś koło w pojeździe i zestaw naprawczy pękł.", true] spawn domsg;
			} else {
				["Wymieniłeś koło w pojeździe.", true] spawn domsg;
			};

		};

	} forEach _wheelHPs;
	
};

["Potrzebujesz koła do naprawienia tego pojazdu.", true] spawn domsg;