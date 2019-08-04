//[_location] remoteExec ["client_fnc_startSecurity",_player];
//[getpos player,] remoteExec ["client_fnc_startGarbage",_player];
// use lexus with directionals only.

if( myjob != "none" && myjob != "towtruck") exitwith { ["Masz już pracę!", true] spawn domsg; };

if(isnil "taskrunning") then { taskrunning = false; };

myjob = "towtruck";
format ["Job_Log: %1 started working as %2",name player,myjob] remoteExecCall["diag_log",2];
[] call client_fnc_hudwork;
private ["_warning","_JobBase"];
if(!taskrunning) then {

	[] spawn {
		playertasks = [];
		taskrunning = true;

		_warnings = 0;
		while{taskrunning && myjob == "towtruck"} do {
			uisleep 3;
			if(playertasks isequalto []) then {
				["Nie masz przydzielonych zadań, szukaj samochodów do odcholowania!", true] spawn domsg;
				uisleep 60;
			} else {


				if(_warnings > 10) then { 
					taskrunning = false; 
					["Zostałeś zwolniony z pracy!", true] spawn domsg; 
				};

				if(vehspawned distance player > 30) then { _warnings = _warnings + 1; };
				if(isNull vehspawned) then { _warnings = _warnings + 1; };
					

				if(player distance ((playertasks select 0) select 0) < 15) then {


					["Dotarłes na miejsce!", true] spawn domsg;
					paycheck = paycheck + 250;
					playertasks deleteat 0;
					uisleep 3;
					deletemarkerlocal format["job%1",getPlayerUID player];

					["add","Karma",3,"Repairman"] call client_fnc_sustain;

					_level_check = (client_level_array select 7);
					_amount = 0;
					if(_level_check > 10 && _level_check < 300) then { _amount = _level_check / 9; };
					if(_level_check > 299 && _level_check < 600) then { _amount = _level_check / 7; };
					if(_level_check > 599) then { _amount = _level_check / 5; };

					_amount = (round(_amount) + 100);

					if(_amount > 0) then {
						if(_amount > 220) then { _amount = 220; };
						[ format["Otrzymałeś dodatkową wypłate w wysokości %1!", _amount call client_fnc_numberText ] , false ] spawn domsg;	
						[_amount,true,true] call Client_fnc_addMoneyToPlayer;
					};


				} else {
					["Aktualna praca (Oznaczona na mapie): Typ pracy - Holowanie", true] spawn domsg;	
					[((playertasks select 0) select 0)] call client_fnc_jobMarker;			
					uisleep 3;
				};
			};
		};
		if(myjob == "towtruck") then { [0] call client_fnc_jobEnd; };
	};
};

if(taskrunning) then { 
	_location = _this select 0;
	playertasks pushback [_location]; 
};