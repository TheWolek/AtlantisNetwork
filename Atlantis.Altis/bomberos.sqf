_personas = _this nearEntities ["Man", 10];
_obj = _this;

vehicle player setVehicleAmmo 1;

_chance = random(100);

if (count fires > 0) then { 

	{ 
		
		if(_obj distance (_x select 1) < 35 && _chance > 90) then {
			[(_x select 1)] remoteexec ["client_fnc_fireDelete",-2];
			paycheck = paycheck + 250;
		};

	}foreach fires;

};

_notStunned = [];

if ((count _personas) != 0) then 
{
	{
		if !(_x getvariable ["manguerazo",false] && _x != player ) then 
		{
			_notStunned pushback _x;
			_x setvariable ["manguerazo",true];
		};
	}foreach _personas;

	if((count _notstunned) > 0) then {
		"deadstate" remoteExec ["client_fnc_playAnim",_notStunned];
	};
	sleep 5;
	_removeStun = [];
	{
		if (_x getvariable ["manguerazo",false]) then 
		{
			_removestun pushback _x;
			_x setvariable ["manguerazo",false];
		};
	}foreach _personas;
	if((count _removeStun) > 0) then {
		"AmovPercMstpSrasWrflDnon_AmovPercMstpSrasWrflDnon_gear" remoteExec ["client_fnc_playAnim",_removeStun];
	};
};




/*
//_apagado = _fuego getvariable ["estado_fuego",0];
//systemchat format ["Apagado : %1",_apagado];
//_fuego setvariable ["estado_fuego",_apagado + 1];
if ((_fuego getvariable "estado_fuego") >= 2) then 
{
	_particulas = nearestobjects [_fuego,[],0.001];
	deletevehicle _fuego;
	{
		deletevehicle _x;
	} foreach _particulas;
};


/*
player allowdamage false;
"test_EmptyObjectForFireBig" createvehicle position player;