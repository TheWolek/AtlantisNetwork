params["_player"];
private ["_f1cars"];
if(isNil "racequeue") then { racequeue = true; racecontestents = []; raceprogress = false; racecount = 0; };
if(raceprogress) exitwith { ["Wyścig już trwa, przepraszam!",true] remoteexec ["domsg",_player]; };
if(racecount == 24) exitwith { ["Wyścig jest pełny, przepraszam!",true] remoteexec ["domsg",_player]; };

if(_player IN racecontestents) exitwith { ["Jesteś w tym wyścigu!",true] remoteexec ["domsg",_player]; };

racecontestents pushback _player;
racecount = racecount + 1;

[racecount] remoteexec ["client_fnc_openF1",_player];



if(racecount == 1) then {
	["A F1 zaczyna się za 3 minuty",true] remoteexec ["domsg",-2];
	uisleep 60;
	["A F1 zaczyna się za 2 minuty",true] remoteexec ["domsg",-2];
	uisleep 60;
	["A F1 zaczyna się za 1 minutys",true] remoteexec ["domsg",-2];
	uisleep 60;
	["A F1 startuje teraz",true] remoteexec ["domsg",-2];

	[] remoteexec ["client_fnc_dorace",racecontestents];	
	raceprogress = true;
	//startraceboro		


	_f1Cars = [
		"vvv_formula1_tmac",
		"vvv_formula1_sayeed",
		"vvv_formula1_Ciggy",
		"vvv_formula1_Doge",
		"vvv_formula1_ferrari",
		"vvv_formula1_mario",
		"vvv_formula1_marvel",
		"vvv_formula1_mclaren",
		"vvv_formula1_mingsucks",
		"vvv_formula1_netflix1",
		"vvv_formula1_netflix2",
		"vvv_formula1_fb",
		"vvv_formula1_andy",
		"vvv_formula1_redbull",
		"vvv_formula1_thad",
		"vvv_formula1_twitch"
	];

	_broken = 0;
	while {true} do {

		{
			if(!isNull _x) then { if(typeof (vehicle _x) IN _f1Cars) then {} else { _pia = racecontestents FIND _x; racecontestents DELETEAT _pia; }; };
			if(racecontestents isequalTO []) exitwith { _broken = 20; }; //race is done.
		} foreach racecontestents;
		_broken = _broken + 1;
		if(_broken > 20) exitwith {};
		uisleep 60;
	};
	racecontestents = []; raceprogress = false; racecount = 0;
	["Tor F1 jest otwarty dla biznesu.",true] remoteexec ["domsg",-2];

};
