/*
Start Fresh when you completely die
*/

removeAllItems player;
removeAllContainers player;
removeAllWeapons player;
removeAllAssignedItems player;
removeVest player;
removeBackpack player;
removeHeadgear player;

if(deadPhase == 1) then {

    ["Odzyskałeś władzę w kończynach i pamiętasz co się działo, gdy byłeś sparaliżowany.", true] spawn domsg;
	["By dostać się do Atlantis City możesz wezwać taksówkę lub iść na przystanek i pojechać busem", true] spawn domsg;

};

if(deadPhase == 2) then {

    ["Obudziłeś się, ale nie pamiętasz co się działo.", true] spawn domsg;

};

deadPlayer = false;
deadphase = 0;
godmode = false;
detach player;

player setpos [3248.15,3621.51,0.00143433];

player setdir 147;

player forceadduniform "U_C_Poloshirt_stripped";

player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "Itemwatch";
player additem "cg_tabletd";
player assignitem "cg_tabletd";

closedialog 0;

[] spawn { 
	sleep 3; 
	im_dead = false;
	player setVariable ["cashinhand", 0, false];
	player setvariable["playerInjuries",[0,0,0,0,0,0,0,0,0,0,0],true];
	player setvariable["playerInjuriesToUpdate",[0,0,0,0,0,0,0,0,0,0,0],false]; 
	["set",0] call Client_Fnc_DoHealth;
	player setVariable ["tf_voiceVolume", 1, true];
	inGameUISetEventHandler ["Action", ""];
	lastsync = time;
	["add","battery",200] call client_fnc_sustain;
	[player, "statuses", (player getvariable "statuses")] remoteExec ["Server_fnc_setVariable",2];
	[player, "getunitloadout", getunitloadout player] remoteExec ["Server_fnc_setVariable",2];
};
