private["_type","_stopTime","_success"];

if!(typeof cursortarget IN ["cg_mainvault","plp_ct_HighSecMediumBlack"]) exitwith { ["Musisz użyć tego na czarnej skrzynce lub drzwiach skarbca.", true] spawn domsg; };
if(typeof cursortarget IN ["cg_mainvault"] && count currentCop < 7) exitwith { ["7 policjantów musi być na służbie.", true] spawn domsg; };
if(count currentCop < 5) exitwith { ["5 policjantów musi być na służbie.", true] spawn domsg; };
if(time >= 25200) exitwith { ["Nie możesz teraz napaść na ten bank", true] spawn domsg; };

if(bankrobber != 1) exitwith { ["W trakcie", true] spawn domsg; };

_thebankcontainer = cursortarget;

if(_thebankcontainer IN robbedBanks) exitWith { ["Nie możesz jeszcze napaść tego banku.", true] spawn domsg; };

robbedBanks pushback _thebankcontainer;
publicVariable "robbedBanks";

mybank = _thebankcontainer;

if(typeof cursortarget == "plp_ct_HighSecMediumBlack") then {
	_type = 1;
	_stopTime = time + 600;
	["To zajmie 10 minut. Wiertarka wymaga częstych napraw.", true] spawn domsg;
} else {
	_type = 2;
	_stopTime = time + 1200;
	["To zajmie 20 minut. Wiertarka wymaga częstych napraw", true] spawn domsg;
};


_thedrill = "itemsvaultdrill1" createvehicle getpos player;

if(_type == 1) then {
	_thedrill attachTo [_thebankcontainer, [0, -0.9, 0] ];

	if(count currentCop > 0) then {
		_nearest = currentCop apply {[player distance getPos _x, _x]};
		_nearest sort true;
		_nearest = (_nearest select 0) select 1;

		[getpos player, "Napad na bank", "Location", currentCop] remoteExec ["client_fnc_hudHelper", _nearest];
		[format["Wezwanie do %1: Dochodzi do napadu na bank w okolicach %2.", _nearest getVariable "badgeNumber", mapGridPosition getPos player], true] remoteExec ["domsg", currentCop];
	};
} else {
	_thedrill attachTo [cursorObject, [2.4, 1.3, 0] ]; 
	_thedrill setdir 267;

	["Bank of Atlantis County is currently being robbed, keep away!", true] remoteExec ["domsg", -2];
	
	if(count currentCop > 0) then {
		_nearest = currentCop apply {[player distance getPos _x, _x]};
		_nearest sort true;
		_nearest = (_nearest select 0) select 1;

		[getpos player, "Napad na bank", "Location", currentCop] remoteExec ["client_fnc_hudHelper", _nearest];
		[format["Wezwanie do %1: Dochodzi do napadu na bank centralny w okolicach %2.", _nearest getVariable "badgeNumber", mapGridPosition getPos player], true] remoteExec ["domsg", currentCop];
	};
};

player removeitem "NP_drillitem";

playSound3D ["np_item\alarm.ogg", player, false, getPosasl player, 3, 1, 50];

bankrobber = 3;

while {true} do {

	_success = true;

	_location = getposatl _thebankcontainer;
	_PS = "#particlesource" createVehicleLocal _location;  

	_PS setParticleRandom [0,[0.004,0.004,0.004],[0.01,0.01,0.01],30,0.01,[0,0,0,0],1,0.02,360];

	_PS setDropInterval 0.001;

	_PS setParticleParams [["\a3\data_f\ParticleEffects\Universal\Universal.p3d",16,12,8],"","BillBoard",1,3,[0,0,0],[0, 0, 1],0,1.5,1,0.1,[0.02,0.02,0.1],[[0.8,0.7,0.2,0.1],[0.8,0.7,0.2,0.1],[0.8,0.7,0.2,0]],[1],1,0,"","",_PS,0,true,0.1,[[0.8,0.7,0.2,0]]] ;

	_PS attachTo [_thedrill,[0,0.525,0.22]];

	_pick = random (round 100);

	if(_pick < 20) then {

		bankrobber = 2;
		deletevehicle _ps;

		_counter = 0;

		while{bankrobber == 2} do {

			_counter = _counter + 1;
			_stopTime = _stopTime + 15;
			playSound3D ["cg_mission_files\sounds\npdrillfailing.ogg", player, false, getPosAtL _thedrill, 1, 1, 45];
			["The drill is stuck.", true] spawn domsg;
			uisleep 15;
			

			if(_counter >= 20) exitWith { _success = false; };
		};

	};

	if(_pick > 19 && _pick < 61) then {

		deletevehicle _ps;
		playSound3D ["cg_mission_files\sounds\npdrill2.ogg", player, false, getPosAtL _thedrill, 1, 1, 45];

	};

	if(_pick > 60 && _pick < 93) then {

		deletevehicle _ps;
		playSound3D ["cg_mission_files\sounds\npdrill1.ogg", player, false, getPosAtL _thedrill, 1, 1, 45];
	};

	if!(_success) exitWith {};

	uisleep 60;

	if(time >= _stopTime) exitwith { deleteVehicle _ps; _success = true; };

	[format["%1 left until vault opens.", [_stopTime - time, "MM:SS"] call BIS_fnc_secondsToString], true] spawn domsg;
};

if(_success) then {
	["Przewierciłeś zamek, masz dostęp do skrytki!", true] spawn domsg;
	bankrobber = 4;

	deleteVehicle _thedrill;
		
	[_thebankcontainer] spawn {

		params["_thebankcontainer"];
		private["_sleep"];

		if(typeof _thebankcontainer == "plp_ct_HighSecMediumBlack") then {
			_sleep = 60*60;
		} else {
			_sleep = 60*60*3.5;
		};

		uiSleep _sleep;

		robbedBanks = robbedBanks - [_thebankcontainer];

		publicVariable "robbedBanks";


	};
} else {
	["Nie udało ci się napaść na bank.", true] spawn domsg;
	bankrobber = 1;

	deleteVehicle _thedrill;
	myBank = ObjNull;
	
	robbedBanks = robbedBanks - [_thebankcontainer];

	publicVariable "robbedBanks";
};
