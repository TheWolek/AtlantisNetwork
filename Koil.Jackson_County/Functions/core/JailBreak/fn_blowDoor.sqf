_obj = cursorobject;

if(typeof _obj == "Land_zac_prison_wall_gate") exitWith {
	
	_check = ["Placing C4", 5, 0,player,'vvv_anim_ticket',nil,"cg_sndimg\sounds\repair.ogg"] spawn client_fnc_dotask; 

	waitUntil { scriptDone _check };

	if (!client_dotask) exitWith {};
	
	uisleep 5;
	playSound3D ["CG_Jobs\sounds\exp\exp.ogg", player, false, getPosASL _obj, 5, 1, 35]; 
	uisleep 5;
	_obj allowdamage false;
	uisleep 3;
	"R_30mm_HE" createvehicle (getpos _obj);
	_obj allowdamage true;
	_obj animate ["door_1",5];

	["CG_C4",0] spawn client_fnc_removeitem;
};

if(typeof _obj == "Land_buildingsCasino2" && (player distance (_obj modelToWorld (_obj selectionPosition "mem_vaultdoor_trigger")) < 5)) exitWith {

	if(count currentMobster < 3 || count currentCop < 3) exitWith { ["tutaj musi być co najmniej 3 pracowników kasyna i gliniarzy, którzy okradną skarbiec kasyna.", true] spawn domsg; };
	if(time < vaultTimer) exitWith { ["Kryptę kasyna można obrabować raz na 60 minut.", true] spawn domsg; };
	
	_check = ["Placing C4", 5, 0,player,'vvv_anim_ticket',nil,"cg_sndimg\sounds\repair.ogg"] spawn client_fnc_dotask; 

	waitUntil { scriptDone _check };

	if (!client_dotask) exitWith {};

	["The bomb will detonate in 5 minutes.", true] spawn domsg;

	_door = (_obj modelToWorld (_obj selectionPosition "mem_vaultdoor_trigger"));

	["Alarm w kasynie zgasł!", true] remoteExec["domsg", currentCop+currentMobster];

	playSound3D ["np_item\alarm.ogg", player, false, getPosasl player, 3, 1, 50];
	
	uisleep 299;
	playSound3D ["CG_Jobs\sounds\exp\exp.ogg", player, false, _door, 5, 1, 35]; 
	uisleep 1;
	_bomb = "R_60mm_HE" createvehicle _door;

	if(count currentCop > 0) then {
		_nearest = currentCop apply {[player distance getPos _x, _x]};
		_nearest sort true;
		_nearest = (_nearest select 0) select 1;

		[_pos, "Grand Larceny", "Location", currentCop-currentMarshals-currentDetectives] remoteExec ["client_fnc_hudHelper", _nearest];
		[format["Wysyłamy do %1: Jest wielka kradzież %2.", _nearest getVariable "badgeNumber", mapGridPosition _pos], true] remoteExec ["domsg", currentCop];
	};

	if(count currentMobster > 0) then {
		["The Casino vault is being robbed!", true] remoteExec ["domsg", currentMobster];
	};

	0 = [_obj] spawn {
		_obj = _this select 0;
		_obj setVariable ["bis_disabled_Door_vd",0];
		sleep 300;
		_obj setVariable ["bis_disabled_Door_vd",1];
	};

	["CG_C4",0] spawn client_fnc_removeitem;
	["Masz dostęp do skarbca przez 5 minut.", true] spawn domsg;

	vaultrobber = true;
	
};