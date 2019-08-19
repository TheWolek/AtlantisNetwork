//file: hackvault
_vault = cursorObject;
if(count currentcop < 7 ) exitWith {["Musi być przynajmniej 7 policjantów by napaś na bank federalny",true] spawn domsg;};
if(isNil "VaultHacking") then { VaultHacking = false;};
if(vaultHacking) exitWith{ ["Bank jest już w trakcie hakowania",true] spawn domsg;};
VaultHacking = true;
if(typeof cursorObject == "") then { //wpisac
	publicVariable "vaultHacking";
	playSound3D ["CG_Jobs\sounds\jailbreak\hacking.ogg", player, false, (getposasl player), 1, 1, 25];
	_calcT = 0;
	player playmove "vvv_anim_lockpick";
	while {true} do {
		if(animationstate player != "vvv_anim_lockpick") then { player playmove "vvv_anim_lockpick"; };
		_calcT = _calcT + 1;
		if(_calcT > 25) exitwith {};
		uisleep 1;
		hint parsetext format["<img size='1' image='CG_Jobs\icons\info.paa'/> <t color='#FFCC00'><t size='0.75'>MODIFYING SECURITY CELL</t><br/> %1 of 25 seconds.",_calcT];
	};
	playSound3D ["CG_Jobs\sounds\jailbreak\hacking.ogg", player, false, (getposasl player), 3, 1, 55];

	["2 minuty do odblokowania drzwi sejfu", true] spawn domsg;
	uisleep 120;

	vaultOpen = true;
	VaultHacking = false;
	publicVariable "vaulthacking";

	uisleep 60;
	playSound3D ["CG_Jobs\sounds\jailbreak\jailAlarm.ogg", _vault, false, (getposasl _vault), 1.7, 1, 10235];

	if(count currentCop > 0) then {
		_nearest = currentCop apply {[player distance getPos _x, _x]};
		_nearest sort true;
		_nearest = (_nearest select 0) select 1;

		[getpos player, "Napad na bank federalny", "Location", currentCop] remoteExec ["client_fnc_hudHelper", _nearest];
		[format["Wezwanie do %1: Dochodzi do napadu na bank federalny",name _nearest], true] remoteExec ["domsg", currentCop];
	};

	_marker = createMarker ["FbankRobbery",getpos _vault];
	_marker setMarkerShape "ICON";
	_marker setMarkerType "Warrning";
	_marker setMarkerText "UWAGA!! NAPAD NA BANK UWAGA!!"
	_marker setMarkerColor "colorRed";

	uisleep 600;
	deleteMarker _marker;

};

vaultHacking = false;
publicVariable "vaultHacking";
