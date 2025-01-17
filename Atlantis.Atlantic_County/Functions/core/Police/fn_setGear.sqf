//file: setGear
params["_type"];


_freq = 0;
[player,"don_empty"] call BIS_fnc_setUnitInsignia;
[player, "govtbank"] remoteExec ["client_fnc_getremotevar",2];
waitUntil { !isNil "packet"; };

currentDetectives = currentDetectives - [player];
currentMarshals = currentMarshals - [player];
currentAIA = currentAIA - [player];

publicVariable "currentDetectives";
publicVariable "currentMarshals";
publicVariable "currentAIA";

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

	["Ostatnio pobrałeś sprzęt, poczekaj 5 minut.", true] spawn domsg;

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

	// komediant
	if(_level == 12) then { 
		player forceAddUniform "dbo_PD_Chief";		
	};	
	//zastępca
	if(_level == 11) then { 
		player forceAddUniform "dbo_PD_Deputy";
	};	

	// patrol bureau
	if(_type == "patrol") then {

		_freq = 33.3;

		_cost = ((_level) * 10);
		[format["Rząd zapłacił %1 za twoje wyposażenie.",_cost call client_fnc_numberText], true] spawn domsg;
		[format["Twój numer odzaki: %1",player getVariable "badgenumber"], true] spawn domsg;
		["govtBank", _cost, "Remove"] remoteExec["server_fnc_setValue",2];
		format["GearLog: %1 (%2) took PATROL loadout.", name player, getplayeruid player] remoteExecCall["diag_log",2];
		format["%1 (%2) removed %3 into the Government bank account.", name player, getplayeruid player, _cost call client_fnc_numberText] remoteExecCall["diag_log",2];

		player addBackpack "AM_PoliceBelt";

		//player addItem "ItemMap";
		player linkItem "ItemMap";
		//player addItem "ItemCompass";
		player linkItem "ItemCompass";
		//player addItem "Oase_ID_Card_Police";
		player linkItem "Oase_ID_Card_Police";
		//player addItem "ItemGPS";
		player linkItem "ItemGPS";
		player linkitem "cg_tabletd";


		player additemtobackpack "RH_uspm";
		player additemtobackpack "Toolkit";

			for "_i" from 1 to 6 do {player addItemToBackPack "RH_16Rnd_40cal_usp"; };
			for "_i" from 1 to 10 do {player addItemToBackPack "vvv_np_magazine_taser"; };
			for "_i" from 1 to 1 do {player addItemToBackPack "nonlethal_swing"; };
			{ player additemtobackpack _x; } foreach ["CG_Spikes_Collapsed","cg_atf_bandage_i","cg_atf_bandage_i","cg_atf_bandage_i","cg_atf_bandage_i","cg_atf_bandage_i","cg_atf_bandage_i"];

		player addweapon "taser";
		player addweapon "cg_baton";
		player addWeapon "Binocular";

		if(female) then { 
			if(_level == 1) then {
				player forceAddUniform "dbo_PD_Cadet";
				player addHeadgear "Campaign_Hat_Light"; 
			};
			if(_level == 2) then {				
				player forceAddUniform "dbo_PD_Trooper";
				player addHeadgear "Campaign_Hat_Light"; 
			};				
			if(_level == 3) then {				
				player forceadduniform "dbo_PD_Senior"; 
				player addHeadgear "Campaign_Hat_Light";  
			};
			if(_level == 4) then {				
				player forceadduniform "dbo_PD_Master";
				player addHeadgear "Campaign_Hat_Light";
			};
			if(_level == 5) then {				
				player forceadduniform "dbo_PD_Corporal";
				player addHeadgear "Campaign_Hat_Light";
			};
			if(_level == 6) then {
				player forceadduniform "dbo_PD_Sergeant"; 
				player addHeadgear "Campaign_Hat_Light"; 
			};
			if(_level == 7) then {				
				player forceAddUniform "dbo_PD_Lieutenant";
				player addHeadgear "Campaign_Hat_Light"; 
			};
			if(_level == 8) then {
				player forceAddUniform "dbo_PD_Captain";
				player addHeadgear "Campaign_Hat_Light"; 
			};
			if(_level == 9) then {
				player forceAddUniform "dbo_PD_Inspector";
				player addHeadgear "Campaign_Hat_Light"; 
			};
			if(_level == 10) then {
				player forceAddUniform "dbo_PD_Mayor";
				player addHeadgear "Campaign_Hat_Light"; 
			};

		} else { 
			switch (_level) do {
				case 1: {
					player forceAddUniform "dbo_PD_Cadet";
					player addHeadgear "Campaign_Hat_Light";
				};
				case 2: {
					player forceAddUniform "dbo_PD_Trooper";
					player addHeadgear "Campaign_Hat_Light";
				};
				case 3: {
					player forceAddUniform "dbo_PD_Senior";
					player addHeadgear "Campaign_Hat_Light";
				};
				case 4: {
					player forceAddUniform "dbo_PD_Master";
					player addHeadgear "Campaign_Hat_Light";
				};
				case 5: {
					player forceAddUniform "dbo_PD_Corporal";
					player addHeadgear "Campaign_Hat_Light";
				};
				case 6: {
					player forceAddUniform "dbo_PD_Sergeant";
					player addHeadgear "Campaign_Hat_Light";
				};
				case 7: {
					player forceAddUniform "dbo_PD_Lieutenant";
					player addHeadgear "Campaign_Hat_Light";
				};
				case 8: {
					player forceAddUniform "dbo_PD_Captain";
					player addHeadgear "Campaign_Hat_Light";
				};
				case 9: {
					player forceAddUniform "dbo_PD_Inspector";
					player addHeadgear "Campaign_Hat_Light";
				};
				case 10: {
					player forceAddUniform "dbo_PD_Mayor";
					player addHeadgear "Campaign_Hat_Light";
				};
			};
		};
	};

	// dtu bureau
	if(_type == "dtu") then {

		_freq = 33.3;

		_cost = ((_level) * 10);
		[format["Rząd zapłacił %1 za twoje wyposażenie.",_cost call client_fnc_numberText], true] spawn domsg;
		[format["Twój numer odznaki: %1",player getVariable "badgenumber"], true] spawn domsg;
		["govtBank", _cost, "Remove"] remoteExec["server_fnc_setValue",2];
		format["GearLog: %1 (%2) took DTU loadout.", name player, getplayeruid player] remoteExecCall["diag_log",2];
		format["%1 (%2) removed %3 into the Government bank account.", name player, getplayeruid player, _cost call client_fnc_numberText] remoteExecCall["diag_log",2];

		player addBackpack "AM_PoliceBelt";

		//player addItem "ItemMap";
		player linkItem "ItemMap";
		//player addItem "ItemCompass";
		player linkItem "ItemCompass";
		//player addItem "Oase_ID_Card_Police";
		player linkItem "Oase_ID_Card_Police";
		//player addItem "ItemGPS";
		player linkItem "ItemGPS";
		player linkitem "cg_tabletd";

		player additemtobackpack "RH_uspm";
		player additemtobackpack "Toolkit";

		for "_i" from 1 to 6 do {player addItemToBackPack "RH_16Rnd_40cal_usp"; };
		for "_i" from 1 to 10 do {player addItemToBackPack "vvv_np_magazine_taser"; };
		for "_i" from 1 to 1 do {player addItemToBackPack "nonlethal_swing"; };
		{ player additemtobackpack _x; } foreach ["CG_Spikes_Collapsed","cg_atf_bandage_i","cg_atf_bandage_i","cg_atf_bandage_i","cg_atf_bandage_i","cg_atf_bandage_i","cg_atf_bandage_i","Press_Mic_CNN_F"];

		player addweapon "taser";
		player addweapon "cg_baton";
		player addWeapon "Binocular";
		currentDetectives pushBack player;
		publicVariable "currentDetectives";


		if(female) then { 
			
			if(_level == 1) then {
				player forceAddUniform "hoodie_dtu_2";
			};
			if(_level == 2) then {				
				player forceAddUniform "hoodie_dtu_2";
				player addHeadgear "TRYK_R_CAP_BLK";
			};				
			if(_level == 3) then {	
				player forceAddUniform "hoodie_dtu_2";
				player addHeadgear "TRYK_R_CAP_BLK";
			};
			if(_level == 4) then {		
				player forceAddUniform "hoodie_dtu_2";
				player addHeadgear "TRYK_R_CAP_BLK";
			};
			if(_level == 5) then {	
				player forceAddUniform "hoodie_dtu_2";
				player addHeadgear "TRYK_R_CAP_BLK";
			};
			if(_level == 6) then {
				player forceadduniform "hoodie_dtu_1";
				player addHeadgear "TRYK_R_CAP_BLK";
			};
			if(_level == 7) then {				
				player forceAddUniform "hoodie_dtu_1";
				player addHeadgear "TRYK_R_CAP_BLK";
			};
			if(_level == 8) then {
				player forceAddUniform "hoodie_dtu_1";
				player addHeadgear "TRYK_R_CAP_BLK";
			};
			if(_level == 9) then {				
				player forceAddUniform "hoodie_dtu_1";
				player addHeadgear "TRYK_R_CAP_BLK";
			};
			if(_level == 10) then {
				player forceAddUniform "hoodie_dtu_3";
				player addHeadgear "TRYK_R_CAP_BLK";
			};

		} else { 
			switch (_level) do {
				case 1: {
					player forceAddUniform "hoodie_dtu_2";
					player addHeadgear "TRYK_R_CAP_BLK";
				};
				case 2: {
					player forceAddUniform "hoodie_dtu_2";
					player addHeadgear "TRYK_R_CAP_BLK";
				};
				case 3: {
					player forceAddUniform "hoodie_dtu_2";
					player addHeadgear "TRYK_R_CAP_BLK";
				};
				case 4: {
					player forceAddUniform "hoodie_dtu_2";
					player addHeadgear "TRYK_R_CAP_BLK";
				};
				case 5: {
					player forceAddUniform "hoodie_dtu_2";
					player addHeadgear "TRYK_R_CAP_BLK";
				};
				case 6: {
					player forceAddUniform "hoodie_dtu_1";
					player addHeadgear "TRYK_R_CAP_BLK";
				};
				case 7: {
					player forceAddUniform "hoodie_dtu_1";
					player addHeadgear "TRYK_R_CAP_BLK";
				};
				case 8: {
					player forceAddUniform "hoodie_dtu_1";
					player addHeadgear "TRYK_R_CAP_BLK";
				};
				case 9: {
					player forceAddUniform "hoodie_dtu_1";
					player addHeadgear "TRYK_R_CAP_BLK";
				};
				case 10: {
					player forceAddUniform "hoodie_dtu_3";
					player addHeadgear "TRYK_R_CAP_BLK";
				};
			};

		};
	};
	// aia 
	//wy jesteście oddział wewnętrzny a nie KURWA POLICJA
	if(_type == "aia") then {

		_freq = 33.3; // do ustalenia z komediantem

		_cost = ((_level) * 10);
		[format["Rząd zapłacił %1 za twoje wyposażenie.",_cost call client_fnc_numberText], true] spawn domsg;
		[format["Twój numer odznaki: %1",player getVariable "badgenumber"], true] spawn domsg;
		["govtBank", _cost, "Remove"] remoteExec["server_fnc_setValue",2];
		format["GearLog: %1 (%2) took AIA loadout.", name player, getplayeruid player] remoteExecCall["diag_log",2];
		format["%1 (%2) removed %3 into the Government bank account.", name player, getplayeruid player, _cost call client_fnc_numberText] remoteExecCall["diag_log",2];

		player addBackpack "AM_PoliceBelt";

		//player addItem "ItemMap";
		player linkItem "ItemMap";
		//player addItem "ItemCompass";
		player linkItem "ItemCompass";
		//player addItem "Oase_ID_Card_Police";
		player linkItem "Oase_ID_Card_Police";
		//player addItem "ItemGPS";
		player linkItem "ItemGPS";
		player linkitem "cg_tabletd";
		player additemtobackpack "RH_uspm";
		player additemtobackpack "Toolkit";

		for "_i" from 1 to 6 do {player addItemToBackPack "RH_16Rnd_40cal_usp"; };
		for "_i" from 1 to 10 do {player addItemToBackPack "vvv_np_magazine_taser"; };
		for "_i" from 1 to 1 do {player addItemToBackPack "nonlethal_swing"; };
		{ player additemtobackpack _x; } foreach ["CG_Spikes_Collapsed","cg_atf_bandage_i","cg_atf_bandage_i","cg_atf_bandage_i","cg_atf_bandage_i","cg_atf_bandage_i","cg_atf_bandage_i","Press_Mic_CNN_F"];

		player addweapon "taser";
		player addweapon "cg_baton";
		player addWeapon "Binocular";
		currentAIA pushBack player;
		publicVariable "currentAIA";

		//sprzęt do zmiany na jakiś co im dobro zrobi
		if(female) then { 
			
			if(_level == 1) then {
				player forceAddUniform "dbo_AIA_Probie";
				player addHeadgear "Campaign_Hat_Dark";		
			};
			if(_level == 2) then {				
				player forceAddUniform "dbo_AIA_Probie";
				player addHeadgear "Campaign_Hat_Dark";
			};				
			if(_level == 3) then {	
				player forceAddUniform "dbo_AIA_Probie";
				player addHeadgear "Campaign_Hat_Dark";
			};
			if(_level == 4) then {		
				player forceAddUniform "dbo_AIA_Probie";
				player addHeadgear "Campaign_Hat_Dark";
			};
			if(_level == 5) then {	
				player forceAddUniform "dbo_AIA_Probie";
				player addHeadgear "Campaign_Hat_Dark";
			};
			if(_level == 6) then {
				player forceadduniform "dbo_AIA_Probie";
				player addHeadgear "Campaign_Hat_Dark";
			};
			if(_level == 7) then {				
				player forceAddUniform "dbo_AIA_Probie";
				player addHeadgear "Campaign_Hat_Dark";
			};
			if(_level == 8) then {
				player forceAddUniform "dbo_AIA_Probie";
				player addHeadgear "Campaign_Hat_Dark";
			};
			if(_level == 9) then {				
				player forceAddUniform "dbo_AIA_Probie";
				player addHeadgear "Campaign_Hat_Dark";
			};
			if(_level == 10) then {
				player forceAddUniform "dbo_AIA_Probie";
				player addHeadgear "Campaign_Hat_Dark";
			};

		} else { 
			switch (_level) do {
				case 1: {
					player forceAddUniform "dbo_AIA_Probie";
					player addHeadgear "Campaign_Hat_Dark";
				};
				case 2: {
					player forceAddUniform "dbo_AIA_Probie";
					player addHeadgear "Campaign_Hat_Dark";
				};
				case 3: {
					player forceAddUniform "dbo_AIA_Probie";
					player addHeadgear "Campaign_Hat_Dark";
				};
				case 4: {
					player forceAddUniform "dbo_AIA_Probie";
					player addHeadgear "Campaign_Hat_Dark";
				};
				case 5: {
					player forceAddUniform "dbo_AIA_Probie";
					player addHeadgear "Campaign_Hat_Dark";
				};
				case 6: {
					player forceAddUniform "dbo_AIA_Probie";
					player addHeadgear "Campaign_Hat_Dark";
				};
				case 7: {
					player forceAddUniform "dbo_AIA_Probie";
					player addHeadgear "Campaign_Hat_Dark";
				};
				case 8: {
					player forceAddUniform "dbo_AIA_Probie";
					player addHeadgear "Campaign_Hat_Dark";
				};
				case 9: {
					player forceAddUniform "dbo_AIA_Probie";
					player addHeadgear "Campaign_Hat_Dark";
				};
				case 10: {
					player forceAddUniform "dbo_AIA_Probie";
					player addHeadgear "Campaign_Hat_Dark";
				};
			};

		};
	};

	// marshal bureau
	if(_type == "marshal") then {

		_freq = 33.5;
		[player,"usms_sog_patch_g"] call BIS_fnc_setUnitInsignia;
		if(count currentMarshals > 5) exitWith { ["There are too many Marshals on duty.", true] spawn domsg; };

		currentMarshals pushBack player;
		publicVariable "currentMarshals";

		_cost = ((_level) * 10);
		[format["Rząd zapłacił %1 za twoje wyposażenie.",_cost call client_fnc_numberText], true] spawn domsg;
		[format["Twój numer odznaki: %1",player getVariable "badgenumber"], true] spawn domsg;
		["govtBank", _cost, "Remove"] remoteExec["server_fnc_setValue",2];
		format["GearLog: %1 (%2) took MARSHAL loadout.", name player, getplayeruid player] remoteExecCall["diag_log",2];
		format["%1 (%2) removed %3 into the Government bank account.", name player, getplayeruid player, _cost call client_fnc_numberText] remoteExecCall["diag_log",2];

		player addBackpack "AM_PoliceBelt"; 

		player linkItem "ItemMap";
		player linkItem "ItemCompass";
		player linkItem "Oase_ID_Card_Police";
		player linkItem "ItemGPS";
		player linkitem "cg_tabletd";

		player additemtobackpack "RH_uspm";
		player additemtobackpack "Toolkit";

		for "_i" from 1 to 8 do {player addItemToBackPack "RH_16Rnd_40cal_usp"; };

		for "_i" from 1 to 10 do {player addItemToBackPack "vvv_np_magazine_taser"; };
		for "_i" from 1 to 1 do {player addItemToBackPack "nonlethal_swing"; };
		{ player additemtobackpack _x; } foreach ["CG_Spikes_Collapsed","cg_atf_bandage_i","cg_atf_bandage_i","cg_atf_bandage_i","cg_atf_bandage_i","cg_atf_bandage_i","cg_atf_bandage_i"];


	
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
			if(_level == 9) then {				
				player forceAddUniform "EF_FEM_3_3G";
			};
			if(_level == 10) then {
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
			if(_level == 9) then {				
				player forceadduniform "EF_HMMSL_2"; 
			};
			if(_level == 10) then {
				player forceAddUniform "EF_HMMSL_2";
			};

		};
	};
	
	// SWAT
	if(_type == "swat") then {

		_freq = 33.3;

		_cost = 5000;

		[format["Rząd zapłacił %1 za twoje wyposażenie.",_cost call client_fnc_numberText], true] spawn domsg;
		[format["Twój numer odznaki: %1",player getVariable "badgenumber"], true] spawn domsg;
		["govtBank", _cost, "Remove"] remoteExec["server_fnc_setValue",2];
		format["GearLog: %1 (%2) took SWAT loadout.", name player, getplayeruid player] remoteExecCall["diag_log",2];
		format["%1 (%2) removed %3 into the Government bank account.", name player, getplayeruid player, _cost call client_fnc_numberText] remoteExecCall["diag_log",2];

		player forceAddUniform "dtdev_swat_1uni";
		
		player addBackpack "AM_PoliceBelt"; 

		player addWeapon "Binocular";
		player linkItem "ItemMap";
		player linkItem "ItemCompass";
		player linkItem "Oase_ID_Card_Police";
		player linkItem "ItemGPS";
		player linkitem "cg_tabletd";


		player addHeadgear "TRYK_H_PASGT_BLK";
		player addGoggles "Balaclava_Blk_Plain";
		[player,"swat_patch"] call BIS_fnc_setUnitInsignia;		
		for "_i" from 1 to 9 do {player addItemTobackpack "RH_30Rnd_556x45_M855A1";};
		//for "_i" from 1 to 4 do {player addItemTobackpack "SUPER_Flash";};
		for "_i" from 1 to 9 do {player addItemToBackpack "RH_16Rnd_40cal_usp";};	

		{ player additemtobackpack _x; } foreach ["ToolKit","CG_Spikes_Collapsed","cg_atf_bandage_i","cg_atf_bandage_i","cg_atf_bandage_i","cg_atf_bandage_i","cg_atf_bandage_i","cg_atf_bandage_i"];

		player addWeapon "RH_M4sbr_b";
		player addWeapon "RH_uspm";
		player additemtobackpack "Toolkit";
		player addPrimaryWeaponItem "RH_compm2l";

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
		[format["Rząd zapłacił %1 za twoje wyposażenie.",_cost call client_fnc_numberText], true] spawn domsg;
		["govtBank", _cost, "Remove"] remoteExec["server_fnc_setValue",2];
		format["GearLog: %1 (%2) took PRISON loadout.", name player, getplayeruid player] remoteExecCall["diag_log",2];
		format["%1 (%2) removed %3 into the Government bank account.", name player, getplayeruid player, _cost call client_fnc_numberText] remoteExecCall["diag_log",2];

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
		player linkItem "Oase_ID_Card_Police";
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
		[format["Rząd zapłacił %1 za twoje wyposażenie.",_cost call client_fnc_numberText], true] spawn domsg;
		["govtBank", _cost, "Remove", false] remoteExec["server_fnc_setValue",2];
		format["GearLog: %1 (%2) took CRT loadout.", name player, getplayeruid player] remoteExecCall["diag_log",2];
		format["%1 (%2) removed %3 into the Government bank account.", name player, getplayeruid player, _cost call client_fnc_numberText] remoteExecCall["diag_log",2];

		player forceAddUniform "sl_client_c4_swat_W";
		
		player addBackpack "AM_POLICEBELT";

		player addWeapon "Binocular";
		player linkItem "ItemMap";
		player linkItem "ItemCompass";
		player linkItem "Oase_ID_Card_Police";
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
		[format["Rząd zapłacił %1 za twoje wyposażenie.",_cost call client_fnc_numberText], true] spawn domsg;
		[format["Twój numer odznaki: %1",player getVariable "badgenumber"], true] spawn domsg;
		["govtBank", _cost, "Remove"] remoteExec["server_fnc_setValue",2];
		format["GearLog: %1 (%2) took FIRE loadout.", name player, getplayeruid player] remoteExecCall["diag_log",2];
		format["%1 (%2) removed %3 into the Government bank account.", name player, getplayeruid player, _cost call client_fnc_numberText] remoteExecCall["diag_log",2];

		player addWeapon "Binocular";
		player linkItem "ItemMap";
		player linkItem "ItemCompass";
	//	player linkItem "Oase_ID_Card_Police";
		player linkItem "ItemGPS";
		player linkitem "cg_tabletd";

		_level = player getVariable "fire";
		player forceAddUniform "U_C_CBRN_Suit_01_Blue_F";
		player addBackpack "B_SCBA_01_F";
		player addVest "V_Safety_yellow_F";
		player addGoggles "G_RegulatorMask_F";
		{ player additemtobackpack _x; } foreach ["cg_atf_bandage_i","cg_atf_bandage_i","cg_atf_bandage_i","cg_atf_bandage_i"];

		//for "_i" from 1 to 10 do {player addItemToBackPack "Manguera_magazine";};

		//player addweapon "fireextinguisher";
	};


	if(_type == "EMS") then {

		_freq = 33.1;
		
		_cost = ((_level) * 10);
		[format["Rząd zapłacił %1 za twoje wyposażenie.",_cost call client_fnc_numberText], true] spawn domsg;
		[format["Twój numer odznaki: %1",player getVariable "badgenumber"], true] spawn domsg;
		["govtBank", _cost, "Remove"] remoteExec["server_fnc_setValue",2];
		format["GearLog: %1 (%2) took EMS loadout.", name player, getplayeruid player] remoteExecCall["diag_log",2];
		format["%1 (%2) removed %3 into the Government bank account.", name player, getplayeruid player, _cost call client_fnc_numberText] remoteExecCall["diag_log",2];

		player addWeapon "Binocular";
		player linkItem "ItemMap";
		player linkItem "ItemCompass";
		//player linkItem "Oase_ID_Card_Police";
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
			switch (_level) do {
				case 1: {
					player forceAddUniform "CG_EMS1";
				};
				case 2: {
					player forceAddUniform "CG_EMS2";
				};
				case 3: {
					player forceAddUniform "U_C_Paramedic_01_F";
				};
				case 4: {
					player forceAddUniform "U_C_Paramedic_01_F";
				};
				case 5: {
					player forceAddUniform "U_C_Paramedic_01_F";
				};
				case 6: {
					player forceAddUniform "U_C_Paramedic_01_F";
				};
				case 7: {
					player forceAddUniform "U_C_Paramedic_01_F";
				};
				case 8: {
					player forceAddUniform "U_C_Paramedic_01_F";
				};
				case 9: {
					player forceAddUniform "U_C_Paramedic_01_F";
				};
				case 10: {
					player forceAddUniform "U_C_Paramedic_01_F";
				};
			};

		};

		player addGoggles "Masque_Chirurgical";
		player addBackpack "B_Messenger_IDAP_F";
		{ player additemtobackpack _x; } foreach ["cg_atf_bandage_i","cg_atf_bandage_i"];
	};
};

if(myjob == "Mafia") then {

    _freq = 72.1;
	format["GearLog: %1 (%2) took MAFIA loadout.", name player, getplayeruid player] remoteExecCall["diag_log",2];

	_level = player getVariable "Mafia";
	
	if(_level >= 1 && _level <= 2) then { player forceAddUniform "TRYK_SUITS_BLK_F"; };

	if(_level >= 3 && _level <= 5) then { player addHeadgear "TRYK_SUITS_BLK_F"; };

	if(_level >= 6 && _level <= 9) then { player addHeadgear "TRYK_SUITS_BLK_F"; };

	if(_level == 10 ) then { player addHeadgear "H_Hat_grey"; };

	if(_level >= 3 && _level <= 10 && female) then { 
		player forceAddUniform "TRYK_SUITS_BLK_F";
	} else { 
		player forceAddUniform "TRYK_SUITS_BLK_F";
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
	format["GearLog: %1 (%2) took LEGAL loadout.", name player, getplayeruid player] remoteExecCall["diag_log",2];

	if(_level >= 9) then { player forceAddUniform "KAEL_SUITS_BR_Judge"; };
	if(_level < 9) then { player forceAddUniform "dbo_DOJ_Officer"; };

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