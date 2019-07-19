params["_type"];


_freq = 0;

[player, "govtbank"] remoteExec ["client_fnc_getremotevar",2];
waitUntil { !isNil "packet"; };

currentDetectives = currentDetectives - [player];
currentMarshals = currentMarshals - [player];

publicVariable "currentDetectives";
publicVariable "currentMarshals";

if(_type == "uav") exitwith {
	player addWeapon "B_UavTerminal";
};

if(_type == "mwater") exitwith {
	player adduniform "U_B_Wetsuit";
	player addvest "V_RebreatherB";
};

if(_type == "water") exitwith {
	player adduniform "U_B_Wetsuit";
	player addvest "V_RebreatherB";
	player addweapon "arifle_SDAR_F";
	player addmagazine "20Rnd_556x45_UW_mag";
	player addmagazine "20Rnd_556x45_UW_mag";
};

if(myJob IN ['Cop','doc'] && lastGovtUseWeapon > time) exitWith {

	["You recently got gear out, please wait 5 minutes.", true] spawn domsg;

};

lastGovtUseWeapon = time + 300;

if(myjob == "Cop") then {


	removeAllItems player;
	removeAllContainers player;
	removeAllWeapons player;
	removeAllAssignedItems player;
	removeUniform player;
	removeVest player;
	removeBackpack player;
	removeGoggles player;
	removeHeadgear player;	

	_level = player getVariable "cop";

	// commissioner
	if(_level == 10) then { 
		player forceAddUniform "TRYK_U_B_wh_blk_Rollup_CombatUniform";		
	};	

	if(_level == 9) then { 
		player forceAddUniform "silver_lake_fbi";
	};	

	// patrol bureau
	if(_type == "patrol") then {

		_freq = 33.3;

		_cost = ((_level) * 10);
		[format["The government paid %1 for your loadout.",_cost call client_fnc_numberText], true] spawn domsg;
		["govtBank", _cost, "Remove"] remoteExec["server_fnc_setValue",2];
		["govtBank", format["%1 (%2) removed %3 into the Government bank account.", name player, getplayeruid player, _cost call client_fnc_numberText]] remoteExec ["server_fnc_log",2];

		if (_level == 5) then { 
			player addBackpack "AM_PoliceBelt";
		} else {
			player addBackpack "AM_PoliceBelt"; 
		};


		player linkItem "ItemMap";
		player linkItem "ItemCompass";
		player linkItem "Itemwatch";
		player linkItem "ItemGPS";
		player linkitem "cg_tabletd";

		if(packet > 100000) then {

			player additemtobackpack "RH_uspm";

			for "_i" from 1 to 6 do {player addItemToBackPack "RH_16Rnd_40cal_usp"; };
			for "_i" from 1 to 10 do {player addItemToBackPack "vvv_np_magazine_taser"; };
			for "_i" from 1 to 1 do {player addItemToBackPack "nonlethal_swing"; };
			{ player additemtobackpack _x; } foreach ["CG_Spikes_Collapsed","cg_atf_bandage_i","cg_atf_bandage_i","cg_atf_bandage_i","cg_atf_bandage_i","cg_atf_bandage_i","cg_atf_bandage_i"];

		} ELSE {
			player additemtobackpack "RH_g17";

			for "_i" from 1 to 3 do {player addItemToBackPack "RH_17Rnd_9x19_g17"; };
			for "_i" from 1 to 3 do {player addItemToBackPack "vvv_np_magazine_taser"; };
			for "_i" from 1 to 1 do {player addItemToBackPack "nonlethal_swing"; };
			{ player additemtobackpack _x; } foreach ["CG_Spikes_Collapsed","cg_atf_bandage_i","cg_atf_bandage_i","cg_atf_bandage_i"];

		};

		player addweapon "taser";
		player addweapon "cg_baton";
		player addWeapon "Binocular";

		if(female) then { 
			if(_level == 1) then {
				player forceAddUniform "female_police";
				player addHeadgear "Campaign_Hat"; 
			};
			if(_level == 2) then {				
				player forceAddUniform "female_police";
				player addHeadgear "Campaign_Hat"; 
			};				
			if(_level == 3) then {				
				player forceadduniform "female_police2"; 
				player addHeadgear "Campaign_Hat_black";  
			};
			if(_level == 4) then {				
				player forceadduniform "female_police2";
				player addHeadgear "Campaign_Hat_black";
			};
			if(_level == 6) then {
				player forceadduniform "female_police2"; 
				player addHeadgear "Campaign_Hat_trooper"; 
			};
			if(_level == 7) then {				
				player forceAddUniform "Campaign_Hat_trooper";
				player addHeadgear "EF_Fcap_PB"; 
			};
			if(_level == 8) then {
				player forceAddUniform "Campaign_Hat_trooper";
				player addHeadgear "EF_Fcap_PB"; 
			};

		} else { 
			if(_level == 1) then {
				player forceAddUniform "silver_lake_statepolice";
				player addHeadgear "EF_Mcap_PB"; 
			};
			if(_level == 2) then {
				player forceAddUniform "silver_lake_statepolice";
				player addHeadgear "EF_Mcap_PB"; 
			};
			if(_level == 3) then {
				player forceadduniform "silver_lake_police"; 
				player addHeadgear "EF_Mcap_PB"; 
			};
			if(_level == 4) then {			
				player forceadduniform "silver_lake_police"; 
				player addHeadgear "EF_Mcap_PB"; 
			};
			if(_level == 5) then { 
				player forceadduniform "sl_client_c4_swat3_W"; 
				player addVest "EF_BSF";
				player removeweapon "cg_baton";
				player additemtobackpack "Press_Mic_CNN_F";
			};
			if(_level == 6) then {	
				player forceadduniform "silver_lake_police"; 
				player addHeadgear "EF_Mcap_PB"; 
			};
			if(_level == 7) then {		
				player forceAddUniform "silver_lake_fbi";
				player addHeadgear "EF_Mcap_PB"; 
			};
			if(_level == 8) then {
				player forceAddUniform "silver_lake_fbi";
				player addHeadgear "EF_Mcap_PB"; 
			};
		};
	};

	// dtu bureau
	if(_type == "dtu") then {

		_freq = 33.3;

		_cost = ((_level) * 10);
		[format["The government paid %1 for your loadout.",_cost call client_fnc_numberText], true] spawn domsg;
		["govtBank", _cost, "Remove"] remoteExec["server_fnc_setValue",2];
		["govtBank", format["%1 (%2) removed %3 into the Government bank account.", name player, getplayeruid player, _cost call client_fnc_numberText]] remoteExec ["server_fnc_log",2];

		player addBackpack "sl_client_c_carryall_invisible"; 

		player linkItem "ItemMap";
		player linkItem "ItemCompass";
		player linkItem "Itemwatch";
		player linkItem "ItemGPS";
		player linkitem "cg_tabletd";

	if(packet > 100000) then {

		player additemtobackpack "RH_uspm";

		for "_i" from 1 to 6 do {player addItemToBackPack "RH_16Rnd_40cal_usp"; };

		for "_i" from 1 to 10 do {player addItemToBackPack "vvv_np_magazine_taser"; };
		for "_i" from 1 to 1 do {player addItemToBackPack "nonlethal_swing"; };
		{ player additemtobackpack _x; } foreach ["CG_Spikes_Collapsed","cg_atf_bandage_i","cg_atf_bandage_i","cg_atf_bandage_i","cg_atf_bandage_i","cg_atf_bandage_i","cg_atf_bandage_i","Press_Mic_CNN_F"];

	} ELSE {
			player additemtobackpack "RH_g17";

			for "_i" from 1 to 3 do {player addItemToBackPack "RH_17Rnd_9x19_g17"; };

			for "_i" from 1 to 3 do {player addItemToBackPack "vvv_np_magazine_taser"; };
			for "_i" from 1 to 1 do {player addItemToBackPack "nonlethal_swing"; };
		{ player additemtobackpack _x; } foreach ["CG_Spikes_Collapsed","cg_atf_bandage_i","cg_atf_bandage_i","cg_atf_bandage_i","Press_Mic_CNN_F"];

	};

		player addweapon "taser";
		player addweapon "cg_baton";
		player addWeapon "Binocular";


		if(female) then { 
			
			if(_level == 1) then {
				player forceAddUniform "EF_FEM_4_2";
				currentDetectives pushBack player;
				publicVariable "currentDetectives";
			};
			if(_level == 2) then {				
				player forceAddUniform "EF_FEM_4_2";
				player addVest "EF_BLT_M1B";
				currentDetectives pushBack player;
				publicVariable "currentDetectives";
			};				
			if(_level == 3) then {	
				player forceAddUniform "EF_FEM_4_2";
				player addVest "EF_BLT_M1B";
				currentDetectives pushBack player;
				publicVariable "currentDetectives";
			};
			if(_level == 4) then {		
				player forceAddUniform "EF_FEM_4_2";
				player addVest "EF_BLT_M1B";
				currentDetectives pushBack player;
				publicVariable "currentDetectives";
			};
			if(_level == 5) then {	
				player forceAddUniform "EF_FEM_4_2";
				player addVest "EF_BLT_M1B";
				currentDetectives pushBack player;
				publicVariable "currentDetectives";
			};
			if(_level == 6) then {
				player forceadduniform "EF_FEM_4_2";
				player addVest "EF_BLT_M1B";
				currentDetectives pushBack player;
				publicVariable "currentDetectives";
			};
			if(_level == 7) then {				
				player forceAddUniform "EF_FEM_4_2";
				player addVest "EF_BLT_M1B";
				currentDetectives pushBack player;
				publicVariable "currentDetectives";
			};
			if(_level == 8) then {
				player forceAddUniform "EF_FEM_4_2";
				player addVest "EF_BLT_M1B";
				currentDetectives pushBack player;
				publicVariable "currentDetectives";
			};

		} else { 
			if(_level == 1) then {
				player forceAddUniform "EF_HMP_2";
				player addVest "EF_BLT_M1B";
				currentDetectives pushBack player;
				publicVariable "currentDetectives";
			};
			if(_level == 2) then {
				player forceAddUniform "EF_HMP_2";
				player addVest "EF_BLT_M1B";
				currentDetectives pushBack player;
				publicVariable "currentDetectives";
			};
			if(_level == 3) then {
				player forceAddUniform "EF_HMP_2";
				player addVest "EF_BLT_M1B";
				currentDetectives pushBack player;
				publicVariable "currentDetectives";
			};
			if(_level == 4) then {	
				player forceAddUniform "EF_HMP_2";
				player addVest "EF_BLT_M1B";
				currentDetectives pushBack player;
				publicVariable "currentDetectives";
			};
			if(_level == 5) then {	
				player forceAddUniform "EF_HMP_2";
				player addVest "EF_BLT_M1B";
				currentDetectives pushBack player;
				publicVariable "currentDetectives";
			};
			if(_level == 6) then {	
				player forceAddUniform "EF_HMP_2";
				player addVest "EF_BLT_M1B";
				currentDetectives pushBack player;
				publicVariable "currentDetectives";
			};
			if(_level == 7) then {	
				player forceAddUniform "EF_HMP_2";
				player addVest "EF_BLT_M1B";
				currentDetectives pushBack player;
				publicVariable "currentDetectives";
			};
			if(_level == 8) then {
				player forceAddUniform "EF_HMP_2";
				player addVest "EF_BLT_M1B";
				currentDetectives pushBack player;
				publicVariable "currentDetectives";
			};

		};
	};

	// marshal bureau
	if(_type == "marshal") then {

		_freq = 33.5;

		if(count currentMarshals > 5) exitWith { ["There are too many Marshals on duty.", true] spawn domsg; };

		currentMarshals pushBack player;
		publicVariable "currentMarshals";

		_cost = ((_level) * 10);
		[format["The government paid %1 for your loadout.",_cost call client_fnc_numberText], true] spawn domsg;
		["govtBank", _cost, "Remove"] remoteExec["server_fnc_setValue",2];
		["govtBank", format["%1 (%2) removed %3 into the Government bank account.", name player, getplayeruid player, _cost call client_fnc_numberText]] remoteExec ["server_fnc_log",2];

		player addBackpack "AM_PoliceBelt"; 

		player linkItem "ItemMap";
		player linkItem "ItemCompass";
		player linkItem "Itemwatch";
		player linkItem "ItemGPS";
		player linkitem "cg_tabletd";

	if(packet > 100000) then {

		player additemtobackpack "RH_uspm";

		for "_i" from 1 to 6 do {player addItemToBackPack "RH_16Rnd_40cal_usp"; };

		for "_i" from 1 to 10 do {player addItemToBackPack "vvv_np_magazine_taser"; };
		for "_i" from 1 to 1 do {player addItemToBackPack "nonlethal_swing"; };
		{ player additemtobackpack _x; } foreach ["CG_Spikes_Collapsed","cg_atf_bandage_i","cg_atf_bandage_i","cg_atf_bandage_i","cg_atf_bandage_i","cg_atf_bandage_i","cg_atf_bandage_i"];

	} ELSE {
			player additemtobackpack "RH_g17";

			for "_i" from 1 to 3 do {player addItemToBackPack "RH_17Rnd_9x19_g17"; };

			for "_i" from 1 to 3 do {player addItemToBackPack "vvv_np_magazine_taser"; };
			for "_i" from 1 to 1 do {player addItemToBackPack "nonlethal_swing"; };
		{ player additemtobackpack _x; } foreach ["CG_Spikes_Collapsed","cg_atf_bandage_i","cg_atf_bandage_i","cg_atf_bandage_i"];

	};
		player addweapon "taser";
		player addweapon "cg_baton";
		player addWeapon "Binocular";

		if(female) then { 
			if(_level == 1) then {
				player forceAddUniform "EF_FEM_3_3G";
			};
			if(_level == 2) then {				
				player forceAddUniform "EF_FEM_3_3G";
			};				
			if(_level == 3) then {				
				player forceAddUniform "EF_FEM_3_3G";
			};
			if(_level == 4) then {				
				player forceAddUniform "EF_FEM_3_3G";
			};
			if(_level == 5) then {
				player forceAddUniform "EF_FEM_3_3G";
			};
			if(_level == 6) then {
				player forceAddUniform "EF_FEM_3_3G";
			};
			if(_level == 7) then {				
				player forceAddUniform "EF_FEM_3_3G";
			};
			if(_level == 8) then {
				player forceAddUniform "EF_FEM_3_3G";
			};

		} else { 
			if(_level == 1) then {
				player forceAddUniform "EF_HMMSL_1";
			};
			if(_level == 2) then {				
				player forceAddUniform "EF_HMMSL_1";
			};				
			if(_level == 3) then {				
				player forceadduniform "EF_HMMSL_1"; 
			};
			if(_level == 4) then {				
				player forceadduniform "EF_HMMSL_1";
			};
			if(_level == 5) then {
				player forceadduniform "EF_HMMSL_2"; 
			};
			if(_level == 6) then {
				player forceadduniform "EF_HMMSL_2"; 
			};
			if(_level == 7) then {				
				player forceadduniform "EF_HMMSL_2"; 
			};
			if(_level == 8) then {
				player forceAddUniform "EF_HMMSL_2";
			};

		};
	};
	
	// SWAT
	if(_type == "swat") then {

		_freq = 33.3;

		_cost = 5000;
		[format["The government paid %1 for your loadout.",_cost call client_fnc_numberText], true] spawn domsg;
		["govtBank", _cost, "Remove"] remoteExec["server_fnc_setValue",2];
		["govtBank", format["%1 (%2) removed %3 into the Government bank account.", name player, getplayeruid player, _cost call client_fnc_numberText]] remoteExec ["server_fnc_log",2];

		player forceAddUniform "sl_client_c4_swat_W";
		
		player addBackpack "AM_POLICEBELT";

		player addWeapon "Binocular";
		player linkItem "ItemMap";
		player linkItem "ItemCompass";
		player linkItem "Itemwatch";
		player linkItem "ItemGPS";
		player linkitem "cg_tabletd";


		player addHeadgear "TRYK_H_PASGT_BLK";
		player addGoggles "Balaclava_Blk_Plain";

		for "_i" from 1 to 9 do {player addItemTobackpack "29rnd_300BLK_STANAG";};
		for "_i" from 1 to 4 do {player addItemTobackpack "SUPER_Flash";};
		for "_i" from 1 to 9 do {player addItemToBackpack "RH_16Rnd_40cal_usp";};	

		{ player additemtobackpack _x; } foreach ["ToolKit","CG_Spikes_Collapsed","cg_atf_bandage_i","cg_atf_bandage_i","cg_atf_bandage_i","cg_atf_bandage_i","cg_atf_bandage_i","cg_atf_bandage_i"];

		player addWeapon "hlc_rifle_vendimus";
		player addWeapon "RH_uspm";

		player addPrimaryWeaponItem "optic_MRCO";

	};

	[] SPAWN {


	};
};

if(myjob == "doc") then {
	removeAllItems player;
	removeAllContainers player;
	removeAllWeapons player;
	removeAllAssignedItems player;
	removeUniform player;
	removeVest player;
	removeBackpack player;
	removeGoggles player;
	removeHeadgear player;	
	_level = player getvariable "doc";

	// commissioner
	if(_level == 10) then { 
		if(female) then { 
				player forceAddUniform "female_police3";
		} else {
				player forceAddUniform "silver_lake_fbi";
				player addheadgear "M_sheriffhat";
		};	
	};		


	// Prison bureau
	if(_type == "prison") then {

		_freq = 33.2;

		_cost = ((_level) * 10);
		[format["The government paid %1 for your loadout.",_cost call client_fnc_numberText], true] spawn domsg;
		["govtBank", _cost, "Remove"] remoteExec["server_fnc_setValue",2];
		["govtBank", format["%1 (%2) removed %3 into the Government bank account.", name player, getplayeruid player, _cost call client_fnc_numberText]] remoteExec ["server_fnc_log",2];

		player addBackpack "AM_PoliceBelt";

		if(packet > 100000) then {

			player additemtobackpack "RH_uspm";

			for "_i" from 1 to 6 do {player addItemToBackPack "RH_16Rnd_40cal_usp"; };

			for "_i" from 1 to 10 do {player addItemToBackPack "vvv_np_magazine_taser"; };
			for "_i" from 1 to 1 do {player addItemToBackPack "nonlethal_swing"; };
			{ player additemtobackpack _x; } foreach ["CG_Spikes_Collapsed","cg_atf_bandage_i","cg_atf_bandage_i","cg_atf_bandage_i","cg_atf_bandage_i","cg_atf_bandage_i","cg_atf_bandage_i"];

		} ELSE {

				player additemtobackpack "RH_g17";

				for "_i" from 1 to 3 do {player addItemToBackPack "RH_17Rnd_9x19_g17"; };

				for "_i" from 1 to 3 do {player addItemToBackPack "vvv_np_magazine_taser"; };
				for "_i" from 1 to 1 do {player addItemToBackPack "nonlethal_swing"; };
			{ player additemtobackpack _x; } foreach ["CG_Spikes_Collapsed","cg_atf_bandage_i","cg_atf_bandage_i","cg_atf_bandage_i"];

		};

		player addweapon "cg_baton";
		player addweapon "taser";
		player addWeapon "Binocular";

		player linkItem "ItemMap";
		player linkItem "ItemCompass";
		player linkItem "Itemwatch";
		player linkItem "ItemGPS";
		player linkitem "cg_tabletd";

		if(female) then { 
			
			if(_level == 1) then {
				player forceAddUniform "female_police";
			};
			if(_level == 2) then {				
				player forceAddUniform "female_police";
			};				
			if(_level == 3) then {	
				player forceAddUniform "female_police1";
			};
			if(_level == 4) then {		
				player forceAddUniform "female_police1";
			};
			if(_level == 5) then {	
				player forceAddUniform "female_police1";
			};
			if(_level == 6) then {
				player forceadduniform "female_police1";  
			};
			if(_level == 7) then {				
				player forceAddUniform "female_police3"; 
			};
			if(_level == 8) then {
				player forceAddUniform "female_police3";
			};
			if(_level == 9) then {
				player forceAddUniform "female_police3";
			};

		} else { 
			if(_level == 1) then {
				player forceAddUniform "silver_lake_statepolice";
				player addHeadgear "M_sheriffhat"; 
			};
			if(_level == 2) then {
				player forceAddUniform "silver_lake_statepolice";
				player addHeadgear "M_sheriffhat"; 
			};
			if(_level == 3) then {
				player forceAddUniform "silver_lake_sheriff";
				player addHeadgear "M_sheriffhat"; 
			};
			if(_level == 4) then {	
				player forceAddUniform "silver_lake_sheriff";
				player addHeadgear "M_sheriffhat"; 
			};
			if(_level == 5) then {	
				player forceAddUniform "silver_lake_sheriff";
				player addHeadgear "M_sheriffhat"; 
			};
			if(_level == 6) then {	
				player forceAddUniform "silver_lake_sheriff";
				player addHeadgear "M_sheriffhat"; 
			};
			if(_level == 7) then {	
				player forceAddUniform "silver_lake_fbi";
				player addHeadgear "M_sheriffhat"; 
			};
			if(_level == 8) then {
				player forceAddUniform "silver_lake_fbi";
				player addHeadgear "M_sheriffhat"; 
			};
			if(_level == 9) then {
				player forceAddUniform "silver_lake_fbi";
				player addHeadgear "M_sheriffhat"; 
			};

		};
	};
	
	if(_type == "crt") then {

		_freq = 33.2;

		_cost = 5000;
		[format["The government paid %1 for your loadout.",_cost call client_fnc_numberText], true] spawn domsg;
		["govtBank", _cost, "Remove", false] remoteExec["server_fnc_setValue",2];
		["govtBank", format["%1 (%2) removed %3 into the Government bank account.", name player, getplayeruid player, _cost call client_fnc_numberText]] remoteExec ["server_fnc_log",2];

		player forceAddUniform "sl_client_c4_swat_W";
		
		player addBackpack "AM_POLICEBELT";

		player addWeapon "Binocular";
		player linkItem "ItemMap";
		player linkItem "ItemCompass";
		player linkItem "Itemwatch";
		player linkItem "ItemGPS";
		player linkitem "cg_tabletd";


		player addHeadgear "TRYK_H_PASGT_BLK";
		player addGoggles "Balaclava_Blk_Plain";

		for "_i" from 1 to 9 do {player addItemTobackpack "29rnd_300BLK_STANAG";};
		for "_i" from 1 to 4 do {player addItemTobackpack "SUPER_Flash";};
		for "_i" from 1 to 9 do {player addItemToBackpack "RH_16Rnd_40cal_usp";};	

		{ player additemtobackpack _x; } foreach ["ToolKit","CG_Spikes_Collapsed","cg_atf_bandage_i","cg_atf_bandage_i","cg_atf_bandage_i","cg_atf_bandage_i","cg_atf_bandage_i","cg_atf_bandage_i"];

		player addWeapon "hlc_rifle_vendimus";
		player addWeapon "RH_uspm";

		player addPrimaryWeaponItem "optic_MRCO";
	};

};

if(myJob == "EMS") then {
	removeAllItems player;
	removeAllContainers player;
	removeAllWeapons player;
	removeAllAssignedItems player;
	removeUniform player;
	removeVest player;
	removeBackpack player;
	removeGoggles player;
	removeHeadgear player;	

	_level = player getvariable "EMS";

	if(_type == "Fire") then {

		_freq = 33.1;
		
		_cost = ((_level) * 10);
		[format["The government paid %1 for your loadout.",_cost call client_fnc_numberText], true] spawn domsg;
		["govtBank", _cost, "Remove"] remoteExec["server_fnc_setValue",2];
		["govtBank", format["%1 (%2) removed %3 into the Government bank account.", name player, getplayeruid player, _cost call client_fnc_numberText]] remoteExec ["server_fnc_log",2];

		player addWeapon "Binocular";

		player linkItem "ItemMap";
		player linkItem "ItemCompass";
		player linkItem "Itemwatch";
		player linkItem "ItemGPS";
		player linkitem "cg_tabletd";

		_level = player getVariable "fire";
		player forceAddUniform "vvv_traje_bombero_2";
		player addBackpack "sl_client_c_medic";
		{ player additemtobackpack _x; } foreach ["cg_atf_bandage_i","cg_atf_bandage_i","cg_atf_bandage_i","cg_atf_bandage_i"];

		for "_i" from 1 to 10 do {player addItemToBackPack "Manguera_magazine";};

		player addweapon "fireextinguisher";
	};


	if(_type == "EMS") then {

		_freq = 33.1;
		
		_cost = ((_level) * 10);
		[format["The government paid %1 for your loadout.",_cost call client_fnc_numberText], true] spawn domsg;
		["govtBank", _cost, "Remove"] remoteExec["server_fnc_setValue",2];
		["govtBank", format["%1 (%2) removed %3 into the Government bank account.", name player, getplayeruid player, _cost call client_fnc_numberText]] remoteExec ["server_fnc_log",2];

		player addWeapon "Binocular";
		player linkItem "ItemMap";
		player linkItem "ItemCompass";
		player linkItem "Itemwatch";
		player linkItem "ItemGPS";
		player linkitem "cg_tabletd";


		if(female) then { 
		    if(_level == 1) then { player forceAddUniform "female_ems9"; };
			if(_level == 2) then { player forceAddUniform "female_ems9"; };
			if(_level == 3) then { player forceAddUniform "female_ems5"; };
			if(_level == 4) then { player forceAddUniform "female_ems8"; };
			if(_level == 5) then { player forceAddUniform "female_ems3"; };
			if(_level == 6) then { player forceAddUniform "female_ems1"; };
			if(_level == 7) then { player forceAddUniform "female_ems7"; };
			if(_level == 8) then { player forceAddUniform "female_ems7"; };
			if(_level == 9) then { player forceAddUniform "female_ems7"; };
			if(_level == 10) then { player forceAddUniform "female_ems7"; };
		} else { 

		    if(_level == 1) then { player forceAddUniform "CG_EMS1"; };
			if(_level == 2) then { player forceAddUniform "CG_EMS2"; };
			if(_level == 3) then { player forceAddUniform "EMT_uni1"; };
			if(_level == 4) then { player forceAddUniform "SEMT_uni1"; };
			if(_level == 5) then { player forceAddUniform "paramedic_uni1"; };
			if(_level == 6) then { player forceAddUniform "sparamedic_uni1"; };
			if(_level == 7) then { player forceAddUniform "Lieutenant_uni1"; };
			if(_level == 8) then { player forceAddUniform "Captain_uni1"; };
			if(_level == 9) then { player forceAddUniform "Chief_uni1"; };
			if(_level == 10) then { player forceAddUniform "Commissioner_uni1"; };

		};

		player addGoggles "Masque_Chirurgical";
		player addBackpack "sl_client_c_medic";
		{ player additemtobackpack _x; } foreach ["cg_atf_bandage_i","cg_atf_bandage_i"];
	};
};

if(myjob == "Mafia") then {

    _freq = 72.1;

	_level = player getVariable "Mafia";
	
	if(_level >= 1 && _level <= 2) then { player forceAddUniform "sl_client_c_suit_W_O_D"; };

	if(_level >= 3 && _level <= 5) then { player addHeadgear "H_Hat_brown"; };

	if(_level >= 6 && _level <= 9) then { player addHeadgear "H_Hat_tan"; };

	if(_level == 10 ) then { player addHeadgear "H_Hat_grey"; };

	if(_level >= 3 && _level <= 10 && female) then { 
		player forceAddUniform "sl_client_c_suitmafia_W";
	} else { 
		player forceAddUniform "sl_client_c_suitmafia_W";
	};

};

if(myjob == "Biker") then {

	_freq = 69.1;

	_level = player getVariable "Biker";
	
	if(_level == 2) then { player addHeadgear "acj_casco_germani"; player addvest "brotherhood_1"; player addweapon "cg_bat"; for "_i" from 1 to 1 do {player addItemToBackPack "nonlethal_swing"; };};
	if(_level >= 3 && _level <= 4) then { player addHeadgear "acj_casco_germani"; player addvest "brotherhood_2to4"; player addweapon "cg_bat"; for "_i" from 1 to 1 do {player addItemToBackPack "nonlethal_swing"; };};
	if(_level == 5) then { player addHeadgear "acj_casco_espider"; player addvest "brotherhood_5"; player addweapon "cg_bat"; for "_i" from 1 to 1 do {player addItemToBackPack "nonlethal_swing"; };};
	if(_level == 6) then { player addHeadgear "acj_casco_espider"; player addvest "brotherhood_6"; player addweapon "cg_bat"; for "_i" from 1 to 1 do {player addItemToBackPack "nonlethal_swing"; };};
	if(_level == 7) then { player addHeadgear "acj_casco_espider"; player addvest "brotherhood_7"; player addweapon "cg_bat"; for "_i" from 1 to 1 do {player addItemToBackPack "nonlethal_swing"; };};
	if(_level == 8) then { player addHeadgear "acj_casco_calavera"; player addvest "brotherhood_8"; player addweapon "cg_bat"; for "_i" from 1 to 1 do {player addItemToBackPack "nonlethal_swing"; };};
	if(_level == 9) then { player addHeadgear "acj_casco_calavera"; player addvest "brotherhood_9"; player addweapon "cg_bat"; for "_i" from 1 to 1 do {player addItemToBackPack "nonlethal_swing"; };};
	if(_level == 10) then { player addHeadgear "acj_casco_gris"; player addvest "brotherhood_10"; player addweapon "cg_bat"; for "_i" from 1 to 1 do {player addItemToBackPack "nonlethal_swing"; };};
};





if(myjob == "Mobster") then {

	_level = player getVariable "Mobster";

	if(_level >= 3 && _level <= 5) then { player addHeadgear "H_Hat_brown"; };

	if(_level >= 6 && _level <= 9) then { player addGoggles "G_Aviator"; player addHeadgear "H_Hat_tan"; };

	if(_level == 10 ) then { player addGoggles "G_Aviator"; player addHeadgear "H_Hat_grey"; };


	if(female) then { 
		player forceAddUniform "woman4_4";
	} else { 
		player forceAddUniform "vvv_gangster_white";
	};

	
	if(_level >= 5 && _level <= 7) then { player addHeadgear "H_Hat_blue"; };

	if(_level >= 8) then { player addHeadgear "H_Hat_tan"; };

};

if(myjob == "Legal") then {

	_level = player getVariable "Legal";

	if(_level >= 9) then { player forceAddUniform "KAEL_SUITS_BR_Judge"; };

};

if(currentweapon player != "") then {
	player action ["SwitchWeapon", player, player, 400];
};

if(_freq != 0) then {
	[_freq] SPAWN {
		params["_freq"];
		
		uisleep 3;
		[] spawn client_fnc_tryhangup;
		uisleep 5;
		_freq call client_fnc_changeFrequency;
	};
};

packet=nil;