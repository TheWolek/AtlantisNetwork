
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
		/*
		busStoparray = [
			[[879.369,1243.55,0.00143862],"Sąd stanowy"],
			[[812.653,1050.72,0.524401],"Południowe Atlantis"],
			[[1301.89,1048.78,0.52441],"Komistariat Policji ASP"],
			[[1736.61,2232.84,0.524719],"Hospital"],
			[[2823.97,3276.34,0.524475],"Middlesmajor"],
			[[3423.96,2566.25,0.524262],"Port"],
			[[5614.85,3720.59,0.524711],"Południowe Dobro City"],
			[[5565.33,3935.98,0.524396],"Dobro City Kiesta"],
			[[5447.95,4208.73,0.524391],"Dobro City Art Gallery"],
			[[5005.71,5186.02,0.524447],"Pólnocny most"],
			[[1262.33,3841.6,0.524388],"Atlantis Airport"]
		];
		*/
		busStopArray = [
			[[879.369,1243.55,0.00143862],"Atlatnis city centrum"],
			[[905.404,1312.68,0.00143862],"Kasyno Atlantis city"],
			[[905.935,1442.87,0.00143862],"Kiesta Atlantis city"],
			[[886.391,1594.08,0.00143862],"Sąd stanowy"],
			[[828.526,1384.84,0.00148296],"Nightclub"],
			[[921.855,1049.77,0.00143862],"Południowe Atlatnis city"],
			[[1313.29,1047.68,0.00143862],"Komisariat Policji"],
			[[2737.64,787.643,0.00143909],"Atlantis Residences"],
			[[1001.46,1254.86,0.00143862],"Garaż Atlantis city"],
			[[976.321,1531.3,0.00143862],"Aleja sklepów"],
			[[2823.74,3278.46,0.00143433],"Middlesmayor"],
			[[3286.95,3430.25,0.00143433],"Kadedra Masyl Town"],
			[[3272.24,3571.42,0.00143433],"Szpital"],
			[[3314.7,3739.4,0.00143433],"Bank Federalny"],
			[[3427.12,3545.56,0.00143433],"Kangur"],
			[[3226.14,2556.36,0.00143886],"Port"]
		];
		/*
		busStoparray_Dobro = [
			[[5535.21,3898.8,0],"Dobro city centrum"],
			[[5592.51,3701.48,0],"Dobro city Biura"],
			[[5446.57,4210.3,0],"Art Gallery"],
			[[5046.79,5231.72,0],"Północny most"],
			[[3428.88,3545.86,0],"Kangur"],
			[[3272.08,3570.82,0],"Szpital"],
			[[3314.87,3739.82,0],"Bank Federalny"],
			[[3192.24,3575.75,0],"Rondo Masyl Town"],
			[[3288.51,3430.92,0],"Katedra Masyl Town"]
		];
		*/
		_warnings = 0;
		uisleep 30;

	/*
		if(player distance [840.07,1164.61,0] < 500) then {
			busStopArray = busStoparray_Atlantis;
		} else {
			busStopArray = busStoparray_Dobro;
		};
		*/

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

					_pia = [[879.369,1243.55,0.00143862],[905.404,1312.68,0.00143862],[905.935,1442.87,0.00143862],[886.391,1594.08,0.00143862],[828.526,1384.84,0.00148296],[921.855,1049.77,0.00143862],[1313.29,1047.68,0.00143862],[2737.64,787.643,0.00143909],[1001.46,1254.86,0.00143862],[976.321,1531.3,0.00143862],[2823.74,3278.46,0.00143433],[3286.95,3430.25,0.00143433],[3272.24,3571.42,0.00143433],[3314.7,3739.4,0.00143433],[3427.12,3545.56,0.00143433],[3226.14,2556.36,0.00143886]] FIND ((playertasks select 0) select 0);

					playertasks = [];

					if(_pia == 13) then { _pia == -1; };

					busStopArray select (_pia + 1) spawn client_fnc_startBus;

					uisleep 5;
					deletemarkerlocal format["job%1",getPlayerUID player];

					["add","Karma",1,"Taksówkarz"] call client_fnc_sustain;

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



