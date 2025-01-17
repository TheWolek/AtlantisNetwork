//[getpos player(or object they drop / bin they use),"player"] remoteExec ["client_fnc_startGarbage",_player];
//
// _type is bin, player, dump - only should need to call player driven tasks with remoteexec.
if(myjob != "none" && myjob != "TrashMan") exitwith { ["Masz już pracę!", true] spawn domsg; };
if(isnil "taskrunning") then { taskrunning = false; };

if(isnil "mapBins") then {
	mapBins = nearestObjects [getPos player,["Land_Dumpster_DED_Dumpster_01_F"],3500];
};

private ["_warnings"];

if(taskrunning) then { 
	_location = _this select 0;
	_sender = _this select 1;
	_jobType = _this select 2;
	_message = _this select 3;
	playertasks pushback [_location,_jobtype]; 
};

myjob = "TrashMan";
format ["Job_Log: %1 started working as %2",name player,myjob] remoteExecCall["diag_log",2];
[] call client_fnc_hudwork;
playertasks = [];
taskrunning = true;
_markername = format["job%1",getPlayerUID player];
_warnings = 0;
_garbageLevel = 0;
while{taskrunning  && myjob == "TrashMan" } do {

	if(playertasks isequalTO []) then {

		if(_garbageLevel > 10) then {
			_garbageLevel = 0;
			playertasks pushback [[1064,3667,0.014],"dump"];	
			[getpos ((playertasks select 0) select 0)] call client_fnc_jobMarker;
			["Aktualna Praca (Oznaczona na mapie): Zbieranie Śmieci", true] spawn domsg;
			["add","Karma",15,"Śmieciarz"] call client_fnc_sustain;			
		} else {
			
			while{true} do {
				mybin = mapBins call BIS_fnc_selectRandom;
				if(player distance mybin > 50) exitwith {};
				uisleep 1;
			};
			playertasks pushback [mybin,"bin"];
			[getpos ((playertasks select 0) select 0)] call client_fnc_jobMarker;
			["Aktualna Praca (Oznaczona na mapie): Zbieranie Śmieci", true] spawn domsg;
		};
	} else {

		uisleep 3;	


		if(_warnings > 30) then { 
			taskrunning = false; 
			["Zostałeś zwolniony z pracy!", true] spawn domsg; 
			format ["Job_Log: %1 has been laid off from %2",name player,myjob] remoteExecCall["diag_log",2];
		};

		if(vehspawned distance player > 30) then { _warnings = _warnings + 1; };
		if(isNull vehspawned) then { _warnings = _warnings + 1; };

		if !( (getmarkerpos _markername select 0) isEqualTo (getpos ((playertasks select 0) select 0) select 0) && (getmarkerpos _markername select 1) isEqualTo (getpos ((playertasks select 0) select 0) select 1) ) then {
			[getpos ((playertasks select 0) select 0)] call client_fnc_jobMarker;
		};

		if(player distance ((playertasks select 0) select 0) < 15 && vehicle player != player && player distance vehspawned < 10) then {

			if(((playertasks select 0) select 1) == "bin") then {
				["bin"] spawn client_fnc_collectGarbage;
				_warnings = 0;
				paycheck = paycheck + 200;
				playertasks deleteat 0;
				_garbagelevel = _garbagelevel + 1;

				_level_check = (client_level_array select 5);
				_amount = 0;
				if(_level_check > 10 && _level_check < 300) then { _amount = _level_check / 9; };
				if(_level_check > 299 && _level_check < 600) then { _amount = _level_check / 7; };
				if(_level_check > 599) then { _amount = _level_check / 5; };
				["add","Karma",3,"Śmieciarz"] call client_fnc_sustain;
				_amount = round(_amount) + 50;
				if(_amount > 0) then {
					if(_amount > 150) then { _amount = 150; };
					[ format["Dostałeś dodatkową wypłatę w wysokości %1!", _amount call client_fnc_numberText] , false ] spawn domsg;	
					[_amount,true,true] call Client_fnc_addMoneyToPlayer;
				};



			};

			if(((playertasks select 0) select 1) == "dump") then {
				["dump"] spawn client_fnc_collectGarbage;
				_warnings = 0;
				paycheck = paycheck + 250;
				playertasks deleteat 0;
				["add","Karma",10,"Śmieciarz"] call client_fnc_sustain;

				_level_check = (client_level_array select 5);
				_amount = 0;
				if(_level_check > 10 && _level_check < 300) then { _amount = _level_check / 4; };
				if(_level_check > 299 && _level_check < 600) then { _amount = _level_check / 3; };
				if(_level_check > 599) then { _amount = _level_check / 2; };

				_amount = round(_amount);
				if(_amount > 0) then {
					if(_amount > 150) then { _amount = 150; };
					[ format["Dostałeś dodatkową wypłatę w wysokości %1!", _amount call client_fnc_numberText ] , false ] spawn domsg;	
					[_amount,true,true] call Client_fnc_addMoneyToPlayer;
				};



			};

			if(((playertasks select 0) select 1) == "player") then {
				//create function here to pick up player dropped garbage then pay the user.
				["Podnieś smieci wokół ciebie.", true] spawn domsg;
				_garbagelevel = _garbagelevel + 1;
			};

			uisleep 3;
		};

	};
};

[0] call client_fnc_jobEnd;


