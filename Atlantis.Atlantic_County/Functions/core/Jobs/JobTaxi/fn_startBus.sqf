
//[_location] remoteExec ["client_fnc_startSecurity",_player];
//[getpos player,] remoteExec ["client_fnc_startGarbage",_player];
// use lexus with directionals only.
if(myjob != "none" && myjob != "bus") exitwith { ["Masz już pracę!", true] spawn domsg; };

if(isnil "taskrunning") then { taskrunning = false; };

myjob = "bus";
format ["Job_Log: %1 started working as %2",name player,myjob] remoteExecCall["diag_log",2];
[] call client_fnc_hudwork; 

private ["_warning","_JobBase"];

if(!taskrunning) then {

	[] spawn {
		playertasks = [];
		taskrunning = true;
		busStoparray = [[[843.134,1560.77,0.524498],"Sąd stanowy"],[[812.653,1050.72,0.524401],"Południowe Atlantis"],[[1301.89,1048.78,0.52441],"Komistariat Policji ASP"],[[1736.61,2232.84,0.524719],"Hospital"],[[2823.97,3276.34,0.524475],"Middlesmajor"],[[3423.96,2566.25,0.524262],"Port"],[[5614.85,3720.59,0.524711],"Południowe Dobro City"],[[5565.33,3935.98,0.524396],"Dobro City Kiesta"],[[5447.95,4208.73,0.524391],"Dobro City Art Gallery"],[[5005.71,5186.02,0.524447],"Pólnocny most"],[[1262.33,3841.6,0.524388],"Atlantis Airport"]];
		_warnings = 0;
		uisleep 30;

		while{taskrunning && myjob == "bus"} do {
			uisleep 3;

			if(playertasks isequalto []) then {

				["Tworzenie zadania", true] spawn domsg;

				[(busStopArray select 0) select 0,(busStopArray select 0) select 1] spawn client_fnc_startBus;

				if(_warnings > 10) then { 
					taskrunning = false; 
					["Zostałeś zwolniony z pracy!", true] spawn domsg; 
				};


			} else {

				if(_warnings > 10) then { 
					taskrunning = false; 
					["Zostałeś zwolniony z pracy!", true] spawn domsg; 
				};

				if(player distance vehspawned > 20) then { _warnings = _warnings + 1; };
				if(isNull vehspawned) then { _warnings = _warnings + 1; };


				if(player distance ((playertasks select 0) select 0) < 15) then {

					["Dotarłeś na miejsce, poczekaj kilka sekund na pasażerów!", true] spawn domsg;
					paycheck = paycheck + 135;

					_pia = [[843.134,1560.77,0.524498],[812.653,1050.72,0.524401],[1301.89,1048.78,0.52441],[1736.61,2232.84,0.524719],[2823.97,3276.34,0.524475],[3423.96,2566.25,0.524262],[5614.85,3720.59,0.524711],[5565.33,3935.98,0.524396],[5447.95,4208.73,0.524391],[5005.71,5186.02,0.524447],[1262.33,3841.6,0.524388]] FIND ((playertasks select 0) select 0);

					playertasks = [];

					if(_pia == 13) then { _pia == -1; };

					busStopArray select (_pia + 1) spawn client_fnc_startBus;

					uisleep 5;
					deletemarkerlocal format["job%1",getPlayerUID player];

					["add","Karma",1,"Taxi Driver"] call client_fnc_sustain;

					_level_check = (client_level_array select 9);
					_amount = 0;
					if(_level_check > 10 && _level_check < 300) then { _amount = _level_check / 6; };
					if(_level_check > 299 && _level_check < 600) then { _amount = _level_check / 5; };
					if(_level_check > 599) then { _amount = _level_check / 4; };

					_amount = round(_amount);

					if(_amount > 0) then {
						if(_amount > 150) then { _amount = 150; };
						[ format["Otrzymałeś dodatkową wypłate w wysokości %1!", _amount call client_fnc_numberText ] , false ] spawn domsg;	
						[_amount,true,true] call Client_fnc_addMoneyToPlayer;
					};


				} else {




					if(random(100) > 90) then { _nearPlayers = player nearEntities ["man", 30]; {_nearplayers pushback _x; }foreach crew vehicle player; [format["%1 is the next stop!",((playertasks select 0) select 1)],false] remoteexec ["domsg",_nearPlayers]; };
					
					[((playertasks select 0) select 0)] call client_fnc_jobMarker;			
					uisleep 5;
				};

			};

		};

		[0] call client_fnc_jobEnd; 

	};

};

if(taskrunning) then { 
	playertasks pushback [_this select 0,_this select 1]; 
	_nearPlayers = player nearEntities ["man", 30]; {_nearplayers pushback _x; }foreach crew vehicle player; [format["%1 is the next stop!",((playertasks select 0) select 1)],false] remoteexec ["domsg",_nearPlayers];
};



