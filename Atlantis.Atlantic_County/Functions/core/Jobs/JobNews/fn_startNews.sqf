//[position,type IE "Murder" or "Vehicle Accident"] remoteExec ["client_fnc_startNews",_player];

if(myjob != "none" && myjob != "NewsMan") exitwith { ["Już masz pracę!", true] spawn domsg; };
if(isnil "taskrunning") then { taskrunning = false; };

myjob = "NewsMan";
format ["Job_Log: %1 started working as %2",name player,myjob] remoteExecCall["diag_log",2];
[] call client_fnc_hudwork;
private ["_warning","_JobBase"];
if(!taskrunning) then {

	[] spawn {
		playertasks = [];
		taskrunning = true;

		_warnings = 0;
		while{taskrunning && myjob == "NewsMan"} do {
			uisleep 3;
			if(playertasks isequalto []) then {
				["Nie masz aktualnych prac!", true] spawn domsg;
				uisleep 60;
			} else {


				if(_warnings > 10) then { 
					taskrunning = false; 
					["Zostałeś zwolniony z pracy!", true] spawn domsg; 
				};

				if(vehspawned distance player > 30) then { _warnings = _warnings + 1; };
				if(isNull vehspawned) then { _warnings = _warnings + 1; };



				if(player distance ((playertasks select 0) select 0) < 15 && player distance vehspawned < 10) then {
					["Dotarłeś na miejsce, uruchom kamery!", true] spawn domsg;
					paycheck = paycheck + 200;
					playertasks deleteat 0;
					deletemarkerlocal format["job%1",getPlayerUID player];


					["add","Karma",3,"News Reporter"] call client_fnc_sustain;

					uisleep 70;

					_level_check = (client_level_array select 6);
					_amount = 0;
					if(_level_check > 10 && _level_check < 300) then { _amount = _level_check / 9; };
					if(_level_check > 299 && _level_check < 600) then { _amount = _level_check / 8; };
					if(_level_check > 599) then { _amount = _level_check /6; };

					_amount = round(_amount);

					if(_amount > 0) then {
						if(_amount > 150) then { _amount = 150; };
						[ format["Otrzymałeś zapłate w wysokości %1!", _amount call client_fnc_numberText ] , false ] spawn domsg;	
						[_amount,true,true] call Client_fnc_addMoneyToPlayer;
					};


					uisleep 3;
				} else {
					[format ["Aktualna praca (Ozanczone na mapie): Typ pracy - %1", ((playertasks select 0) select 1)], false] spawn doquickmsg;
					[((playertasks select 0) select 0)] call client_fnc_jobMarker;			
					uisleep 30;
				};
			};
		};
		[0] call client_fnc_jobEnd;
	};
};

if(taskrunning && count playertasks < 3) then { 
	_location = _this select 0;
	_type = _this select 1;
	playertasks pushback [_location,_type]; 
};