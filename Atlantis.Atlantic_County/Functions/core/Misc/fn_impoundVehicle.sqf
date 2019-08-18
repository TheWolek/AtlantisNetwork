params["_vehicle", ["_type",0]];

if(myjob == "towtruck") then { 




		paycheck = paycheck + 500;

		if(currentcursortarget getVariable ["requestImpound", false]) then {
			paycheck = paycheck + 300;
			[ format["Otrzymałeś %1 bonusu, bo na ten pojazdy było zlecenie odholowania.", 300 call client_fnc_numberText] , false ] spawn domsg;
		};

		_level_check = (client_level_array select 4);
		_amount = 0;
		if(_level_check > 10 && _level_check < 300) then { _amount = _level_check / 5; };
		if(_level_check > 299 && _level_check < 600) then { _amount = _level_check / 3; };
		if(_level_check > 599) then { _amount = _level_check / 2; };

			_amount = round(_amount);
			["add","Karma",2,"Tow Truck Driver"] call client_fnc_sustain;
			if(_amount > 0) then {
				if(_amount > 150) then { _amount = 150; };
				[ format["Otrzymałeś dodatkową wypłate w wysokości %1!", _amount call client_fnc_numberText] , false ] spawn domsg;	
				[_amount,true,true] call Client_fnc_addMoneyToPlayer;
			};
		if(count ( _vehicle getvariable ["information", []] ) > 0) then {

			_targetid = (_vehicle getvariable "information" select 8);
			_targetowner = _targetid call BIS_fnc_getUnitByUid;

			/*
			if(isNull(_targetowner)) then {
				_targetowner = "John Doe";
			} else {
				_targetowner = name _targetowner;
			};
			*/

			//[_targetowner, _targetid, name player, getplayeruid player, "Impounded vehicle", 2, 0, 1, 1000] remoteexec ["server_fnc_addcriminal",2];
			//[_targetid, format["Twój %1 został odholowony z powodu złamania przepisów. Możesz go odebrac na parkingu pojazdu odholowanych i musisz zapłacić karę w sądzie", getText(configFile >> "cfgVehicles" >> typeOf currentcursortarget >> "displayName")], "Atlantis County", "Impounded Car"] remoteExec ["server_fnc_sendMail",2];

			_vehinfo = _vehicle getVariable "information";
			["garage", _vehinfo, _vehinfo] remoteExec ["client_fnc_setVariable",_targetowner];
			_licenese = _vehinfo select 0;
			[_licenese,1,cursorObject,player] remoteExec ["Server_fnc_updateCarStatus",2];
	};
	//["who cares",0,currentcursortarget,player] remoteExec ["Server_fnc_updateCarStatus",2];  
	["Odholowałeś pojazd i otrzymałeś zapłatę.", true] spawn domsg;

} else { 

	if(count currenttowtruckdrivers == 0 || _type == 1) then {
			if(count ( _vehicle getvariable ["information", []] ) > 0) then {

				_targetid = (_vehicle getvariable "information" select 8);
				_targetowner = _targetid call BIS_fnc_getUnitByUid;

				/*
				if(isNull(_targetowner)) then {
					_targetowner = "John Doe";
				} else {
					_targetowner = name _targetowner;
				};
				*/

				//[_targetowner, _targetid, name player, getplayeruid player, "Impounded vehicle", 2, 0, 1, 1000] remoteexec ["server_fnc_addcriminal",2];
				//[_targetid, format["Twój %1 został odholowony z powodu złamania przepisów. Możesz go odebrac na parkingu pojazdu odholowanych i musisz zapłacić karę w sądzie.", getText(configFile >> "cfgVehicles" >> typeOf currentcursortarget >> "displayName")], "Atlantis County", "Impounded Car"] remoteExec ["server_fnc_sendMail",2];

				_vehinfo = _vehicle getVariable "information";
				["garage", _vehinfo, _vehinfo] remoteExec ["client_fnc_setVariable",_targetowner];
				_licenese = _vehinfo select 0;
				[_licenese,1,cursorObject,player] remoteExec ["Server_fnc_updateCarStatus",2];
			};
		["Pojazd został odholowany.", true] spawn domsg;


	} else {
		
        _nearest = currenttowtruckdrivers apply {[player distance getPos _x, _x]};
        _nearest sort true;
        _nearest = (_nearest select 0) select 1;

        [getPos player, format["Zlecenie holowania %1", name player], "Location", currenttowtruckdrivers] remoteExec ["client_fnc_hudHelper", _nearest];
        wantedTimer = time;
        [format["Wezwanie do %1: %2 zlecił holowanie w okolicach %3.", name _nearest, name player, mapGridPosition getPos player], true] remoteExec ["domsg", currenttowtruckdrivers];

		["Wezwanie zostało wysłane do laweciarzy.", true] spawn domsg;

		currentcursortarget setVariable ["requestImpound", true, true];

	};

 };

