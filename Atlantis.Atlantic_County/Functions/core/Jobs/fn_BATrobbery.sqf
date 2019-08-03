params["_shop"];

_chance = random(100);

if(isNil "robbedStores") then { robbedstores = []; };

if(_shop IN robbedstores) exitwith { ["Ten sklep nie ma nic więcej, co można ukraść!", true] spawn domsg; };

if(_chance > 85) then {

	["Add","Karma",random(1),"Stress"] call client_fnc_sustain;

	[player] remoteexec ["server_fnc_robberyCall",2];

	playSound3D ["cg_mission_files\sounds\glassbreak.ogg", vehicle player, false, getPosasl (vehicle player), 1, 1, 45];

	if(isNil "modifier") then { modifier = 0 };

	if(modifier == 0) then { 
				
		modifier = 3;

		while {true} do {

			if(modifier == 0) exitwith { ["Twoja seria napadów zakończyła się", true] spawn domsg; };
			uisleep 20;
			modifier = modifier - 1;

		};

		[] spawn { uisleep 300; robbedstores = []; };

	} else { 
		if(modifier > count currentcop) then { modifier = modifier + 1;  } else { modifier = modifier + 1.5; };
			
		_amount = random(20) + 1; _amount = _amount * (modifier * 1.1); _amount = round(_amount); 

		_maxallowed = ((count currentcop) + 1) * 110;
		if(_amount > _maxallowed) then { _amount = _maxallowed; }; 

		if(_amount < 0) then { _amount = 5; };

		robbedstores pushback _shop; [format["Okradłeś ten sklep na %1",_amount], true] spawn domsg; [_amount,false,true] call Client_fnc_addMoneyToPlayer; 

	};

};