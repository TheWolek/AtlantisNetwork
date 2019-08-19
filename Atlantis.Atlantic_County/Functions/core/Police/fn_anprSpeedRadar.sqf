if (myjob != "Cop") exitWith {};
_speed = 0;
_info = "";
_vehicle = [];
_owner = [];
_cars = []; {
    if (alive _x) then {
        _cars set[(count _cars), _x];
    };
}
forEach nearestObjects[vehicle player, ["Car"], 100];
if (count _cars < 2) exitWith {
    hint parseText format["<t color='#5A80EB'><t align='center'><t size='1.5'>ERROR!</t></t><br/><t color='#FF0000'><t size='1'>Brak pojazdu w zasięgu!</t></t>"];
};
_vehicle = (_cars select 1);
_type = getText(configFile >> "CfgVehicles" >> (typeOf _vehicle) >> "displayName");
if (count(crew(_vehicle)) == 0) exitWith {
    hint parseText format["<t color='#5A80EB'><t align='center'><t size='1.5'>ERROR!</t></t><br/><t color='#FF0000'><t size='1'>Brak pojazdu w ruchu!</t></t>"];
};
_speed = round speed(_vehicle);
_vehinfo = _vehicle getVariable ["information",nil]; 
if(!isNil {_vehinfo}) then {
	_plate = _vehinfo select 0;
} else {
	if(!isNil {_vehinfo getVariable ["pdcar",nil]}) exitWith {
	_plate == "Pojazd służbowy ASP";
	};
	if(!isNil {_vehinfo getVariable ["emscar",nil]}) exitWith {
	_plate == "Pojazd służbowy EMS";
	};
	_plate == "Rejestracji tego pojazdu nie można sprawdzić";
};
_owner = _vehinfo select 3;


// Format speed & owner below here
if (_speed > 110) then {
    _info = format["<t color='#5A80EB'><t size='1.5'><t align='center'>Radar<br/><t color='#FF0000'><t align='center'><t size='1'>Prędkość %1 km/h", _speed];
}
else {
    _info = format["<t color='#5A80EB'><t size='1.5'><t align='center'>Radar<br/><t color='#33CC33'><t align='center'><t size='1'>Prędkość %1 km/h", _speed];
};
if (isNil {
        _owner
    }) then {
    _info = _info + format["<br/><t color='#FFD700'><t size='1.5'><t align='center'>Właściciel:<br/><t color='#33CC33'><t align='center'><t size='1.8'> Nie znaleziono!"];
}
else {
    _info = _info + format["<br/><t color='#5A80EB'><t size='1.5'><t align='center'>Właściciel:<br/><t color='#33CC33'><t align='center'><t size='1'> %1", _owner];
};
_info = _info + format["<br/><t color='#5A80EB'><t size='1.5'><t align='center'>Pojazd:<br/><t color='#33CC33'><t align='center'><t size='1'> %1", _type];
hint parseText _info;