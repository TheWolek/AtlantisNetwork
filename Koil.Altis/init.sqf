enableSaving [false, false];

if (isServer) then {
	["rpframework", "SQL_CUSTOM", "rpframework.ini"] spawn ExternalS_fnc_ExtDBinit;
	safetyloot = true;
	[] SPAWN server_fnc_setupVariablesServer;
	[] call Server_fnc_handleDisconnect;
	//[] spawn server_fnc_addJob;
	BGJoinableGames = []; 
	PUBLICVARIABLE "BGJOINABLEGAMES";
	[] spawn {
		sleep 3; 
		["currentMayorGUID", true] call server_fnc_getValue;
		["currentSenatorsGUID", true] call server_fnc_getValue;
		["currentPresidentSenateGUID", true] call server_fnc_getValue;
		["casinoRate", true] spawn server_fnc_getValue;
		["taxRate", true] spawn server_fnc_getValue;
		
		["mafiaStash"] spawn server_fnc_getValue;
		["bikerStash"] spawn server_fnc_getValue;
		["mobsterStash"] spawn server_fnc_getValue;
		["govtBank"] spawn server_fnc_getValue;
		["mafiaBank"] spawn server_fnc_getValue;
		["bikerBank"] spawn server_fnc_getValue;
		["mobsterBank"] spawn server_fnc_getValue;
		["casinoVault",true] spawn server_fnc_getValue;

		[] spawn server_fnc_casinoSetup;
		[] spawn server_fnc_radioSetup;
		[] spawn server_fnc_racetimes;
		[] spawn server_fnc_rallyracetimes;	
		[] spawn client_fnc_horseOdds;

	};
	[] spawn client_fnc_billboardSetup;
	[server_fnc_addJob, 120] execFSM "\NoPixel_server\call.fsm";
	[Server_fnc_cleanup, 4200] execFSM "\NoPixel_server\call.fsm";
	[Server_fnc_checktime, 600] execFSM "\NoPixel_server\call.fsm";

	[client_fnc_lottoRun, 3600] execFSM "\NoPixel_server\call.fsm";
	[client_fnc_horseRace, 600] execFSM "\NoPixel_server\call.fsm";
	[client_fnc_goldFarming, 300] execFSM "\NoPixel_server\call.fsm";
	[client_fnc_camsetup, 1200] execFSM "\NoPixel_server\call.fsm";

	//[client_fnc_carEvent, 5500 + random(7500)] execFSM "\NoPixel_server\call.fsm";
	[client_fnc_lootdrop, 1500 + random(7500)] execFSM "\NoPixel_server\call.fsm";

	GarageVariableWhore = "Flag_US_F" createVehicle [0,1,0];

	evidenceBox = createVehicle ["plp_ct_FootlockerBrown", [8290.04,3007.29,4.18744], [], 0, "CAN_COLLIDE"]; 
	evidenceBox setDir 228.054;
	publicVariable "evidenceBox";

//CAMERA SHIT s
	neck = "Sign_Sphere10cm_F" createVehicle [0,0,0]; 
	publicvariable "neck";


	pilot = "Sign_Sphere10cm_F" createVehicle [0,0,0]; 
	publicvariable "pilot";


	sometarget = "Sign_Sphere10cm_F" createVehicle [0,0,0]; 
	publicvariable "sometarget";


	THETV = "nopixel_tools_tv1" createvehicle [0,0,0];
	publicvariable "THETV";
	_vehicle = "ivory_wrx" createvehicle [0,0,0];
	[_vehicle, ["black","matte"], "black", 1, 1] call client_fnc_ivoryInitVehicle;
	[_vehicle, "FuckYou", "ivory"] call client_fnc_numberPlate;

	uisleep 0.05;
	deletevehicle _vehicle;

	setDate [2015, 3, 3, 06, 0];  
	0 setovercast 0.15;  
	0 setrain 0; 
	0 setRainbow 0;
	0 setlightnings 0; 
	0 setfog 0;
	0 setWaves 0;
	0 setWindForce 0;
	0 setWindStr 0;
	0 setGusts 0;
	0 setwinddir 0;
	forceWeatherChange;
	999999 setovercast 0.15;  
	999999 setrain 0; 
	999999 setRainbow 0;
	999999 setlightnings 0; 
	999999 setfog 0;
	999999 setWaves 0;
	999999 setWindForce 0;
	999999 setWindStr 0;
	999999 setGusts 0;
	999999 setwinddir 0;
	skiptime 1;
	settimemultiplier 4;
	[] spawn client_fnc_lootsetup;
	[] spawn { 

		_tier1 = ["Land_ivory_trailer_04","Land_ivory_trailer_01","Land_ivory_trailer_02","Land_ivory_trailer_03","Land_ivory_trailer_06","Land_ivory_trailer_05"];


		_tier2 = ["Land_Ranch_DED_Ranch_02_F","Land_Ranch_DED_Ranch_01_F","Land_HouseC_R","Land_HouseC1_L","Land_HouseA1_L","Land_HouseB1_L"];

		//123
		_tier3 = ["Land_HouseDoubleAL","Land_HouseDoubleAL2"];

		_shops = ["Land_buildingCommercial1","Land_buildingCommercial2"];
		

		{

			_thebankcontainer = "plp_ct_HighSecMediumBlack" createvehicle getpos _x; 
			_pos = getpos _x;  
			_thebankcontainer setdir (getdir _x) - 89;
			_containerpos = _x getrelpos [-3,0];  
			_thebankcontainer setpos _containerpos;   
			_newpos = _thebankcontainer getrelpos [-1.2,0];  
			_thebankcontainer setpos [(_newpos select 0),(_newpos select 1),(_newpos select 2)+4];

		 } foreach nearestObjects [[0,0,0], ["Land_CommonwealthBank"], 35500];

		tier1housing = []; 

		{ tier1housing pushback _x; } foreach nearestObjects [[0,0,0], _tier1, 35500];

		tier2housing = []; 

		{ tier2housing pushback _x; } foreach nearestObjects [[0,0,0], _tier2, 35500];

		tier3housing = []; 

		{ tier3housing pushback _x; } foreach nearestObjects [[0,0,0], _tier3, 35500];

		shops = []; 
		{ shops pushback _x; } foreach nearestObjects [[0,0,0], _shops, 35500];

		uisleep 28490;
		safetyloot = false;
		uisleep 160;
		[] remoteExec ["client_fnc_survival",-2];
		uisleep 30;
		["Sign_Circle_F"] remoteExec ["client_fnc_createvehicle",-2];
		
	};

} else {

	{ _x setFuelCargo 0; } forEach (nearestObjects [[6728.31,5269.87,0.56609], ["Land_fs_feed_F"], 20000]);

	waitUntil {sleep 0.05; !(isNil {player}) && player == player && alive player};

	_attempt = isClass (ConfigFile >> "CfgVehicles" >> "VVV_dodge_charger_pd_1");

	if(!_attempt) then { "Sign_Circle_F" createvehicle getpos player; } else { };

	removeAllItems player;removeAllContainers player;removeAllWeapons player;removeAllAssignedItems player;
	removeUniform player;removeVest player;removeBackpack player;removeGoggles player;removeHeadgear player; 

	"dynamicBlur" ppEffectEnable true; /* enables ppeffect */
	"dynamicBlur" ppEffectAdjust [12]; /* intensity of blur */
	"dynamicBlur" ppEffectCommit 0; /* time till vision is fully blurred */

	[] call Client_fnc_miscVariables;
	[] spawn client_fnc_loadingscreen;
	
	player allowdamage false;
	[player] remoteexec ["Server_fnc_initStats",2];
	[1, player] remoteExec ["server_fnc_readmail", 2];
	waituntil {(player getvariable "loaded") == 1};
	player allowdamage true;
	[] call client_fnc_initInteractions;
	waituntil {(player getvariable "loaded") == 2};

	[] call client_fnc_karmaPhoneInit;

	
	player setVariable ["tf_same_lr_frequencies_for_side", false];
	player setVariable ["tf_same_sw_frequencies_for_side", false];

	waitUntil {!isNull (findDisplay 46)};

	_vehicle = "ivory_wrx" createvehiclelocal [0,0,0];
	[_vehicle, ["black","matte"], "black", 1, 1] call client_fnc_ivoryInitVehicle;
	[_vehicle, "FuckYou", "ivory"] call client_fnc_numberPlate;

	uisleep 0.05;
	deletevehicle _vehicle;

	[Client_fnc_HudEffects, 3] execFSM "call.fsm";
	
	[Client_fnc_Survival, 300] execFSM "call.fsm";

	[client_fnc_seatbelts, 1] execFSM "call.fsm";

	420 cutRsc ["playerHUD","PLAIN"];


	if(uniform player == "" && female) then {
		player forceadduniform "female_default_1";
	};
	
	client_seatwarn = false;
	client_seatbelt = false;
	[] spawn client_fnc_lootsetup;
	[] spawn Client_fnc_gunholster;
	[] call client_fnc_druginit;
	player setVariable["loaded", 3, false];

	waituntil { (player getvariable "loaded") == 4 };


	["MyID", "OnSpeak", {

	 if(_this select 1)then{ player setvariable ["talking",true,true]; }else{ player setvariable ["talking",nil,true]; };

	}, Player] call TFAR_fnc_addEventHandler;

	player addEventHandler["InventoryOpened", {_this call client_fnc_inventoryOpened;}];
	[] spawn {
		if(myhealth > 0.99) then {
				uisleep 15;
				myhealth = 0;
				player setdamage 0;
				["Killing player due to death logout.", true] spawn domsg;
				["Remove",0.5] call client_fnc_doHealth;
				["Remove",0.5] call client_fnc_doHealth;
		};
	};

	//hintC format["8 March 2017\n\nHello %1,\n\nThank you for participating in the testing phase for the beta release of NoPixel.\n\nOur developers have been working tirelessly on the update and would politely ask if you, as players of NoPixel, to please take this time now to meticulously and carefully test these development changes and report suggestions and/or bugs to the website. There have been a significant change in the code and we require the testing of the public in order to see what bugs can be discovered and the effect on the economy. Following this beta testing, there will be a final update and wipe to complete the official beta release. The website will have more information on the updates to come.\n\nWe hope you enjoy the substantial amount of money credited to your bank accounts and hope you will use it for strenuous testing. \n\nYours,\nNoPixel Staff", name player];

	if (getplayeruid player == currentMayorGUID) then {
		Mayor = true;
		currentMayor pushback player;
		publicVariable "currentMayor";
	};
	if (getplayeruid player IN currentSenatorsGUID) then {
		Senator = true;
		currentSenators pushback player;
		publicVariable "currentSenators";
	};
	if (getplayeruid player == currentPresidentSenateGUID) then {
		Psenate = true;
	};

	waituntil { !(isnull (finddisplay 46)) };

	(findDisplay 46) displayAddEventHandler ["KeyUp", "_this call client_fnc_HandleKeysUp"];

	(findDisplay 46) displayAddEventHandler ["KeyDown", "_this call client_fnc_HandleKeys"];

	[player] remoteExec ["Server_fnc_wantedListMine", 2];

	uisleep 5;
	player setVariable["loaded", nil, false];

};