params["_vehicle"];
private["_pos"];

_vehicle setvariable ["robberCar",true,true];
_vehicle setvariable ["hotcar",nil,true];




if(local _vehicle) then {
	_vehicle lock 0;
} else {
	[_vehicle,0] remoteExecCall ["client_fnc_lock",_vehicle];
};

["Poszukiwany samochód został skradziony i oznaczony na mapie", true] remoteexec ["domsg",-2];

while{true} do {
	_pos = [RANDOM(10000),RANDOM(10000),0];
	_isWater = surfaceIsWater (_pos);
	if(!_isWater) exitwith {  };	
	uisleep 2;
};

["Za 5 minut twoja pozycja zostanie ujawniona.", true] spawn domsg;
uisleep 60;

["Za 4 minuty twoja pozycja zostanie ujawniona.", true] spawn domsg;
uisleep 60;

["Za 3 minuty twoja pozycja zostanie ujawniona.", true] spawn domsg;
uisleep 60;

["Za 2 minuty twoja pozycja zostanie ujawniona..", true] spawn domsg;
uisleep 60;

["Za 1 minutę twoja pozycja zostanie ujawniona.", true] spawn domsg;
uisleep 60;

["Miejsce odbioru pojazdu zostało oznaczoone na mapie, dostań się tam w 5 minut", false] spawn doquickmsg;


_markername = format["DropOff%1",getPlayerUID player];
_marker = createMarkerlocal [_markername, _pos];
_marker setMarkerShapelocal "ICON";
_marker setMarkerTypelocal "hd_dot";
_marker setMarkerColorlocal "ColorBlue";
_marker setMarkerTextlocal "Miejsce dostarczenia pojazdu";	

_count = 0;
while{true} do {
	uisleep 1;
	if(_count > 300) exitwith { ["Czas się skończył!", true] spawn domsg; };
	if(player distance _pos < 25 && driver (_vehicle) == player) exitwith { 
		["Zostałeś nagrodzony!", true] spawn domsg; 
		_player = player; 
		_rims = "default"; 
		_windows = 0; 
		_Lights = 0; 
		_owner = getplayeruid player; 
		_licensePlate = "Testing"; 

		_statuses = 1; 
		[_licensePlate, typeof _vehicle, "\colors\oxford_white.paa", "glossy", _rims, 0, 0, _owner, 1, "Add", _player] remoteExec ["Server_fnc_garageUpdate",2];

	};
	_count = _count + 1; 
};



_vehicle setvariable ["robberCar",nil,true];

deletemarkerlocal _markername;