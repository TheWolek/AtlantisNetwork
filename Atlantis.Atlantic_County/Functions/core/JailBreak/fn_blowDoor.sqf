_obj = cursorobject;

if(typeof _obj == "Land_zac_prison_wall_gate") exitWith {
	
	_check = ["Podkładanie C4", 5, 0,player,'vvv_anim_ticket',nil,"cg_sndimg\sounds\repair.ogg"] spawn client_fnc_dotask; 

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
	format ["C4_Log: %1 blew up doors to prison",name player] remoteExecCall["diag_log",2];
};

if(typeof _obj == "Land_buildingsCasino2" && (player distance (_obj modelToWorld (_obj selectionPosition "mem_vaultdoor_trigger")) < 5)) exitWith {

	if(count currentMobster < 3 || count currentCop < 3) exitWith { ["3 policjantów i gangsterów musi być w pracy w celu napadu na kasyno", true] spawn domsg; };
	if(time < vaultTimer) exitWith { ["Skarbiec kasyna może być napadnięty raz na 60 minut.", true] spawn domsg; };
	
	_check = ["Podkładanie C4", 5, 0,player,'vvv_anim_ticket',nil,"cg_sndimg\sounds\repair.ogg"] spawn client_fnc_dotask; 

	waitUntil { scriptDone _check };

	if (!client_dotask) exitWith {};

	["Bomba wybuchnie za 5 minut.", true] spawn domsg;

	_door = (_obj modelToWorld (_obj selectionPosition "mem_vaultdoor_trigger"));

	["W kasynie uruchomił się alarm!", true] remoteExec["domsg", currentCop+currentMobster];

	playSound3D ["np_item\alarm.ogg", player, false, getPosasl player, 3, 1, 50];
	
	uisleep 299;
	playSound3D ["CG_Jobs\sounds\exp\exp.ogg", player, false, _door, 5, 1, 35]; 
	uisleep 1;
	_bomb = "R_60mm_HE" createvehicle _door;

	if(count currentCop > 0) then {
		_nearest = currentCop apply {[player distance getPos _x, _x]};
		_nearest sort true;
		_nearest = (_nearest select 0) select 1;

		[_pos, "Napad", "Location", currentCop-currentMarshals-currentDetectives] remoteExec ["client_fnc_hudHelper", _nearest];
		[format["Wezwanie do %1: Dochodzi do kradzieży w  %2.", _nearest getVariable "badgeNumber", mapGridPosition _pos], true] remoteExec ["domsg", currentCop];
	};

	if(count currentMobster > 0) then {
		["Skarbiec kasyna jest okradany!", true] remoteExec ["domsg", currentMobster];
	};

	0 = [_obj] spawn {
		_obj = _this select 0;
		_obj setVariable ["bis_disabled_Door_vd",0];
		sleep 300;
		_obj setVariable ["bis_disabled_Door_vd",1];
	};

	["CG_C4",0] spawn client_fnc_removeitem;
	["Masz dostęp do skarbca na 5 minut.", true] spawn domsg;
	format ["C4_Log: %1 blew up vault in casino",name player] remoteExecCall["diag_log",2];

	vaultrobber = true;
	
};