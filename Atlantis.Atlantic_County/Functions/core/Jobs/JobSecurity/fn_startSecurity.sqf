//[_location] remoteExec ["client_fnc_startSecurity",_player];
//[getpos player,] remoteExec ["client_fnc_startGarbage",_player];
// use lexus with directionals only.
if(myjob != "none" && myjob != "Security") exitwith { ["Masz już pracę!", true] spawn domsg; };

if(isnil "taskrunning") then { taskrunning = false; };

myjob = "security";
format ["Job_Log: %1 started working as %2",name player,myjob] remoteExecCall["diag_log",2];
[] call client_fnc_hudwork; 

private ["_warning","_JobBase"];

if(!taskrunning) then {

	[] spawn {
		playertasks = [];
		taskrunning = true;

		_warnings = 0;
		uisleep 30;

		while{taskrunning && myjob == "security"} do {
			uisleep 3;
			if(playertasks isequalto []) then {
				["Nie masz aktualnych zadań, patroluj miasto i miej oko na sklepy!", true] spawn domsg;
				uisleep 60;

				if(_warnings > 10) then { 
					taskrunning = false; 
					["Zostałeś zwolniony z pracy!", true] spawn domsg; 
				};


			} else {

				if(_warnings > 10) then { 
					taskrunning = false; 
					["Zostałeś zwolniony z pracy!", true] spawn domsg; 
				};

				if(player distance vehspawned > 30) then { _warnings = _warnings + 1; };
				if(isNull vehspawned) then { _warnings = _warnings + 1; };


				if(player distance ((playertasks select 0) select 0) < 15) then {
					["Dotarłeś na miejsce - patroluj okolicę w celu szukania przestępców- nie strzelaj do nich, zadzwoń po policję!", true] spawn domsg;
					paycheck = paycheck + 210;
					playertasks deleteat 0;
					uisleep 3;
					deletemarkerlocal format["job%1",getPlayerUID player];

					["add","Karma",1,"Security"] call client_fnc_sustain;
					_level_check = (client_level_array select 2);
					_amount = 0;
					if(_level_check > 10 && _level_check < 300) then { _amount = _level_check / 8; };
					if(_level_check > 299 && _level_check < 600) then { _amount = _level_check / 5; };
					if(_level_check > 599) then { _amount = _level_check / 4; };
					_amount = round(_amount);


					if(_amount > 0) then {
						if(_amount > 250) then { _amount = 250; };
						[format["You got paid an extra % cash in pocket!", _amount call client_fnc_numberText],true] spawn domsg;	
						[_amount,true,true] call Client_fnc_addMoneyToPlayer;
					};



				} else {
					["Doszło do kradzieży!: Typ pracy - ochrona", true] spawn domsg;	
					[((playertasks select 0) select 0)] call client_fnc_jobMarker;			
					uisleep 3;
				};
			};
		};
		[0] call client_fnc_jobEnd;
	};
};

if(taskrunning) then { 
	_location = _this select 0;
	playertasks pushback [_location]; 
};