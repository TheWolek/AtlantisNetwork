params["_vehicle"];
private["_pos"];

_vehicle setvariable ["robberCar",true,true];
_vehicle setvariable ["hotcar",nil,true];




if(local _vehicle) then {
	_vehicle lock 0;
} else {
	[_vehicle,0] remoteExecCall ["client_fnc_lock",_vehicle];
};

["Gorący pojazd został skradziony i umieszczony na mapie dla Policji", true] remoteexec ["domsg",-2];

while{true} do {
	_pos = [RANDOM(10000),RANDOM(10000),0];
	_isWater = surfaceIsWater (_pos);
	if(!_isWater) exitwith {  };	
	uisleep 2;
};

["Za 5 minut cel zostanie ujawniony.", true] spawn domsg;
uisleep 60;

["Za 4 minut cel zostanie ujawniony.", true] spawn domsg;
uisleep 60;

["Za 3 minut cel zostanie ujawniony.", true] spawn domsg;
uisleep 60;

["Za 2 minut cel zostanie ujawniony.", true] spawn domsg;
uisleep 60;

["Za 1 minut cel zostanie ujawniony.", true] spawn domsg;
uisleep 60;

["Punkt zrzutu pojazdu został zaznaczony na mapie - dotrzyj tam w 5 minut.", false] spawn doquickmsg;


_markername = format["DropOff%1",getPlayerUID player];
_marker = createMarkerlocal [_markername, _pos];
_marker setMarkerShapelocal "ICON";
_marker setMarkerTypelocal "hd_dot";
_marker setMarkerColorlocal "ColorBlue";
_marker setMarkerTextlocal "Lokalizacja zrzutu pojazdu";	

_count = 0;
while{true} do {
	uisleep 1;
	if(_count > 300) exitwith { ["Za długo!", true] spawn domsg; };
	if(player distance _pos < 25 && driver (_vehicle) == player) exitwith { 
		["Otrzymałeś pojazd!", true] spawn domsg; 
		_player = player; 
		_rims = "default"; 
		_windows = 0; 
		_Lights = 0; 
		_owner = getplayeruid player; 
		_licensePlate = "Testing"; 

		_statuses = 1; 
		[_licensePlate, typeof _vehicle, "white", "matte", _rims, 0, 0, _owner, 1, "Add", _player] remoteExec ["Server_fnc_garageUpdate",2];

	};
	_count = _count + 1; 
};



_vehicle setvariable ["robberCar",nil,true];

deletemarkerlocal _markername;