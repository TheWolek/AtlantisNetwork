/*
Interaction Menus

*/

NoPixel_InteractionButtons = [

	1600, 1601, 1602, 1603, 1604, 1605, 1606, 1607, 1608,
	1609, 1610, 1611, 1612, 1613, 1614, 1615, 1616, 1617, 
	1618, 1619, 1620, 1621, 1622, 1623, 1624, 1625, 1626,

	16001, 16011, 16021, 16031, 16041, 16051, 16061, 16071, 16081,
	16091, 16101, 16111, 16121, 16131, 16141, 16151, 16161, 16171, 
	16181, 16191, 16201, 16211, 16221, 16231, 16241, 16251, 16261,

	16002, 16012, 16022, 16032, 16042, 16052, 16062, 16072, 16082,
	16092, 16102, 16112, 16122, 16132, 16142, 16152, 16162, 16172, 
	16182, 16192, 16202, 16212, 16222, 16232, 16242, 16252, 16262,

	16003, 16013, 16023, 16033, 16043, 16053, 16063, 16073, 16083,
	16093, 16103, 16113, 16123, 16133, 16143, 16153, 16163, 16173, 
	16183, 16193, 16203, 16213, 16223, 16233, 16243, 16253, 16263

];

NoPixel_InteractionMenuItemsMap = [
	[ 
		["visibleMap"], 
		["Pokaż Wszystko", " ['All'] spawn client_fnc_marker; ",5] 
	],

	[ 
		["visibleMap"], 
		["Mój Dom", " ['Home'] spawn client_fnc_marker; ",5] 
	],

	[ 
		["visibleMap"], 
		["Mój Sklep", " ['Shop'] spawn client_fnc_marker; ",5] 
	],

	[ 
		["visibleMap"], 
		["Moje Biuro", " ['Office'] spawn client_fnc_marker; ",5] 
	],

	[ 
		["visibleMap"], 
		["Sklepy", " ['Shops'] spawn client_fnc_marker; ",5] 
	],

	[ 
		["visibleMap"], 
		["Biura", " ['Offices'] spawn client_fnc_marker; ",5] 
	],
	
	[ 
		["visibleMap"], 
		["Bank", " ['Bank'] spawn client_fnc_marker; ",5] 
	],

	[ 
		["visibleMap"], 
		["Centrelink", " ['Centrelink'] spawn client_fnc_marker; ",5] 
	],
	
	[ 
		["visibleMap"], 
		["Dunkin Bronut", " ['Dunkin'] spawn client_fnc_marker; ",5] 
	],
	
	[ 
		["visibleMap"], 
		["Verizon", " ['Verizon'] spawn client_fnc_marker; ",5] 
	],
	
	[ 
		["visibleMap"], 
		["Stacja Paliwowa", " ['Gas'] spawn client_fnc_marker; ",5] 
	],
	
	[ 
		["visibleMap"], 
		["Sklep z bronią", " ['Gun'] spawn client_fnc_marker; ",5] 
	],
	
	[ 
		["visibleMap"], 
		["Sklep Wielobrażowy", " ['General'] spawn client_fnc_marker; ",5] 
	],
	
	[ 
		["visibleMap"], 
		["Kiesta", " ['Carshop'] spawn client_fnc_marker; ",5] 
	],
	
	[ 
		["visibleMap"], 
		["Garaże", " ['Garage'] spawn client_fnc_marker; ",5] 
	],
	
	[ 
		["visibleMap"], 
		["Sklep lotniczy & Garaż", " ['Airshop'] spawn client_fnc_marker; ",5] 
	],
	
	[ 
		["visibleMap"], 
		["Sklep z łodziami & Garaż", " ['Boatshop'] spawn client_fnc_marker; ",5] 
	],
	
	[ 
		["visibleMap"], 
		["Pizzceria", " ['Pizzaria'] spawn client_fnc_marker; ",5] 
	],
	
	[ 
		["visibleMap"], 
		["Bar", " ['Bar'] spawn client_fnc_marker; ",5] 
	],
	
	[ 
		["visibleMap"], 
		["Fryzjer", " ['Barber'] spawn client_fnc_marker; ",5] 
	],

	[ 
		["visibleMap"], 
		["McDildos", " ['McDildos'] spawn client_fnc_marker; ",5] 
	],
	
	[ 
		["visibleMap"], 
		["Przetwarzanie", " ['Processing'] spawn client_fnc_marker; ",5] 
	],
	
	[ 
		["visibleMap"], 
		["Różne", " ['Misc'] spawn client_fnc_marker; ",5] 
	]
];

NoPixel_InteractionMenuItems = [

	[
		["adminLevel >= 7"],

		["Admin", "closedialog 0; createdialog 'koiladmin'; ",5]
	],

	[ 
		[" (lastforcesync + 300) < time && ( myjob != 'Cop' && myjob != 'EMS' && myjob != 'Fire' ) "], 
		["Sync Data (5min CD)", "	_new = player getVariable 'cashinhand';	[player, 'cashinhand', _new] remoteExec ['Server_fnc_setVariable',2]; _loadout = getunitloadout player; [player, 'getunitloadout', getunitloadout player] remoteExec ['Server_fnc_setVariable',2]; [player,1,getplayeruid player,name player,_loadout] remoteExec ['server_fnc_steppedsync',2]; lastforcesync = time; ",5] 
	],

	[ 
		["((19 IN licenseArray) || myJob == 'Mobster') && casinoOpen && player distance [6810.04,4639.41,0.00144005] < 25"], 
		["Zakłady na konie $0-500", " createdialog 'client_phonebet';",5] 
	],

	[ 
		["((19 IN licenseArray) || myJob == 'Mobster') && casinoOpen && player distance [6810.04,4639.41,0.00144005] < 25"], 
		["Lotteria $1K", "[] spawn client_fnc_lottoBuy;",5] 
	],

	[ 
		["((19 IN licenseArray) || myJob == 'Mobster') && casinoOpen && player distance [6810.04,4639.41,0.00144005] < 25"], 
		["Slots Muchamajana $100-$1K", "[] spawn client_fnc_slotsStart; ",5] 
	],

	[
		["typeof currentcursortarget == 'Land_Market_DED_Market_03_F'"],
		["Zrób ogłoszenie $100", "closedialog 0; createdialog 'client_Advertise';", 5]
	],

	[ 
		[" myCallOwner IN [99.1,99.2,99.3,99.4,99.5] && !(player IN serverRadioPlayers) "], 
		["Radio $50", "[] spawn client_fnc_tipRadioPresenter; ",5] 
	],

	[ 
		[" ( (player IN serverRadioPlayers) && !(currentcursortarget IN serverRadioPlayers) && (isPlayer currentcursortarget && currentcursortarget isKindOf 'Man') ) "], 
		["Dodaj prezentera", "[player] remoteexec ['client_fnc_forceradioconnection',currentcursortarget]; ",5] 
	],

	[ 
		[" ( (player IN serverRadioPlayers) ) "], 
		["Sprawdź dzwoniących", " [] SPAWN CLIENT_FNC_RADIOCALLMENU; ",5] 
	],



	[ 
		[" !imrestrained && !isNull (serverRadioPlayers select 0) && !(player IN serverRadioPlayers) && !callInProgress"], 
		["Radio 1", "[0] spawn client_fnc_changeCarRadio; ",5] 
	],

	[ 
		[" !imrestrained && !isNull (serverRadioPlayers select 1) && !(player IN serverRadioPlayers) && !callInProgress"], 
		["Radio 2", "[1] spawn client_fnc_changeCarRadio; ",5] 
	],

	[ 
		[" !imrestrained && !isNull (serverRadioPlayers select 2) && !(player IN serverRadioPlayers) && !callInProgress"], 
		["Radio 3", "[2] spawn client_fnc_changeCarRadio; ",5] 
	],

	[ 
		[" !imrestrained && !isNull (serverRadioPlayers select 3) && !(player IN serverRadioPlayers) && !callInProgress"], 
		["Radio 4", "[3] spawn client_fnc_changeCarRadio; ",5] 
	],

	[ 
		[" !imrestrained && !isNull (serverRadioPlayers select 4) && !(player IN serverRadioPlayers) && !callInProgress"], 
		["Radio 5", "[4] spawn client_fnc_changeCarRadio; ",5] 
	],



	[ 
		[" typeof currentcursortarget IN ['Land_buildingsCasino2','Land_buildingsbasement1','Land_buildingsNightclub2','Land_buildingsJailCellBlock1','Land_PoliceStation'] && myJob IN ['Cop'] "], 
		["Rozwal Drzwi", " [] spawn client_fnc_lockpick; ",5] 
	],


	[ 
		[" CurrentCursorTarget getVariable['hotcar',FALSE] "], 
		["Kradzież pojazdu", " ['Hotwiring Vehicle',30,'client_fnc_careventend',player,'AinvPknlMstpSnonWnonDnon_medic_1',[CurrentCursorTarget],'cg_mission_files\sounds\repair.ogg'] spawn client_fnc_dotask ",5] 
	],

[ 
		[" CurrentCursorTarget getVariable['robberCar',FALSE] && myJob IN ['Cop']"], 
		["Zwrot pojazdu", " ['Returning Vehicle',180,'client_fnc_careventendpolice',player,'AinvPknlMstpSnonWnonDnon_medic_1',[CurrentCursorTarget],'cg_mission_files\sounds\repair.ogg'] spawn client_fnc_dotask ",5] 
	],

	[ 
		[" bankrobber == 4 && typeof cursortarget IN ['plp_ct_HighSecMediumBlack','cg_mainvault'] && mybank == cursortarget "], 
		["Weź gotówkę", " ['Taking Money',30,'client_fnc_takecash',player,'AinvPknlMstpSnonWnonDnon_medic_1',[CurrentCursorTarget],'cg_mission_files\sounds\repair.ogg'] spawn client_fnc_dotask ",5] 
	],

	[ 
		[" bankrobber == 2 && typeof cursortarget IN ['plp_ct_HighSecMediumBlack','cg_mainvault'] && mybank == cursortarget "], 
		["Napraw Drilla", " ['Repairing Drill',30,'client_fnc_repairdrill',player,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorTarget,'cg_mission_files\sounds\repair.ogg'] spawn client_fnc_dotask ",5] 
	],

	[ 
		["player distance [6795.5,4615.08,0.00143814] <= 3"], 
		["Twitch.TV", " ['Trying to connect to twitch.tv servers... Connection lost.', true] spawn domsg; ",5] 
	],

	[ 
		[" "], 
		["Daj Klucze", " [] spawn client_fnc_findplayerskeys; ",5] 
	],

	[ 
		[" vehicle player != player && !isNil{vehicle player getVariable 'ivory_windowtint'} "], 
		["Podręcznik pojazdu", " [vehicle player] spawn client_fnc_manual; ",5] 
	],

	[ 
		[" (typeof cursorobject IN ['Land_buildingscourthouse1'])"], 
		["Kup licencje", "[0] spawn client_fnc_license;",1] 
	],

	[
		["(typeof cursorobject IN ['Land_buildingscourthouse1'])"],
		["Płać podatki", "createdialog 'payTax_Menu';",1]
	],

	[
		["(typeof cursorobject IN ['Land_buildingscourthouse1'])"],
		["Zobacz podatki", " [format['You have unpaid taxes of %1 and the tax rate is at %2%3.', ((player getVariable 'statuses') select 13) call client_fnc_numberText, taxRate, '%'], true]  spawn domsg; ",1]
	],

	[
		["paintballing "],
		["Respawn", " paintballhit = true; ['Respawned', true] spawn domsg; ",1]
	],

	[
		["paintballing "],
		["Uzupełnij Paintball", " for '_i' from 1 to 3 do { player addItemToUniform '140Rnd_PaintBall_blau'; }; ",1]
	],

	[
		[" player distance [3370.36,1436.92,0.00147247] < 225 && !paintballing"],
		["Start Paintball", " [player] remoteexec ['server_fnc_paintball',2]; ",1]
	],

	[
		[" cursorObject == mobsterVehicle && !isNull mobsterVehicle && player distance endOfmission < 25 && myjob == 'Mobster' && typeof mobsterVehicle == 'acj_Brinks' "],
		["Uzbrojony pakiet", " ['Packing in Boat',30,'client_fnc_brinkstoboat',player,'AinvPknlMstpSnonWnonDnon_medic_1',[CurrentCursorTarget,1],'cg_mission_files\sounds\patdown1.ogg'] spawn client_fnc_dotask ",1]
	],

	[
		[" cursorObject == mobsterVehicle && !isNull mobsterVehicle && player distance endOfmission < 25 && myjob == 'Mobster' && typeof mobsterVehicle == 'acj_Brinks' "],
		["Nieubrojony Pakiet", " ['Packing in Boat',300,'client_fnc_brinkstoboat',player,'AinvPknlMstpSnonWnonDnon_medic_1',[CurrentCursorTarget,2],'cg_mission_files\sounds\patdown1.ogg'] spawn client_fnc_dotask ",1]
	],

	[
		["player distance theGunner < 500 && myjob == 'Mobster' && typeof mobsterVehicle != 'acj_Brinks' && vehicle player != player"],
		["Zakończ bieg łodzi", " [] spawn client_fnc_finishOreDrop;  ",1]
	],

	[
		[" typeof cursorobject == 'Land_buildingsbasement1' && player distance getmarkerpos 'drugdump' < 30 && ((myjob == 'Mafia' && drugcount <= 375) || (myjob == 'Biker' && drugcount2 <= 375)) "],
		["Zrzuć narkotyki", " ['Dumping Drugs',60,'client_fnc_dumpDrugs',player,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorTarget,'cg_mission_files\sounds\patdown1.ogg'] spawn client_fnc_dotask ",1]
	],
	
	[
		["player distance [1309.54,1164.09,0.00143814] < 100 && ((myjob == 'Mafia' && currentcursortarget == mafiaVehicle) || (myjob == 'Biker' && currentcursortarget == bikerVehicle)) && vehicle player == player"],
		["Zakończ bieg narkotyków", " [] spawn client_fnc_finishDrugRun;  ",1]
	],

	[
		["typeof cursorobject == 'Land_buildingsCasino2' && myJob == 'Mobster' "],
		["Dump Ore", " ['Dropping Ore',60,'client_fnc_dumpOre',player,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorTarget,'cg_mission_files\sounds\patdown1.ogg'] spawn client_fnc_dotask ",1]
	],

	[
		[" isPlayer currentcursortarget && currentcursortarget isKindOf 'Man' && (player distance [6792.49,4612.91,0.00143838] < 5) && (myJob IN ['Mobster']) && player getvariable 'mobster' >= 3 "],
		["Daj Kontrakt", " closeDialog 0; createDialog 'casinoConvert_Menu'; ",1]
	],


	[
		[" (( myJob == 'Mafia' && player getvariable 'mafia' >= 2 ) || ( myJob == 'Cop' && player getvariable 'cop' == 5 ) || (player getvariable 'cop' == 10)) && count TracingPlayers > 0 && !imRestrained"],
		["Śledzone połączenia", " [] spawn client_fnc_findTapped; ",1]
	],

	[
		[" myJob IN ['Cop','doc'] && (count(nearestObjects [player,['weaponholder'],3])>0) && count (nearestObjects[player,['Land_PoliceStation'],100]) > 0"],
		["Przejęcie obiektus", " [] spawn client_fnc_seizeObjects; ",1]
	],


	[
		[" isPlayer currentcursortarget && currentcursortarget isKindOf 'Man' && myJob == 'Mafia' && currentcursortarget distance player < 5 && !imrestrained "],
		["Daj pożyczkę", " [currentcursortarget] spawn client_fnc_giveLoan; ",1]
	],


	[
		[" isPlayer currentcursortarget && currentcursortarget isKindOf 'Man' && myJob == 'Mafia' && !imrestrained "],
		["Aktualne pożyczki", " [player] remoteexec ['server_fnc_MafiaOwed',2];  ",1]
	],



	[
		[" isPlayer currentcursortarget && currentcursortarget isKindOf 'Man' && myJob == 'Mafia' && currentcursortarget distance player < 5 && !imrestrained "],
		["Oddawać mocz", " [currentcursortarget] spawn client_fnc_pee; ",1]
	],

	[
		[" (player == vehicle player) && (isPlayer currentcursortarget && currentcursortarget isKindOf 'Man' && vehicle currentcursortarget == currentcursortarget) && myJob == 'Mobster' "],
		["Wynajmij pokój kasynowy", " [] spawn client_fnc_casinoRoom; ",1]
	],


	[
		[" (vehicle player == player) && (isPlayer currentcursortarget && currentcursortarget isKindOf 'Man' && vehicle currentcursortarget == currentcursortarget) && (( myJob == 'Mafia' && player getvariable 'mafia' >= 2 ) || ( myJob == 'Cop' && player getvariable 'cop' == 5) || ( myJob == 'Cop' && player getvariable 'cop' == 10 )) && !imRestrained"],
		["Śledź połączenie $1K", " ['Tracking',5,'client_fnc_tracecall',CurrentCursorTarget,'vvv_anim_ticket',CurrentCursorTarget,'cg_mission_files\sounds\patdown1.ogg'] spawn client_fnc_dotask ",1]
	],

	[
		[" (vehicle player == player) && (isPlayer currentcursortarget && currentcursortarget isKindOf 'Man') && (vehicle currentcursortarget == currentcursortarget) && ( ( myJob == 'Mafia' && player getvariable 'mafia' >= 2 ) || ( myJob == 'Cop' && player getvariable 'cop' == 5 ) || ( myJob == 'Cop' &&  player getvariable 'cop' == 10 ) ) && !imrestrained"],
		["Śledź osobę $3K", " ['Tracking',5,'client_fnc_trackplayer',CurrentCursorTarget,'vvv_anim_ticket',CurrentCursorTarget,'cg_mission_files\sounds\patdown1.ogg'] spawn client_fnc_dotask ",1]
	],

	[
		[" (vehicle player == player) &&  (currentcursortarget isKindOf 'Air' || currentcursortarget isKindOf 'Car' || currentcursortarget isKindOf 'Boat') && ( ( myJob == 'Mafia' && player getvariable 'mafia' >= 2 ) || ( myJob == 'Biker' && player getvariable 'biker' >= 2 ) || ( myJob == 'Mobster' && player getvariable 'mobster' >= 2 ) || ( myJob == 'Cop' && player getvariable 'cop' == 5 ) || ( myJob == 'Cop' && player getvariable 'cop' == 10 ) ) && !imrestrained"],
		["Śledź Pojazd $1K", " ['Tracking',5,'client_fnc_trackvehicle',CurrentCursorTarget,'vvv_anim_ticket',CurrentCursorTarget,'cg_mission_files\sounds\patdown1.ogg'] spawn client_fnc_dotask ",1]
	],

	[
		[" (vehicle player == player) &&  (currentcursortarget isKindOf 'Air' || currentcursortarget isKindOf 'Car' || currentcursortarget isKindOf 'Boat') && ( ( myJob == 'Mafia' && player getvariable 'mafia' >= 2 ) || ( myJob == 'Biker' && player getvariable 'biker' >= 2 ) || ( myJob == 'Mobster' && player getvariable 'mobster' >= 2 ) ) && ( CurrentCursorTarget getVariable ['pdCar',''] != '' || CurrentCursorTarget getVariable ['docCar',''] != '' || CurrentCursorTarget getVariable ['emsCar',''] != '' ) && !imrestrained "],
		["Przestan Śledzić pojazd $10K", " ['Tracking',60,'client_fnc_untrackvehicle',CurrentCursorTarget,'vvv_anim_ticket',CurrentCursorTarget,'cg_mission_files\sounds\patdown1.ogg'] spawn client_fnc_dotask ",1]
	],

	[
		[" (vehicle player == player) && (currentcursortarget isKindOf 'Air' || currentcursortarget isKindOf 'Car' || currentcursortarget isKindOf 'Boat') && ( ( myJob == 'Mafia' && player getvariable 'mafia' >= 2 ) || ( myJob == 'Cop' && player getvariable 'cop' >= 5 ) ) && count hackedcars < 2  && !imrestrained && currentcursortarget IN current_cars "],
		["Hack Pojazd $5K", " ['Hacking',60,'client_fnc_hackCar',CurrentCursorTarget,'vvv_anim_ticket',CurrentCursorTarget,'cg_mission_files\sounds\patdown1.ogg'] spawn client_fnc_dotask ",1]
	],

	[
		[" count hackedcars > 0  && !imrestrained"],
		["Wyłącz pojazd(s)", " [] spawn client_fnc_hackCarDisplay;  ",1]
	],

	[
		[" ('ToolKit' IN items player) && ( 'SatchelCharge_F' IN ((attachedObjects currentcursortarget) apply {typeOf _x}) || (typeof currentcursortarget == 'SatchelCharge_F') )  && !imrestrained "],
		["Rozbrój Bombę", " ['Defusing',5,'client_fnc_IEDdefuse',player,'vvv_anim_ticket',CurrentCursorTarget,'cg_mission_files\sounds\patdown1.ogg'] spawn client_fnc_dotask ",1]
	],

	[
		[" CurrentCursorTarget IN ((bombs) apply {call compile _x}) && !imrestrained "],
		["Podnieś bombę", " ['Picking Up',5,'client_fnc_IEDdefuse',player,'vvv_anim_ticket',CurrentCursorTarget,'cg_mission_files\sounds\patdown1.ogg'] spawn client_fnc_dotask ",1]
	],

	[
		[" count bombs > 0 && !imrestrained"],
		["Detonuj bombę", " [] spawn client_fnc_IEDdisplay; ",1]
	],

	[
		[" PLAYER DISTANCE [6270.86,1359.5,0.00143623] < 15 && !imRestrained && !(player getVariable ['surrender', false]) && (myjob == 'Biker' || allowdance ) "],
		["Tańcz", " [0] spawn client_fnc_dance; ",1]
	],

	[
		[" PLAYER DISTANCE [6270.86,1359.5,0.00143623] < 15 && !imRestrained && !(player getVariable ['surrender', false]) "],
		["Przestań Tańczyć", " [player, ''] remoteExec ['switchMove'] ",1]
	],

	[
		[" (vehicle player == player) && (isPlayer currentcursortarget && currentcursortarget isKindOf 'Man') && ( myJob == 'Mobster' && (player getVariable 'mobster') >= 3 ) && ( count nearestobjects[player,['Land_buildingsCasino2'],50] > 0 ) && !imrestrained"],
		["Sprawdz Bank", " [player] remoteExec ['client_fnc_checkBank', CurrentCursorTarget]; ",1]
	],

	[
		[" player distance getmarkerpos 'rally_1' < 80 "],
		["Próby rajdowe", " [] spawn client_fnc_doRally; ",1]
	],

	[
		[" player distance getmarkerpos 'formula1' < 40 "],
		["Zapisz się na wyścig", " [player] remoteexec ['server_fnc_raceenter',2] ",1]
	],

	[
		[" player distance getmarkerpos 'formula1' < 40 || player distance getmarkerpos 'rally_1' < 80 "],
		["Najszybsze okrążenia", " createdialog 'racetimes'; ",1]
	],

	[
		[" !client_seatbelt && vehicle player != player "],
		["Pas bezpieczeństwa włączony", "client_seatbelt = true;",1]
	],

	[
		[" client_seatbelt && vehicle player != player "],
		["Pas bezpieczeństwa wyłączony", "client_seatbelt = false;",1]
	],
// healing

	[
		["CurrentCursorTarget getVariable['dead',FALSE] && (count currentEMS == 0)"],
		["Przeprowadż CPR na osobie", "['Reviving',125,'client_fnc_sendRevive',player,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorTarget,'cg_mission_files\sounds\patdown1.ogg'] spawn client_fnc_dotask",1]
	],


	[
		["CurrentCursorTarget getVariable['dead',FALSE] && (myjob == 'EMS' || myJob == 'Fire')"],
		["Odrodzić osobę", "['Reviving',15,'client_fnc_sendRevive',player,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorTarget,'cg_mission_files\sounds\patdown1.ogg'] spawn client_fnc_dotask",1]
	],

	[
		[" !imrestrained && count (nearestobjects[player,['Man'],5]-[player]) > 0  && !(player getVariable ['surrender', false])"],
		["Ulecz w pobliżu", "createdialog 'FindPlayer_Menu';",1]
	],

	[
		[" vehicle player == player && !imrestrained && isPlayer currentcursortarget && currentcursortarget isKindOf 'Man'  && !(player getVariable ['surrender', false])"],
		["Ulecz Osobę", " [CurrentCursorTarget] spawn client_fnc_medicUpdater; ",1]
	],

	[
		[" !imrestrained && !(player getVariable ['surrender', false]) "],
		["Ulecz Siebie", " [player] spawn client_fnc_medicUpdater; ",1]
	],

	[
		["bedactive"],
		["Puść Łóżko", "[] spawn client_fnc_dropbed;",1]
	],

	[
		[" typeof cursorobject == 'A3L_HospitalBed2015' && myjob == 'EMS'"],
		["Weż Łóżko", "[true] spawn client_fnc_spawnbed;",1]
	],

	[
		[" typeof cursorobject == 'A3L_HospitalBed2015' && myjob == 'EMS'"],
		["Usuń Łóżko", "deletevehicle currentcursortarget;",1]
	],

	[
		[" typeof cursorobject == 'Land_buildingshospital1' && myjob == 'EMS'"],
		["Postaw Łóżko", "[false] spawn client_fnc_spawnbed;",1]
	],


	[
		[" typeof cursorobject == 'Land_buildingshospital1'"],
		["Pełne Życie", "[] spawn client_fnc_fullheal; bleedingEffect = 0; ",1]
	],

	[
		[" typeof cursorobject == 'Land_buildingshospital1'"],
		["Zmień Płeć", " if(female) then {female = false; ['You are now male.', true] spawn domsg; } else {female = true; ['You are now female.', true] spawn domsg; }; ['NA','sex',0] call client_fnc_sustain;",1]
	],

	[
		[" typeof cursorobject == 'Land_buildingshospital1'"],
		["Szukaj pluskw", "[] spawn client_fnc_disabletrackingme;",1]
	],

	// vehicles

	[
		[" count (nearestobjects[player,['Land_fs_feed_F'],10]) > 0 "],
		["Zatankuj Pojazd $0-500", "[] spawn client_fnc_fillvehicle;",2]
	],
	
	[
		[" (currentcursortarget isKindOf 'Car' || currentcursortarget isKindOf 'AIR' || currentcursortarget isKindOf 'BOAT') && ('np_FuelCan' IN (magazines player)) "],
		["Zatankuj Pojazd", "[CurrentCursorTarget] spawn client_fnc_fuelcan;",2]
	],

	[
		["count attachedObjects player > 0 && attachedcar"],
		["Upuść pojazd", " [] spawn client_fnc_detach; ",2]
	],

	[
		[" !(player getVariable ['surrender',false]) && !imrestrained && vehicle player == player "],
		["Poddanie się", " [] spawn client_fnc_surrender; ",2]
	],
	
	[
		[" player getVariable ['surrender', false] && !imrestrained && vehicle player == player"],
		["Poddanie się", " player setVariable ['surrender', nil, false]; ",2]
	],

	[
		["currentcursortarget in current_cars && myjob IN ['Cop','Fire','EMS'] && !imrestrained && count (crew currentcursortarget) > 0 "],
		["Wyciągnij ludzi", " ['Pulling Out Players',8,'client_fnc_pulloutplayers',player,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorTarget,'cg_mission_files\sounds\patdown1.ogg'] spawn client_fnc_dotask ",2]
	],

	[
		["myjob == 'towtruck' && (currentcursortarget isKindOf 'Car' || currentcursortarget isKindOf 'AIR' || currentcursortarget isKindOf 'BOAT' || currentcursortarget isKindOf 'SHIP' || currentcursortarget isKindOf 'TANK') && ((getpos player) distance [7603.34,6311.1,0.00143814] < 30) && !(CurrentCursorTarget IN current_cars) "],
		["Odcholuj", " ['Impounding Vehicle',5,'client_fnc_impoundVehicle',player,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorTarget,'cg_mission_files\sounds\repair.ogg'] spawn client_fnc_dotask ",2]
	],

	[
		["myjob IN ['Cop','EMS','doc'] && (currentcursortarget isKindOf 'Car' || currentcursortarget isKindOf 'AIR' || currentcursortarget isKindOf 'BOAT' || currentcursortarget isKindOf 'SHIP' || currentcursortarget isKindOf 'TANK') && count currenttowtruckdrivers > 0"],
		["Poproś o ocholowanie", " ['Impounding Vehicle',3,'client_fnc_impoundVehicle',player,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorTarget,'cg_mission_files\sounds\repair.ogg'] spawn client_fnc_dotask ",2]
	],

	[
		["myjob IN ['Cop','EMS','doc'] && (currentcursortarget isKindOf 'Car' || currentcursortarget isKindOf 'AIR' || currentcursortarget isKindOf 'BOAT' || currentcursortarget isKindOf 'SHIP' || currentcursortarget isKindOf 'TANK') && count currenttowtruckdrivers > 0"],
		["Odcholuj", " ['Impounding Vehicle',300,'client_fnc_impoundVehicle',player,'AinvPknlMstpSnonWnonDnon_medic_1',[CurrentCursorTarget,1],'cg_mission_files\sounds\repair.ogg'] spawn client_fnc_dotask ",2]
	],

	[
		["myjob IN ['Cop','EMS','doc'] && (currentcursortarget isKindOf 'Car' || currentcursortarget isKindOf 'AIR' || currentcursortarget isKindOf 'BOAT' || currentcursortarget isKindOf 'SHIP' || currentcursortarget isKindOf 'TANK') && count currenttowtruckdrivers == 0"],
		["Odcholuj", " ['Impounding Vehicle',30,'client_fnc_impoundVehicle',player,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorTarget,'cg_mission_files\sounds\repair.ogg'] spawn client_fnc_dotask ",2]
	],

	[
		["(getpos player) distance [7604.7,6315.58,0.00143814] < 40 && player getvariable 'Mafia' > 0 "],
		["Sprzedaj Auto", " ['Selling Vehicle',60,'client_fnc_sellVehicle',player,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorTarget,'cg_mission_files\sounds\repair.ogg'] spawn client_fnc_dotask ",2]
	],

	[
		["(CurrentCursorTarget isKindOf 'Car' || CurrentCursorTarget isKindOf 'Air' || CurrentCursorTarget isKindOf 'Boat' || CurrentCursorTarget isKindOf 'Ship') && (myJob != 'Repairman' || ( myJob == 'Repairman' && (CurrentCursorTarget IN current_cars) ) ) && ('CG_wheel' in magazines player || 'CG_engine' in magazines player)"],
		["Napraw Auto", "['Repairing',20,'client_fnc_repair',CurrentCursorTarget,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorTarget,'cg_sndimg\sounds\repair.ogg'] spawn client_fnc_dotask",2]
	],

	[
		["(CurrentCursorTarget isKindOf 'Car' || CurrentCursorTarget isKindOf 'Air' || CurrentCursorTarget isKindOf 'Boat' || CurrentCursorTarget isKindOf 'Ship') && myJob == 'Repairman' && !(CurrentCursorTarget IN current_cars) "],
		["Napraw Auto", "['Repairing',5,'client_fnc_repair',CurrentCursorTarget,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorTarget,'cg_sndimg\sounds\repair.ogg'] spawn client_fnc_dotask",2]
	],

	[
		[" CurrentCursorTarget isKindOf 'Car' "],
		["Stalowe felgi", "['Stealing',100,'client_fnc_stealRims',CurrentCursorTarget,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorTarget,'cg_sndimg\sounds\repair.ogg'] spawn client_fnc_dotask",2]
	],

	[
		["(vehicle player) == player && CurrentCursorTarget in Current_Cars && (cursortarget getVariable['salecheck',FALSE]) "],
		["Zatrzymaj Sprzedawanie", "currentcursortarget setvariable ['sale',nil,true]; currentcursortarget setvariable ['salecheck',nil,true];",2]
	],

	[
		["(vehicle player) == player && count nearestobjects[player,['Land_ModernShowroom'],50] > 0 && CurrentCursorTarget in Current_Cars && !(cursortarget getVariable['salecheck',FALSE]) "],
		["Sprzedaj pojazd", "[] call Client_fnc_AuctionDialog",2]
	],

	[
		["(vehicle player) == player && count nearestobjects[player,['Land_ModernShowroom'],50] > 0 && (cursortarget getVariable['salecheck',FALSE])"],
		["Cena Pojazdu", "[] call Client_fnc_AuctionCheckPrice",2]
	],

	[
		["(vehicle player) == player && count nearestobjects[player,['Land_ModernShowroom'],50] > 0 && (cursortarget getVariable['salecheck',FALSE]) && !(currentcursortarget IN current_cars)"],
		["Kup Pojazd", "[] call Client_fnc_AuctionPurchaseCar",2]
	],

	[
		["(vehicle player) == player && CurrentCursorTarget in Current_Cars && !imrestrained && !(player getVariable ['surrender', false])"],
		["Użyj Klucza", "[CurrentCursorTarget] call Client_fnc_useKey",2]
	],

	[
		["(vehicle player) in Current_Cars && !imrestrained && !(player getVariable ['surrender', false])"],
		["Użyj Klucza", "[vehicle player] call Client_fnc_useKey",2]
	],	

	[
		[" (currentcursortarget isKindOf 'Air' || currentcursortarget isKindOf 'Car' || currentcursortarget isKindOf 'Boat') && vectorUp currentcursortarget select 2 < 0.9 && currentcursortarget in current_cars && !imrestrained"],
		["Obróć Pojazd", " currentcursortarget setVectorUp [0,0,1]; currentcursortarget setPosATL [(getPosATL currentcursortarget) select 0, (getPosATL currentcursortarget) select 1, ((getPosATL currentcursortarget) select 2) + 1]; ",2]
	],

	[
		[" (CurrentCursorTarget isKindOf 'Car' || CurrentCursorTarget isKindOf 'Ship') && player distance currentcursortarget < 11 && currentcursortarget in current_cars && !imrestrained"],
		["Popchnij pojazd ", "[] spawn Client_fnc_pushveh",2]
	],
	
	[
		[" (currentcursortarget isKindOf 'Air' || currentcursortarget isKindOf 'Car') && CurrentCursorTarget in Current_Cars && ( (myhouse distance getpos player < 50 || count (nearestterrainobjects[player,['BUILDING'],50] select {str _x find 'embarcadero' > -1}) > 0 || count (nearestobjects[player,['Land_Hangar_F'],50]) > 0 || count (nearestterrainobjects[player,['BUILDING'],50] select {str _x find 'taller' > -1}) > 0) || (myJob IN ['Cop','doc'] && count (nearestObjects[player,['Land_PoliceStation'],50]) > 0 ) || (myJob == 'EMS' && count (nearestObjects[player,['Land_buildingsfiredept1','Land_buildingshospital1'],50]) > 0) || (myJob == 'Mafia' && count (nearestObjects[player,['Land_em_mansion_01'],50]) > 0) || (myJob == 'Biker' && count (nearestObjects[player,['Land_buildingsNightclub2'],50]) > 0) || (myJob == 'Mobster' && count (nearestObjects[player,['Land_buildingsCasino2'],50]) > 0) ) && !imrestrained"],
		["Przechowuj pojazd", "['Storing Vehicle',5, 'Client_fnc_storeCar',player,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorTarget,'cg_sndimg\sounds\repair.ogg'] spawn client_fnc_dotask",2]
	],
	
	[
		[" (currentcursortarget isKindOf 'Air' || currentcursortarget isKindOf 'Car') && CurrentCursorTarget in Current_Cars && ( count (cursorTarget getvariable ['information',[]]) == 0 && myJob != 'none' ) && !imrestrained"],
		["Przechowuj pojazd", "['Storing Vehicle',5, 'Client_fnc_storeCar',player,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorTarget,'cg_sndimg\sounds\repair.ogg'] spawn client_fnc_dotask",2]
	],

	[
		[" (currentcursortarget isKindOf 'Boat' || currentcursortarget isKindOf 'Ship') && CurrentCursorTarget in Current_Cars && !imrestrained && count (nearestterrainobjects[player,['BUILDING'],50] select {str _x find 'embarcadero' > -1}) > 0  "],
		["Przechowuj łódz", "['Storing Vehicle',25, 'Client_fnc_storeCar',player,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorTarget,'cg_sndimg\sounds\repair.ogg'] spawn client_fnc_dotask",2]
	],




//furniture
	[
		["player distance getpos currentcursortarget < 20 && currentcursortarget IN mychairs "],
		["Zakręć 90", " _dir = getdir currentcursortarget; currentcursortarget setdir (_dir + 90); " ,2]
	],

	[
		[" (player distance myoffice < 25 || (player distance myhouse < 25 && player getVariable 'houselevel' > 1 )) && count mychairs > 0 "],
		["Usuń wszystkie meble", "  [0] spawn client_fnc_spawnfurniture; attachedfurniture = false; ",2]
	],


	[
		["player distance getpos currentcursortarget < 20 && currentcursortarget IN mychairs "],
		["Usuń meble", " _pia = mychairs FIND currentcursortarget; mychairs DELETEAT _pia; deletevehicle currentcursortarget; ",2]
	],

	[
		["player distance getpos currentcursortarget < 20 && currentcursortarget IN mychairs "],
		["Weż Meble", " fuckingcouch = currentcursortarget; fuckingcouch attachto [player,[0,1.8,2]]; attachedfurniture = true; ",2]
	],

	[
		["(player distance myoffice < 25 || (player distance myhouse < 25 && player getVariable 'houselevel' > 1 )) && attachedfurniture "],
		["Połóż Mebel", " [2] spawn client_fnc_spawnfurniture; attachedfurniture = false; ",2]
	],

	[
		["(player distance myoffice < 25 || (player distance myhouse < 25 && player getVariable 'houselevel' > 1 )) && player distance getpos currentcursortarget < 20 && !attachedfurniture "],
		["Wybierz meble", " createdialog 'placefurniture' ",2]
	],

	[
		[" attachedbarrier "],
		["Umieść barierę", " [] spawn client_fnc_placebarrier; ",2]
	],

	[
		[" !isNil{cursorTarget getVariable 'evidenceInformation'} && myJob == 'Cop' && player IN currentDetectives"],
		["Zidentyfikuj dowody", " [CurrentCursorTarget] spawn client_fnc_evidence;  ",2]
	],

	[
		[" count nearestObjects[player,['plp_up_WoodBarrierLongPolice','plp_up_WoodBarrierShortPoliceLightsOn','plp_up_TrafficConeOrange','plp_up_WoodBarrierLongRed','plp_up_WoodBarrierShortRedLightsOn','plp_up_TrafficConeRed','plp_up_MetalFenceGrey'],5] > 0 "],
		["Weż Barierkę", " [] spawn client_fnc_pickupbarrier ",2]
	],

	[
		["isPlayer currentcursortarget && currentcursortarget isKindOf 'Man' && CurrentCursorTarget == vehicle CurrentCursorTarget && myJob IN ['Cop','doc','Mobster','Legal','EMS'] "],
		["Daj licencje", " ['Granting License',6,'client_fnc_grantlicense',CurrentCursorTarget,'vvv_anim_ticket',CurrentCursorTarget,'cg_mission_files\sounds\patdown1.ogg'] spawn client_fnc_dotask ",2]
	],
	
	[
		["isPlayer currentcursortarget && currentcursortarget isKindOf 'Man' && CurrentCursorTarget == vehicle CurrentCursorTarget && myJob IN ['Cop','doc','Mobster','Legal','EMS']"],
		["Zabierz Licencje", " ['Revoking',6,'client_fnc_revokelicense',CurrentCursorTarget,'vvv_anim_ticket',CurrentCursorTarget,'cg_mission_files\sounds\patdown1.ogg'] spawn client_fnc_dotask ",2]
	],

	[
		[" isPlayer currentcursortarget && currentcursortarget isKindOf 'Man' "],
		["Daj Dowód", " ['Giving ID',3,'client_fnc_giveLicense',CurrentCursorTarget,'vvv_anim_ticket',1,'cg_mission_files\sounds\patdown1.ogg'] spawn client_fnc_dotask ",2]
	],

	[
		[" !imrestrained && !(isNil 'getLicensePerson') "],
		["Zobacz Dowód", "  [format['%1', getLicensePerson], true] spawn domsg; getLicensePerson = nil; ",2]
	],

	[
		[" isPlayer currentcursortarget && currentcursortarget isKindOf 'Man' && !imrestrained && myJob IN ['Cop','doc','EMS'] && count (nearestObjects[player,['Land_PoliceStation','Land_buildingsfiredept1','Land_buildingshospital1'],100]) > 0"],
		["Zidentyfikuj osobę", " ['Identifying Person',15,'client_fnc_getName',CurrentCursorTarget,'AinvPknlMstpSnonWnonDnon_medic_1',player,'cg_mission_files\sounds\patdown1.ogg',CurrentCursorTarget] spawn client_fnc_dotask     ",2]
	],

	[
		[" myJob IN ['Cop','EMS'] && isPlayer currentcursortarget && currentcursortarget isKindOf 'Man' && !imrestrained"],
		["Zatrucie", " ['Checking Intoxication',5,'client_fnc_sendIntox',CurrentCursorTarget,'AinvPknlMstpSnonWnonDnon_medic_1',player,'cg_mission_files\sounds\patdown1.ogg',CurrentCursorTarget] spawn client_fnc_dotask ",2]
	],

	[
		[" myJob IN ['Cop'] && CurrentCursorTarget isKindOf 'Car' && !imrestrained && !isNil{cursorTarget getVariable 'ivory_windowtint'}"],
		["Tint Percent", " ['Getting Tint Percentage',5,'client_fnc_getTint',CurrentCursorTarget,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorTarget,'cg_mission_files\sounds\patdown1.ogg'] spawn client_fnc_dotask   ",2]
	],

	[
		[" (myJob IN ['Cop','doc','DA'] || (myJob == 'Legal' && player getVariable 'Legal' > 5)) && isPlayer currentcursortarget && currentcursortarget isKindOf 'Man' && CurrentCursorTarget == vehicle CurrentCursorTarget && getpos player distance [8242.13,3019.17,0] < 150 && !imrestrained"],
		["Wyślij do więzienia", " createdialog 'jailprocess';",2]
	],

	[
		[" (myJob IN ['Cop','doc','DA'] || (myJob == 'Legal' && player getVariable 'Legal' > 5)) && isPlayer currentcursortarget && currentcursortarget isKindOf 'Man' && CurrentCursorTarget == vehicle CurrentCursorTarget && count (nearestObjects[player,['Land_PoliceStation'],100]) > 0 && ((animationstate CurrentCursorTarget) == 'amovpercmstpsnonwnondnon_amovpercmstpssurwnondnon' || (animationstate CurrentCursorTarget) == 'Incapacitated' || (animationstate CurrentCursorTarget) == 'AmovPercMstpSnonWnonDnon_Ease' || (animationstate CurrentCursorTarget) == 'Acts_AidlPsitMstpSsurWnonDnon_loop') && !imrestrained"],
		["Ustaw kaucję", " createDialog 'Bail_Menu'; ",2]
	],

	[
		[" count acceptBail > 0 "],
		["Akceptuj kaucję", " [true] spawn client_fnc_acceptBail ",2]
	],

	[
		[" count acceptBail > 0 "],
		["Odmów Kaucję", " [false] spawn client_fnc_acceptBail ",2]
	],

	[
		[" myJob == 'Legal' && player getVariable 'Legal' > 5 && isPlayer currentcursortarget && currentcursortarget isKindOf 'Man' && CurrentCursorTarget == vehicle CurrentCursorTarget && !imrestrained"],
		["Oddaj Kaucję", " [currentcursortarget] spawn client_fnc_removeBail; ",2]
	],

	[
		[" myJob == 'Legal' && player getVariable 'Legal' > 5 && isPlayer currentcursortarget && currentcursortarget isKindOf 'Man' && CurrentCursorTarget == vehicle CurrentCursorTarget && !imrestrained"],
		["Zamknij Kaucję", " [currentcursortarget] spawn client_fnc_closeBail; ",2]
	],

	[
		[" myJob IN ['Cop','doc','DA'] && isPlayer currentcursortarget && currentcursortarget isKindOf 'Man' && CurrentCursorTarget == vehicle CurrentCursorTarget && ((animationstate CurrentCursorTarget) == 'amovpercmstpsnonwnondnon_amovpercmstpssurwnondnon' || (animationstate CurrentCursorTarget) == 'Incapacitated' || (animationstate CurrentCursorTarget) == 'AmovPercMstpSnonWnonDnon_Ease' || (animationstate CurrentCursorTarget) == 'Acts_AidlPsitMstpSsurWnonDnon_loop') && !imrestrained "],
		["Aresztowanie Logi", " createdialog 'insertPBA'; ",2]
	],

	[
		[" (myJob IN ['Cop','doc','DA'] || (myJob == 'Legal' && player getVariable 'Legal' > 5)) && isPlayer currentcursortarget && currentcursortarget isKindOf 'Man' && CurrentCursorTarget == vehicle CurrentCursorTarget && getpos player distance [5556.2,6291.29,0.00143433] < 150 && !imrestrained"],
		["Wyślij do więzienia", " createdialog 'jailprocess';",2]
	],

	[
		[" (CurrentCursorTarget getVariable['dead',FALSE]) && isPlayer currentcursortarget && currentcursortarget isKindOf 'Man' && !imrestrained"],
		["Sprawdz Puls", " ['Checking Pulse',3,'client_fnc_checkPulse',CurrentCursorTarget,'AinvPknlMstpSnonWnonDnon_medic_1',player,'cg_mission_files\sounds\patdown1.ogg',CurrentCursorTarget] spawn client_fnc_dotask ",2]
	],

	[
		["!(cursortarget getVariable['dead',FALSE]) && isPlayer currentcursortarget && currentcursortarget isKindOf 'Man' && (animationstate CurrentCursorTarget) == 'amovpercmstpsnonwnondnon_amovpercmstpssurwnondnon' || (animationstate CurrentCursorTarget) == 'Incapacitated' || (animationstate CurrentCursorTarget) == 'AmovPercMstpSnonWnonDnon_Ease' || (animationstate CurrentCursorTarget) == 'Acts_AidlPsitMstpSsurWnonDnon_loop' && !imrestrained"],
		["Przeszukaj Osobę dokładnie", " ['Strip Searching Person',30,'client_fnc_startpatdown',CurrentCursorTarget,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorTarget,'cg_mission_files\sounds\patdown1.ogg'] spawn client_fnc_dotask ",2]
	],

	[
		[" (myJob IN ['Cop','doc','Biker','Mobster','Mafia']) && isPlayer currentcursortarget && currentcursortarget isKindOf 'Man' && CurrentCursorTarget == vehicle CurrentCursorTarget && !imrestrained"],
		["Przeszukaj Osobę", " ['Frisking Person',5,'client_fnc_frisk',CurrentCursorTarget,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorTarget,'cg_mission_files\sounds\patdown1.ogg'] spawn client_fnc_dotask ",2]
	],


	[
		["(isPlayer currentcursortarget && currentcursortarget isKindOf 'Man') && ((animationstate CurrentCursorTarget) == 'amovpercmstpsnonwnondnon_amovpercmstpssurwnondnon' || (animationstate CurrentCursorTarget) == 'Incapacitated' || (animationstate CurrentCursorTarget) == 'AmovPercMstpSnonWnonDnon_Ease' || (animationstate CurrentCursorTarget) == 'Acts_AidlPsitMstpSsurWnonDnon_loop') && !imrestrained "],
		["Weż Pieniądze", " ['Taking Money',10,'client_fnc_takePlayerMoney',CurrentCursorTarget,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorTarget,'cg_mission_files\sounds\blindfold.ogg'] spawn client_fnc_dotask",2]
	],


	[
		["( !(cursortarget getVariable['dead',FALSE]) && isPlayer currentcursortarget && currentcursortarget isKindOf 'Man') && ((animationstate CurrentCursorTarget) == 'incapacitated' || (animationstate CurrentCursorTarget) == 'deadstate' || (animationstate CurrentCursorTarget) == 'amovpercmstpssurwnondnon' || (animationstate CurrentCursorTarget) == 'amovpercmstpsnonwnondnon_amovpercmstpssurwnondnon') && !imrestrained"],
		["Zakuj", " ['Restraining',3,'client_fnc_restrain',CurrentCursorTarget,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorTarget,'cg_mission_files\sounds\handcuff.ogg'] spawn client_fnc_dotask",2]
	],


	[
		[" myJob IN ['Cop','doc'] && isPlayer currentcursortarget && currentcursortarget isKindOf 'Man' && ((animationstate CurrentCursorTarget) == 'Acts_AidlPsitMstpSsurWnonDnon_loop' || (animationstate CurrentCursorTarget) == 'amovpercmstpssurwnondnon' || (animationstate CurrentCursorTarget) == 'amovpercmstpsnonwnondnon_amovpercmstpssurwnondnon') && !imrestrained"],
		["Odkuj", " ['Unrestraining',3,'client_fnc_unrestrain',CurrentCursorTarget,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorTarget,'cg_mission_files\sounds\handcuff.ogg'] spawn client_fnc_dotask",2]
	],

	[
		[" !(myJob IN ['Cop','doc']) && isPlayer currentcursortarget && currentcursortarget isKindOf 'Man' && ((animationstate CurrentCursorTarget) == 'Acts_AidlPsitMstpSsurWnonDnon_loop' || (animationstate CurrentCursorTarget) == 'amovpercmstpssurwnondnon' || (animationstate CurrentCursorTarget) == 'amovpercmstpsnonwnondnon_amovpercmstpssurwnondnon') && !imrestrained"],
		["Odkuj", " ['Unrestraining',35,'client_fnc_unrestrain',CurrentCursorTarget,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorTarget,'cg_mission_files\sounds\handcuff.ogg'] spawn client_fnc_dotask",2]
	],


	[
		[" isPlayer currentcursortarget && currentcursortarget isKindOf 'Man'", "(headgear CurrentCursorTarget) != 'mgsr_headbag', (animationstate CurrentCursorTarget) == 'amovpercmstpsnonwnondnon_amovpercmstpssurwnondnon' || (animationstate CurrentCursorTarget) == 'Incapacitated' || (animationstate CurrentCursorTarget) == 'AmovPercMstpSnonWnonDnon_Ease' || (animationstate CurrentCursorTarget) == 'Acts_AidlPsitMstpSsurWnonDnon_loop' && !imrestrained"],
		["Załóż Worek na głowę", " ['Blindfolding',5,'client_fnc_blindfold',CurrentCursorTarget,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorTarget,'cg_sndimg\sounds\blindfold.ogg'] spawn client_fnc_dotask ",2]
	],

	[
		[" isPlayer currentcursortarget && currentcursortarget isKindOf 'Man' && !imrestrained", "(headgear CurrentCursorTarget) == 'mgsr_headbag' "],
		["Zdejmij Worek", " ['Removing Blindfold',5,'client_fnc_unblindfold',CurrentCursorTarget,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorTarget,'cg_sndimg\sounds\blindfold.ogg'] spawn client_fnc_dotask",2]
	],

	[
		[" isPlayer currentcursortarget && currentcursortarget isKindOf 'Man'", "(animationstate CurrentCursorTarget) == 'amovpercmstpsnonwnondnon_amovpercmstpssurwnondnon' || (animationstate CurrentCursorTarget) == 'Incapacitated' || (animationstate CurrentCursorTarget) == 'AmovPercMstpSnonWnonDnon_Ease' || (animationstate CurrentCursorTarget) == 'Acts_AidlPsitMstpSsurWnonDnon_loop' && !imrestrained"],
		["Wrzuć do samochodu", " ['Throwing in Car',10,'client_fnc_putincar',CurrentCursorTarget,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorTarget,'cg_mission_files\sounds\patdown1.ogg'] spawn client_fnc_dotask ",2]
	],

	[
		[" (CurrentCursorTarget getVariable['dead',FALSE]) && isPlayer currentcursortarget && currentcursortarget isKindOf 'Man' && !imrestrained && !attachedplayer && count (attachedobjects currentcursortarget) == 0 "],
		["Przeciągnij ciało", " ['Grabbing Body',15,'client_fnc_grabBody',CurrentCursorTarget,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorTarget,'cg_mission_files\sounds\patdown1.ogg'] spawn client_fnc_dotask ",2]
	],

	[
		[" isPlayer currentcursortarget && currentcursortarget isKindOf 'Man'", "(animationstate CurrentCursorTarget) == 'amovpercmstpsnonwnondnon_amovpercmstpssurwnondnon' || (animationstate CurrentCursorTarget) == 'Incapacitated' || (animationstate CurrentCursorTarget) == 'AmovPercMstpSnonWnonDnon_Ease' || (animationstate CurrentCursorTarget) == 'Acts_AidlPsitMstpSsurWnonDnon_loop' && !imrestrained"],
		["Eskortuj", " ['Starting Escort',5,'client_fnc_attach',CurrentCursorTarget,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorTarget,'cg_mission_files\sounds\patdown1.ogg'] spawn client_fnc_dotask ",2]
	],

	[
		["attachedplayer && !imrestrained"],
		["Zatrzymaj Eskortowanie", " ['Stopping Escort',5,'client_fnc_detach',player,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorTarget,'cg_mission_files\sounds\patdown1.ogg'] spawn client_fnc_dotask ",2]
	],

	[
		["isPlayer currentcursortarget && currentcursortarget isKindOf 'Man' && bankrobber == 1 && !imrestrained"],
		["Daj Pieniądze", "[CurrentCursorTarget] call Client_fnc_giveCash",2]
	],

	[
		["isPlayer currentcursortarget && currentcursortarget isKindOf 'Man' && (myjob == 'doc' || myjob == 'Biker' || myjob == 'Mobster' || myjob == 'Mafia' || myJob IN ['Cop','doc'] || myjob == 'EMS' || myjob == 'Legal' || myjob == 'DA')"],
		["Awansuj osobę", "[player, myJob] remoteExec ['client_fnc_promotionFirst', CurrentCursorTarget]; ",2]
	],

	[
		[" myJob IN ['Cop','doc'] && isPlayer currentcursortarget && currentcursortarget isKindOf 'Man' && !imrestrained"],
		["Mandat", " createdialog 'np_ticketpolice'; ",2]
	],




//shops and offices garages etc

	[
		["player distance myshop < 3 && !imrestrained"],
		["Ekwipunek Skelpu", "['Your crate will automatically despawn in 5 minutes - people can not use your shop while it is out!', true] spawn domsg; [player] remoteExec ['server_fnc_retreiveStore',2] ",3]
	],

	[
		["player distance myshop < 3 && !imrestrained"],
		["Ceny Sklepu", "[shopcontent,'start'] call client_fnc_updatePrices;",3]
	],

	[
		["(typeof CurrentCursorTarget) IN ['Land_buildingCommercial1','Land_buildingCommercial2'] && !imrestrained"],
		["Przeglądaj sklep", "[typeof CurrentCursorTarget,player] remoteExec ['server_fnc_retreiveStoreShopper',2]",3]
	],

	[
		["(typeof currentcursortarget == 'Land_buildingApartments2A' && player distance getpos currentcursortarget < 20 && (myJob IN ['Legal','DA'] || 20 IN licenseArray) && player distance [8186.91,2862.51,0.00143814] < 100) && myoffice isEqualTo [0,0,0]"],
		["Wynajem biura $500", " createdialog 'rentshop'",3]
	],

	[
		["(typeof currentcursortarget == 'Land_buildingApartments2A' && player distance getpos currentcursortarget < 20 && player distance [8186.91,2862.51,0.00143814] > 200) && !imrestrained && myoffice isEqualTo [0,0,0]"],
		["Wynajem biura $500", " createdialog 'rentshop' ",3]
	],

	[
		["player distance myoffice < 10 && !(myoffice isEqualTo [0,0,0])"],
		["Zamknij Biuro", " [myoffice, player] remoteExec['server_fnc_closeOffice',2]  ",3]
	],


	[
		["typeof CurrentCursorTarget == 'Land_buildingBarbers1' && !imrestrained"],
		["Sklep fryzjerski", "closedialog 0; createdialog 'HairDresser_Menu'; ['Glasses'] spawn client_fnc_loadStore;",3]
	],

	[
		["typeof CurrentCursorTarget IN ['Land_ModernShowroom'] && !imrestrained"],
		["Sklep samochodowy", "createdialog 'buycar';",3]
	],

	[ 
		["str CursorObject find 'hangar' > -1"], 
		["Sklep lotniczy", "createdialog 'buycar';",3] 
	],

	[ 
		["str CursorObject find 'embarcadero' > -1"], 
		["Sklep z łodziami", "createdialog 'buycar';",3] 
	],

	[
		["typeof currentcursortarget IN ['Land_HouseDoubleAL','Land_HouseDoubleAL2','Land_ivory_trailer_04','Land_ivory_trailer_01','Land_ivory_trailer_02','Land_ivory_trailer_03','Land_ivory_trailer_06','Land_ivory_trailer_05','Land_Ranch_DED_Ranch_02_F','Land_Ranch_DED_Ranch_01_F','Land_HouseC_R','Land_HouseC1_L','Land_HouseA1_L','Land_HouseB1_L']"],
		["Światło w domu", " [currentcursortarget] spawn client_fnc_houselight;",3]
	],

	[
		["player distance myhouse < 10"],
		["Dirty Money Stash", " [] call Client_fnc_openStash; ",3]
	],
	
	[
		["player distance myhouse < 10 || typeof CurrentCursorTarget IN ['Land_PostB']"],
		["Sprawdź pocztę", "[] spawn client_fnc_openMail",3]
	],

	[
		["str CursorObject find 'mailboxnorth' > -1"],
		["Wyślij pocztę", "createdialog 'client_findMail'",3]
	],

	[
		["currentcursortarget == fishTrader"],
		["Sprzedaż rzadkich ryb", "closedialog 0; createdialog 'RareFish_Menu'; ['rarefish'] spawn client_fnc_LoadStore;",3]
	],

	[
		["currentcursortarget == fishTrader"],
		["Handel Rzadką skórą", "closedialog 0; [] spawn client_fnc_rarePelt;",3]
	],

	[
		["typeof CurrentCursorTarget IN ['Land_Coffee_DED_Coffee_02_F','Land_Coffee_DED_Coffee_01_F'] && !(CurrentCursorTarget getVariable['robbing',FALSE]) "],
		["Napad Na Sklep", "closedialog 0; [] spawn client_fnc_robberyStore;",3]
	],


	//common shops
	[
		["typeof CurrentCursorTarget IN ['Land_Coffee_DED_Coffee_02_F','Land_Coffee_DED_Coffee_01_F']"],
		["Sklep odzieżowy", "closedialog 0; createdialog 'Clothing_Menu'; ['clothing'] spawn client_fnc_LoadStore;",3]
	],

	[
		["typeof CurrentCursorTarget == 'Land_buildingGunStore1'"],
		["Sklep z Bronią", "closedialog 0; createdialog 'gun_menu'; ['gunstore'] spawn client_fnc_LoadStore;",3]
	],

	[
		["typeof CurrentCursorTarget == 'land_cg_dunkinbronuts'"],
		["Menu pączków", "closedialog 0; createdialog 'food_menu'; ['donuts'] spawn client_fnc_LoadStore;",3]
	],

	[
		["typeof CurrentCursorTarget == 'land_cg_dexters'"],
		["Pizza Menu", "closedialog 0; createdialog 'food_menu'; ['pizza'] spawn client_fnc_LoadStore;",3]
	],

	[
		["typeof CurrentCursorTarget == 'Land_Market_DED_Market_01_F'"],
		["Mc Dildos", "closedialog 0; createdialog 'food_menu'; ['mcdonalds'] spawn client_fnc_LoadStore;",3]
	],

	[
		["str penis find 'carrito' > -1 || str penis find 'modelos6ki' > -1"],
		["Fast Food", "closedialog 0; createdialog 'food_menu'; ['hotdogs'] spawn client_fnc_LoadStore;",3]
	],

	[
		["typeof CurrentCursorTarget IN ['Land_buildingBar1','Land_Pub_A'] "],
		["Sklep Baru", "closedialog 0; createdialog 'food_menu'; ['bar'] spawn client_fnc_LoadStore;",3]
	],

	[
		[" nightclubOpen && getpos player distance [6267.62,1354.86,0.00143623] < 5"],
		["Nightclub Bar", "closedialog 0; createdialog 'food_menu'; ['nbar'] spawn client_fnc_LoadStore;",3]
	],

	[
		[" casinoOpen && getpos player distance [6819.29,4619.24,0.00144005] < 5"],
		["Casino Bar", "closedialog 0; createdialog 'food_menu'; ['bar'] spawn client_fnc_LoadStore;",3]
	],

	[
		["typeof CurrentCursorTarget IN ['Land_Coffee_DED_Coffee_02_F','Land_Coffee_DED_Coffee_01_F','Land_Shop_DED_Shop_01_F','Land_Shop_DED_Shop_02_F']"],
		["Sklep Wielobrażowy", "closedialog 0; createdialog 'GeneralStore_Menu'; ['general'] spawn client_fnc_LoadStore;",3]
	],


	[ 
		["(getpos player) distance [7603.34,6311.1,0.00143814] < 30"], 
		["Parking Policyjny.", "[CurrentCursorTarget] call Client_fnc_openCarYard",3] 
	],

	[ 
		["str CursorObject find 'otros' > -1 || str CursorObject find 'garaje' > -1 || str cursorObject find 'tallerdepinturaabandonado' > -1"], 
		["Dostosuj pojazd", "createdialog 'upgradecar' ",3] 
	],


	[ 
		["str CursorObject find 'otros' > -1 || str CursorObject find 'garaje' > -1 || str CursorObject find 'tallerdepinturaabandonado' > -1"], 
		["Ulpesz pojazd", "[] spawn client_fnc_carupdate;",3] 
	],

	[
		[" ( (myJob IN ['Cop','doc'] && typeof cursorobject == 'Land_PoliceStation') || (myjob == 'EMS' && (typeof cursorobject IN ['Land_buildingsfiredept1','Land_buildingshospital1'])) || (myJob == 'Mafia' && (typeof cursorobject == 'Land_em_mansion_01')) || (myJob == 'Biker' && (typeof cursorobject == 'Land_buildingsNightclub2')) || (myJob == 'Mobster' && (typeof cursorobject == 'Land_buildingsCasino2')) || (( myJob IN ['Cop','doc','EMS'] ) && ( str CursorObject find 'em_heliport' > -1 || str CursorObject find 'embarcadero' > -1 )) || (Mayor && player distance myhouse < 30) || (myJob == 'Legal' && player getVariable 'legal' > 5 && (typeof cursorobject == 'Land_buildingscourthouse1'))) && !imrestrained "],
		["Open Job Garage", "[CursorObject] spawn client_fnc_opengaragepolice;  ",3]
	],

	[ 
		["!attachedcar && (player distance myhouse < 30 || str CursorObject find 'otros' > -1 || str CursorObject find 'garaje' > -1 || str CursorObject find 'tallerdepinturaabandonado' > -1 || str CursorObject find 'hangar' > -1 || str CursorObject find 'embarcadero' > -1) && !imrestrained"], 
		["Otwórz Garaż", "[cursorObject] call Client_fnc_openGarage",3] 
	],
	
	[ 
		["!attachedcar && (str CursorObject find 'otros' > -1 || str CursorObject find 'garaje' > -1 || str CursorObject find 'tallerdepinturaabandonado' > -1 || str CursorObject find 'hangar' > -1 || str CursorObject find 'embarcadero' > -1) && !imrestrained"], 
		["Pełna Naprawa $1K", " [vehicle player] spawn client_fnc_garageRepair ",3] 
	],
	
	[
		["((player distance (getMarkerPos 'houseUpgrades')) < 30) && !isNull houseinvitation && !imrestrained "],
		["Zakceptuj dzielenie się domem", "[] spawn client_fnc_AcceptShareHouse",3]
	],

	[
		["((player distance (getMarkerPos 'houseUpgrades')) < 30) && !imrestrained "],
		["Resetuj Dzielenie się Domem", "_myguid = getplayeruid player; _theirguid = '0'; _myarray = [_myguid,_theirguid]; _myarray spawn client_fnc_sharehousefinish;",3]
	],
/*
	[
		["player getVariable 'houselevel' == 3 && isPlayer currentcursortarget && currentcursortarget isKindOf 'Man' && ((player distance (getMarkerPos 'houseUpgrades')) < 30) && !imrestrained"],
		["Temp Disabled", ',3]
	],
//[player,getplayerUID player] remoteexec ['client_fnc_ShareHouse', currentcursortarget]
*/

	[
		["((player distance (getMarkerPos 'houseUpgrades')) < 30) && player getvariable 'houselevel' < 3"],
		["Ulepsz Dom $225K", "[] spawn client_fnc_UpgradeHouse",3]
	],

	[
		["typeof currentcursortarget == 'Land_Market_DED_Market_03_F'"],
		["Wymień telefon", "closedialog 0; [] call client_fnc_checkPhone; trackedby = [];",3]
	],

	[
		["typeof currentcursortarget == 'Land_Market_DED_Market_03_F'"],
		["Naładuj telefon", "closedialog 0; ['add','battery',200] call client_fnc_sustain;",3]
	],


// jobs / situational

	[
		[" myJob IN ['Cop','DA'] && (( typeof cursorobject == 'Land_PoliceStation') || ( vehicle player != player )) && !imrestrained "],
		["Komputer Policyjny", "createdialog 'wanted';",4]
	],

	[
		[" myJob IN ['Legal'] && player getVariable 'legal' >= 6 && ( typeof cursorobject IN ['Land_buildingscourthouse1'] ) && ( vehicle player == player ) && !imrestrained "],
		["System sądowniczy", "createdialog 'wanted3';",4]
	],

	[
		[" ( typeof cursorobject IN ['Land_buildingscourthouse1'] ) && ( vehicle player == player ) && !imrestrained "],
		["Rejestry publiczne", "createdialog 'wanted2';",4]
	],

	[
		["(typeof CurrentCursorTarget IN ['Land_Centrelink','Land_CommonwealthBank','Land_Bank_DED_House_01_F'] || str CursorObject find 'mcl_atm' > -1) && myJob == 'Mobster' && bankrobber == 1 && !imrestrained"],
		["Kasyno Bank", "[player] remoteExec['Client_fnc_openMobsterATM',2]",4]
	],

	[
		["(typeof CurrentCursorTarget IN ['Land_Centrelink','Land_CommonwealthBank','Land_Bank_DED_House_01_F'] || str CursorObject find 'mcl_atm' > -1) && myJob == 'Mafia' && bankrobber == 1 && !imrestrained"],
		["Mafia Bank", "[player] remoteExec['Client_fnc_openMafiaATM',2]",4]
	],

	[
		["(typeof CurrentCursorTarget IN ['Land_Centrelink','Land_CommonwealthBank','Land_Bank_DED_House_01_F'] || str CursorObject find 'mcl_atm' > -1) && myJob == 'Biker' && bankrobber == 1 && !imrestrained"],
		[" Bank", "[player] remoteExec['Client_fnc_openBikerATM',2]",4]
	],

	[
		["(typeof CurrentCursorTarget IN ['Land_Centrelink','Land_CommonwealthBank','Land_Bank_DED_House_01_F'] || str CursorObject find 'mcl_atm' > -1) && ( Mayor || Psenate || (player getVariable 'legal' == 10) ) && !imrestrained"],
		["Rząd Bank", "[player] remoteExec['Client_fnc_openGovtATM',2]",4]
	],

	[
		["(typeof CurrentCursorTarget IN ['Land_CommonwealthBank','Land_Bank_DED_House_01_F']) && bankrobber == 1 && !imrestrained"],
		["Bank", "[] call Client_fnc_openATM",4]
	],

	[
		["(typeof CurrentCursorTarget IN ['Land_Centrelink'] || str CursorObject find 'mcl_atm' > -1) && bankrobber == 1 && !imrestrained"],
		["BANKOMAT", "[] call Client_fnc_openATM",4]
	],

	[
		["player distance myhouse < 10 && !imrestrained"],
		["Otwórz Skrzynie", "['Twoja skrzynia automatycznie zniknie w ciągu 1 minuty!', true] spawn domsg; [player] remoteExec ['server_fnc_retreivehouse',2]",4]
	],

	[
		["((myjob == 'Mafia' && typeof currentcursortarget == 'Land_em_mansion_01' && player getVariable 'Mafia' >= 8) || (myjob == 'Mobster' && typeof cursorobject == 'Land_buildingsCasino2' && player getVariable 'Mobster' >= 8) || (myjob == 'Biker' && typeof cursorobject == 'Land_buildingsNightclub2' && player getVariable 'Biker' >= 8)) && !imrestrained"],
		["Otrzórz skrzynie organizacji", "['Twoja skrzynia automatycznie zniknie w ciągu 1 minuty!', true] spawn domsg; [player, myJob] remoteExec ['server_fnc_retreivegang',2]",4]
	],



	[
		["((myjob == 'Cop' && typeof currentcursortarget == 'Land_em_mansion_01' && player getVariable 'Cop' > 4))"],
		["Przeszukaj Skrzynie", "['Twoja skrzynia automatycznie zniknie w ciągu 1 minuty!', true] spawn domsg; [player, ""Mafia""] remoteExec ['server_fnc_retreivegang',2]",4]
	],


	[
		["((myjob == 'Cop' && typeof cursorobject == 'Land_buildingsCasino2' && player getVariable 'Cop' > 4))"],
		["Przeszukaj Skrzynie", "['Twoja skrzynia automatycznie zniknie w ciągu 1 minuty!', true] spawn domsg; [player, ""Mobster""] remoteExec ['server_fnc_retreivegang',2]",4]
	],

	[
		["((myjob == 'Cop' && typeof cursorobject == 'Land_buildingsNightclub2' && player getVariable 'Cop'> 4))"],
		["Przeszukaj Skrzynie", "['Twoja skrzynia automatycznie zniknie w ciągu 1 minuty!', true] spawn domsg; [player, ""Biker""] remoteExec ['server_fnc_retreivegang',2]",4]
	],


	[
		["(str CursorObject find 'gymbench' > -1 || str CursorObject find 'gymrack' > -1)"],
		["Ćwiczenia", "['Doing Workout',60,'client_fnc_workout',player,'AmovPercMstpSnonWnonDnon_exercisePushup',player,''] spawn client_fnc_dotask; ",4]
	],

	[
		["Mayor && player distance myhouse < 25"],
		["Ustaw podatki", "createdialog 'tax_menu';",4]
	],

	[
		["(Mayor || Psenate) && player distance myhouse < 25"],
		["Płać", " createdialog 'bill_menu'; ",4]
	],

	[
		[" myJob IN ['Mobster'] && (typeof cursorobject IN ['Land_buildingsCasino2']) && player getVariable 'Mobster' >= 8 "],
		["Ustaw stawkę kasyna", "createdialog 'casinoRate_Menu';",4]
	],

	[
		[" (typeof cursorobject IN ['Land_buildingsCasino2']) && player distance [6780,4608.48,0.00143766] < 5 && (myJob == 'Mobster' && player getVariable 'Mobster' >= 8) "],
		["Otwórz Sejf", "[player] remoteExec['Client_fnc_openCasinoVault',2]",4]
	],

	[
		[" vaultrobber && time > vaultTimer "],
		["Napadaj na sejf", " ['Robbing Money',15,'client_fnc_robVault',player,'AinvPknlMstpSnonWnonDnon_medic_1',player,'cg_sndimg\sounds\repair.ogg'] spawn client_fnc_dotask ",4]
	],

	[
		[" !casinoOpen && myJob IN ['Mobster'] && (typeof cursorobject IN ['Land_buildingsCasino2']) && player getVariable 'Mobster' >= 6 "],
		["Otwórz Kasyno", "[1] remoteExec['server_fnc_openCasino',2];",4]
	],

	[
		[" casinoOpen && myJob IN ['Mobster'] && (typeof cursorobject IN ['Land_buildingsCasino2']) && player getVariable 'Mobster' >= 6 "],
		["Zamknij Kasyno", "[0] remoteExec['server_fnc_openCasino',2];",4]
	],

	[
		[" myJob IN ['Mobster'] && (typeof cursorobject IN ['Land_buildingsCasino2']) && player getVariable 'Mobster' >= 6 && !lockCasino"],
		["Zablokuj kasyno", "[1] call client_fnc_lockCasino;",4]
	],

	[
		[" myJob IN ['Mobster'] && (typeof cursorobject IN ['Land_buildingsCasino2']) && player getVariable 'Mobster' >= 6 && lockCasino"],
		["Odblokuj kasyno", "[0] call client_fnc_lockCasino;",4]
	],

	[
		[" !nightclubOpen && myJob IN ['Biker'] && (typeof cursorobject IN ['Land_buildingsNightclub2']) && player getVariable 'Biker' >= 6 "],
		["Otwórz Nightclub", "[1] remoteExec['server_fnc_openNightclub',2];",4]
	],

	[
		[" nightclubOpen && myJob IN ['Biker'] && (typeof cursorobject IN ['Land_buildingsNightclub2']) && player getVariable 'Biker' >= 6 "],
		["Zamknij Nightclub", "[0] remoteExec['server_fnc_openNightclub',2];",4]
	],

	[
		[" myJob IN ['Biker'] && (typeof cursorobject IN ['Land_buildingsNightclub2']) && player getVariable 'Biker' >= 6 && !lockNightclub"],
		["Zablokuj Nightclub", "[1] call client_fnc_lockNightclub;",4]
	],

	[
		[" myJob IN ['Biker'] && (typeof cursorobject IN ['Land_buildingsNightclub2']) && player getVariable 'Biker' >= 6 && lockNightclub"],
		["Odblokuj Nightclub", "[0] call client_fnc_lockNightclub;",4]
	],

	[
		["clientarrested"],
		["Pozostały czas", "_time = secondsLeft / 60; [format['You have %1 year(s) remaining.', round(_time)], true] spawn domsg;",4]
	],

	[
		[" !imrestrained  && !(player getVariable ['surrender', false]) "],
		["Portfel", "createdialog 'wallet_Menu'",4]
	],

	[
		["count (player call TFAR_fnc_radiosList) > 0 && !imRestrained && !(player getVariable ['surrender', false])"],
		["Telefon", "createdialog 'phoneHUD'",4]
	],

	[
		["str CursorObject find 'cabinatelefonica' > -1 && !callInProgress && !PhonesRinging && !TryingCall && !imrestrained"],
		["Anonimowe połączenie", "[] spawn client_fnc_callMenuPP; ",4]
	],

	[
		["str CursorObject find 'cabinatelefonica' > -1 && !callInProgress && !PhonesRinging && !TryingCall && !imrestrained"],
		["Anonimowa wiadomość", " createDialog 'client_findSMSAnon' ",4]
	],


	[
		["!busyPlayer && !imrestrained && !clientarrested && player distance myhouse < 30"],
		["Craft Menu", "createdialog 'client_Craft_Menu'",4]
	],

	[
		[" myJob IN ['Cop'] && !dispatch && (player getvariable 'cop') > 0 "],
		["Zaloguj się na Dyspozytornie", "[player,'Police Dispatch'] spawn client_fnc_jobstart;",4]
	],

	[
		[" myJob IN ['doc'] && !dispatch && (player getvariable 'doc') > 0 "],
		["Zaloguj się na Dyspozytornie", "[player,'Doc Dispatch'] spawn client_fnc_jobstart;",4]
	],

	[
		["myjob == 'EMS' && !dispatch && (player getvariable 'ems') > 0 "],
		["Zaloguj się na Dyspozytornie", "[player,'Medic Dispatch'] spawn client_fnc_jobstart;",4]
	],

	[
		["dispatch"],
		["Wyloguj się z dyspozytorni", "Dispatch = false; [player] remoteExec ['server_fnc_quitDispatch',2];",4]
	],


	[
		[" (myJob IN ['Cop'] && typeof cursorobject == 'Land_PoliceStation') && (player getvariable 'cop') >= 5  "],
		["UAV Terminal", " ['uav'] spawn client_fnc_setGear  ",4]
	],
	
	[
		[" myJob IN ['Legal'] && (player getVariable 'legal' >= 9) && (typeof cursorobject IN ['Land_buildingscourthouse1']) "],
		["Ubranie DOC ", "['basic'] spawn client_fnc_setGear",4]
	],
	
	[
		[" myJob IN ['Mafia'] && (typeof cursorobject IN ['Land_em_mansion_01']) "],
		["Mafia UBRANIE", "['basic'] spawn client_fnc_setGear",4]
	],

	[
		[" myJob IN ['Biker'] && (typeof cursorobject IN ['Land_buildingsNightclub2']) "],
		["UBRANIE", "['basic'] spawn client_fnc_setGear",4]
	],

	[
		[" myJob IN ['Mobster'] && (typeof cursorobject IN ['Land_buildingsCasino2']) "],
		["UBRANIE", "['basic'] spawn client_fnc_setGear",4]
	],

	[
		[" myJob IN ['EMS'] && (typeof cursorobject IN ['Land_buildingsfiredept1','Land_buildingshospital1']) "],
		["EMS UBRANIE", "['EMS'] spawn client_fnc_setGear",4]
	],

	[
		[" myJob IN ['EMS'] && (typeof cursorobject IN ['Land_buildingsfiredept1','Land_buildingshospital1']) "],
		["Straż UBRANIE", "['Fire'] spawn client_fnc_setGear",4]
	],


	[
		[" (myJob IN ['Cop','doc'] && typeof cursorobject == 'Land_PoliceStation') "],
		["Poncho", " player addVest 'mgsr_poncho_dry_vest'; ",4]
	],

	[
		[" (myJob IN ['Cop'] && typeof cursorobject == 'Land_PoliceStation') "],
		["Sprzęt patrolowy", "['patrol'] spawn client_fnc_setGear",4]
	],

	[
		[" (myJob IN ['Cop'] && typeof cursorobject == 'Land_PoliceStation') "],
		["Highway Sprzęt", "['highway'] spawn client_fnc_setGear",4]
	],

	[
		[" (myJob IN ['Cop'] && typeof cursorobject == 'Land_PoliceStation') "],
		["Marshal Sprzęt", "['marshal'] spawn client_fnc_setGear",4]
	],
	
	[
		[" (myjob IN ['doc'] && typeof cursorobject == 'Land_PoliceStation') "],
		["Prison Sprzęt", "['prison'] spawn client_fnc_setGear",4]
	],

	[
		[" myJob IN ['Cop'] && typeof cursorobject == 'Land_PoliceStation' && (player getVariable 'cop' == 10 || 10 IN licenseArray || 11 IN licenseArray)"],
		["Scuba Sprzęt", "['water'] spawn client_fnc_setGear",4]
	],

	[
		[" myJob IN ['Cop'] && typeof cursorobject == 'Land_PoliceStation' && (player getVariable 'cop' == 10 || 8 IN licenseArray || 9 IN licenseArray)"],
		["SWAT Sprzęt", "['swat'] spawn client_fnc_setGear",4]
	],

	[
		[" myJob IN ['doc'] && typeof cursorobject == 'Land_PoliceStation' && (player getVariable 'doc' == 10 || 14 IN licenseArray || 15 IN licenseArray)"],
		["CRT Sprzęt", "['crt'] spawn client_fnc_setGear",4]
	],

	[
		[" myJob == 'EMS' && (typeof cursorobject IN ['Land_buildingsfiredept1','Land_buildingshospital1']) && (player getVariable 'EMS' == 10 || 25 IN licenseArray || 26 IN licenseArray)"],
		["Scuba Sprzęt", "['Mwater'] spawn client_fnc_setGear",4]
	],

	[
		[" myJob IN ['Cop'] && typeof cursorobject == 'Land_PoliceStation'"],
		["Potrzeba Prokuratora", " ['Request sent successfully.', true] spawn domsg;  [currentDA, format['%1 has requested a prosecutor at PD. Text him/her to confirm.',name player], 'Silver Lake'] remoteExec ['server_fnc_sendMessage', 2]; ", 4]
	],

	[
		[" myJob IN ['Cop'] && typeof cursorobject == 'Land_PoliceStation'"],
		["Potrzeba Adwokata", " ['Request sent successfully.', true] spawn domsg;  [currentPubDefs, format['%1 has requested a public defender at PD. Text him/her to confirm.',name player], 'Silver Lake'] remoteExec ['server_fnc_sendMessage', 2];  ", 4]
	],

	[
		[" myJob IN ['Cop'] && typeof cursorobject == 'Land_PoliceStation'"],
		["Potrzeba Sędzie", " ['Request sent successfully.', true] spawn domsg; [currentjudges, format['%1 has requested a judge at PD. Text him/her to confirm.',name player], 'Silver Lake'] remoteExec ['server_fnc_sendMessage', 2]; ", 4]
	],

	[
		[" myjob == 'none' && (player getvariable 'doc') > 0 && typeof cursorobject == 'Land_PoliceStation' "],
		["Zacznij Pracę DoC", "[] call client_fnc_setlastsave; [player,'doc'] spawn client_fnc_jobstart;",4]
	],

	[
		[" myjob IN ['doc'] && typeof cursorobject == 'Land_PoliceStation' "],
		["Skończ Pracę DoC", "[1] call client_fnc_jobEnd",4]
	],

	[
		[" myjob == 'none' && (player getvariable 'cop') > 0 && typeof cursorobject == 'Land_PoliceStation'"],
		["Zacznij Pracę PD", "[] call client_fnc_setlastsave; [player,'Cop'] spawn client_fnc_jobstart;",4]
	],

	[
		[" myjob IN ['Cop'] && typeof cursorobject == 'Land_PoliceStation'"],
		["Skończ Pracę PD", "[1] call client_fnc_jobEnd",4]
	],
	[
		[" myjob == 'none' && (player getvariable 'ems') > 0 && (typeof cursorobject IN ['Land_buildingsfiredept1','Land_buildingshospital1']) "],
		["Zacznij Pracę EMS", "[] call client_fnc_setlastsave; [player,'EMS'] spawn client_fnc_jobstart;",4]
	],

	[
		["myjob == 'EMS' && (typeof cursorobject IN ['Land_buildingsfiredept1','Land_buildingshospital1'])"],
		["Skończ Pracę EMS", "[1] call client_fnc_jobEnd",4]
	],

	[
		["myjob == 'none' && (player getvariable 'legal') > 0 && (typeof cursorobject IN ['Land_buildingscourthouse1']) && !(Senator || Mayor)"],
		["Zacznij Pracę", "[player,'Legal'] spawn client_fnc_jobstart;",4]
	],

	[
		["myjob == 'Legal' && (typeof cursorobject IN ['Land_buildingscourthouse1'])"],
		["Skończ Pracę Legal", "[0] call client_fnc_jobEnd",4]
	],

	[
		["20 IN licenseArray && !(player IN currentLawyers) && ( typeof cursorobject == 'Land_Centrelink' )"],
		["Zacznij Pracę Adwokat", " currentLawyers pushBack player; publicVariable 'currentLawyers'; ",4]
	],

	[
		["(player IN currentLawyers) && ( typeof cursorobject == 'Land_Centrelink' )"],
		["Skończ Pracę Adwokat", " currentLawyers = currentLawyers - [player]; publicVariable 'currentLawyers'; ",4]
	],

	[
		["27 IN licenseArray && !(player IN currentParalegals) && ( typeof cursorobject == 'Land_Centrelink' )"],
		["Zacznij Pracę", " currentParalegals pushBack player; publicVariable 'currentParalegals'; ",4]
	],

	[
		["player IN currentParalegals && ( typeof cursorobject == 'Land_Centrelink' )"],
		["Skończ Pracę", " currentParalegals = currentParalegals - [player]; publicVariable 'currentParalegals'; ",4]
	],


	[
		["myjob == 'none' && (player getvariable 'dmv') > 0 && (typeof cursorobject IN ['Land_Centrelink'])"],
		["Zacznij Pracę DMV", "[player,'DMV'] spawn client_fnc_jobstart;",4]
	],

	[
		["myjob == 'DMV' && (typeof cursorobject IN ['Land_Centrelink'])"],
		["Skończ Pracę DMV", "[0] call client_fnc_jobEnd",4]
	],


	[
		["myjob == 'none' && (player getvariable 'da') > 0 && (typeof cursorobject IN ['Land_Centrelink'])"],
		["Zacznij Pracę DA", "[player,'DA'] spawn client_fnc_jobstart;",4]
	],

	[
		["myjob == 'DA' && (typeof cursorobject IN ['Land_Centrelink'])"],
		["Skończ Pracę DA", "[0] call client_fnc_jobEnd",4]
	],

	[
		["myjob == 'none' && (player getvariable 'mafia') > 0 && (typeof cursorobject IN ['Land_em_mansion_01'])"],
		["Zacznij Pracę Mafia", "[player,'Mafia'] spawn client_fnc_jobstart;",4]
	],

	[
		["myjob == 'Mafia' && (typeof cursorobject IN ['Land_em_mansion_01'])"],
		["Skończ Pracę Mafia", "[0] call client_fnc_jobEnd",4]
	],


	[
		["myjob == 'none' && (player getvariable 'Biker') > 0 && (typeof cursorobject IN ['Land_buildingsNightclub2'])"],
		["Zacznij Pracę", "[player,'Biker'] spawn client_fnc_jobstart;",4]
	],

	[
		["myjob == 'Biker' && (typeof cursorobject IN ['Land_buildingsNightclub2'])"],
		["Skończ Pracę", "[0] call client_fnc_jobEnd",4]
	],

	[
		["myjob == 'none' && (player getvariable 'Mobster') > 0 && (typeof cursorobject IN ['Land_buildingsCasino2'])"],
		["Zacznij Pracę", "[player,'Mobster'] spawn client_fnc_jobstart;",4]
	],

	[
		["myjob == 'Mobster' && (typeof cursorobject IN ['Land_buildingsCasino2'])"],
		["Skończ Pracę", "[0] call client_fnc_jobEnd",4]
	],




	[
		["(str CursorObject find 'modelos6estateriademedicamentos' > -1 || str CursorObject find 'modelos6mesadeoperaciones' > -1 || str CursorObject find 'modelos6papeleradehospital' > -1 || str CursorObject find 'm6estanterialargahospital' > -1) && player distance getmarkerpos 'drugprocess' < 100 "],
		["Przerabianie Cegły Narkotykowe", "closedialog 0; [] spawn client_fnc_processBricks",4]
	],

	[
		["((player distance (getMarkerPos 'sales')) < 30)"],
		["Sprzedaj Ruda / Drewno", "closedialog 0; [] spawn client_fnc_sellOre",4]
	],

	[
		["((player distance (getMarkerPos 'peltCuring')) < 30)"],
		["Skóra", "closedialog 0; [] spawn client_fnc_refinePelts",4]
	],

	[
		["((player distance (getMarkerPos 'fishRefinery')) < 70) || typeof (vehicle player) IN ['vvv_NewYacht','POP_Speed_yatch'] "],
		["Przerabianie Ryb", "closedialog 0; [] spawn client_fnc_refineFish",4]
	],

	[
		["((player distance (getMarkerPos 'logRefinery')) < 30)"],
		["Przerabianie Drewna", "closedialog 0; [] spawn client_fnc_refineLogs",4]
	],

	[
		["((player distance (getMarkerPos 'oilRefinery')) < 30)"],
		["Przerabianie Oleju", "closedialog 0; [] spawn client_fnc_refineoil;",4]
	],

	[
		["((player distance (getMarkerPos 'OreRefinery')) < 30)"],
		["Przerabianie Rudy", "closedialog 0; [] spawn client_fnc_refinemetal1;",4]
	],

	[
		["ClientArrested && player distance [5616.14,6313.37,0.00143433] < 8"],
		["Narzędzie hakerskie", "['Crafting Hacking Tool',20,'client_fnc_crafthackingdevice',player,'AinvPknlMstpSnonWnonDnon_medic_1',player] spawn client_fnc_dotask; ",4]
	],
	
	[
		["ClientArrested && (str CursorObject find 'gymbench' > -1 || str CursorObject find 'gymrack'> -1 ) && getpos player distance [5644.19,6329.73,0.00143433] < 55"],
		["Craft Lockpick", "['Crafting Lockpick',60,'client_fnc_craftlockpick',player,'AmovPercMstpSnonWnonDnon_exercisePushup',player] spawn client_fnc_dotask; ",4]
	],

	[
		["( typeof CurrentCursorTarget == 'Rabbit_F' || str CursorObject find 'cock_' > -1 ) && getdammage cursorobject == 1"],
		["Skóra Królik", "deletevehicle CurrentCursorTarget; player additem 'np_upelt'; ['You skinned an animal for its pelt!', true] spawn domsg; ",4]
	],

	[
		["( str CursorObject find 'Sheep_' > -1 ) && getdammage cursorobject == 1"],
		["Skóra Zwierze", "deletevehicle CurrentCursorTarget; player additem 'np_upelt'; player additem 'np_upelt'; player additem 'np_upelt'; player additem 'np_upelt'; ['You skinned an animal for its pelt!', true] spawn domsg; ",4]
	],

	[
		["((player distance (getMarkerPos 'fishSales')) < 20)"],
		["Sprzedaj Rybę", "closedialog 0; [] spawn client_fnc_sellFish",4]
	],

	[
		["str CursorObject find 'cargo40' > -1 && player distance [9190.24,6561.57,0.00143814] < 200"],
		["Wyszukaj Skrzynie", "['Searching Crate',35,'client_fnc_searchcrates',player,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorTarget,'cg_sndimg\sounds\repair.ogg'] spawn client_fnc_dotask; ",4]
	],

	[ 
		[" 'np_goldscanner' in magazines player && player distance [8606.95,1421.29,8.80693] < 400 && GoldTimer < time "], 
		["Skanuj w poszukiwaniu złota", " [] spawn client_fnc_scangold; ",4] 
	],

	[
		[" player distance nearestObject [getpos player, 'itemsGoldbar1'] < 2 "],
		["Wykop Złoto", "['Searching for Gold Bar',7,'client_fnc_packgoldbar',player,'AinvPknlMstpSnonWnonDnon_medic_1',player,'cg_sndimg\sounds\repair.ogg'] spawn client_fnc_dotask; ",4]
	],

	[
		["( myjob != 'none' && !(myjob IN ['Doc','cop','EMS','Mobster','Biker','Mafia']) ) && (typeof CurrentCursorTarget IN ['Land_Centrelink'] || player distance myhouse < 20)"],
		["Wyjdz z Pracy", "[0] spawn client_fnc_jobEnd;",4]
	],

	[
		["myjob != 'none' && typeof CurrentCursorTarget IN ['Land_Centrelink'] && myjob != 'cropdusting'"],
		["Spawn Auto z Pracy", "[] spawn client_fnc_spawnjobvehicle",4]
	],


	[
		[" myjob == 'none' && player distance [7051.26,834.174,-1.5532] < 100 "],
		["Zacznij pracę w Włókieniczego", "[] spawn client_fnc_fishTrawling;",4]
	],

	[
		[" myjob == 'none' && player distance [3573.71,1842.27,0.00144196] < 100 "],
		["Zacznij pracę rolnika", "[] spawn client_fnc_farmingplots;",4]
	],

	[
		[" myjob == 'none' && typeof CurrentCursorTarget IN ['Land_Hangar_F'] && (6) IN licenseArray "],
		["Zacznij Prace Lotnika", "[] spawn client_fnc_cropdusting; ['You can spawn a plane at any hanger', true] spawn domsg; ",4]
	],

	[
		["myjob != 'none' && typeof CurrentCursorTarget IN ['Land_Hangar_F'] && myjob == 'cropdusting' && (6) IN licenseArray "],
		["Spawn Pojazd Pracy", "[] spawn client_fnc_spawnjobvehicle",4]
	],

	[
		["typeof CurrentCursorTarget == 'Land_Centrelink'"],
		["Szuakj Pracy", "[player] spawn client_fnc_startjob",4]
	],

	[
		["myjob == 'Repairman'"],
		["Napraw Obiekt", "['Repairing Object',15,'client_fnc_repairNear',player,'AinvPknlMstpSnonWnonDnon_medic_1',player,'cg_sndimg\sounds\repair.ogg'] spawn client_fnc_dotask; ",4]
	],

	[
		[" "],
		["Statystyki Postaci", "closedialog 0; [] spawn client_fnc_myLevels; ",4]
	],
	
	[
		[" myjob IN ['doc'] && isPlayer currentcursortarget && currentcursortarget isKindOf 'Man' && !(currentcursortarget getVariable['JailTracked',FALSE]) "],
		["Włącz śledzenie", "[] remoteexec ['client_fnc_enablePlayerTracking',currentcursortarget] ",4]
	],

	[
		[" myjob IN ['doc'] && isPlayer currentcursortarget && currentcursortarget isKindOf 'Man' && (currentcursortarget getVariable['JailTracked',FALSE]) "],
		["Wyłącz śledzenie", " currentcursortarget setvariable ['JailTracked',nil,true]; ",4]
	],
	[
		[" (player getVariable['JailTracked',FALSE]) && vehicle player != player "],
		["Wyłącz śledzenie", "  ['Removing Tracking',600,'client_fnc_DisablePlayerTracking',player,'AinvPknlMstpSnonWnonDnon_medic_1',player,'cg_sndimg\sounds\repair.ogg'] spawn client_fnc_dotask; ",4]
	],
	
	[
		[" myjob IN ['doc','Cop'] && isPlayer currentcursortarget && currentcursortarget isKindOf 'Man' && ( getpos player distance [8242.13,3019.17,0] < 50 || getpos player distance [5556.2,6291.29,0.00143433] < 350 ) "],
		["Blok 1 Odzież", " [0,0] remoteexec ['client_fnc_jailClothing',currentcursortarget]; ",4]
	],

	[
		[" myjob IN ['doc','Cop'] && isPlayer currentcursortarget && currentcursortarget isKindOf 'Man' && ( getpos player distance [8242.13,3019.17,0] < 50 || getpos player distance [5556.2,6291.29,0.00143433] < 350 ) "],
		["Blok 2 Odzież", " [1,0] remoteexec ['client_fnc_jailClothing',currentcursortarget]; ",4]
	],

	[
		[" myjob IN ['doc','Cop'] && isPlayer currentcursortarget && currentcursortarget isKindOf 'Man' && ( getpos player distance [8242.13,3019.17,0] < 50 || getpos player distance [5556.2,6291.29,0.00143433] < 350 ) "],
		["Blok 3 Odzież", " [2,0] remoteexec ['client_fnc_jailClothing',currentcursortarget]; ",4]
	],

	[
		[" myjob IN ['doc','Cop'] && isPlayer currentcursortarget && currentcursortarget isKindOf 'Man' && ( getpos player distance [8242.13,3019.17,0] < 50 || getpos player distance [5556.2,6291.29,0.00143433] < 350 ) "],
		["Pozostały czas", " [player] remoteexec ['client_fnc_getTimeLeft', CurrentCursorTarget] ",4]
	],


	[
		[" myjob IN ['doc','Cop','EMS']  && !imrestrained && !(player getVariable ['surrender', false]) && count currentrepairmen > 0"],
		["Poproś o naprawę", " [getpos player] remoteExec ['client_fnc_startRepair',currentrepairmen]; ['Thank you for supporting your community, SMS has been sent to repair jobs' , true] spawn domsg; ",4]
	]

];

player setVariable["loaded", 2, false];





