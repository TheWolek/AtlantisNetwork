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
		["Show All", " ['All'] spawn client_fnc_marker; ",5] 
	],

	[ 
		["visibleMap"], 
		["My Home", " ['Home'] spawn client_fnc_marker; ",5] 
	],

	[ 
		["visibleMap"], 
		["My Shop", " ['Shop'] spawn client_fnc_marker; ",5] 
	],

	[ 
		["visibleMap"], 
		["My Office", " ['Office'] spawn client_fnc_marker; ",5] 
	],

	[ 
		["visibleMap"], 
		["Shops", " ['Shops'] spawn client_fnc_marker; ",5] 
	],

	[ 
		["visibleMap"], 
		["Offices", " ['Offices'] spawn client_fnc_marker; ",5] 
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
		["Gas Station", " ['Gas'] spawn client_fnc_marker; ",5] 
	],
	
	[ 
		["visibleMap"], 
		["Gunstore", " ['Gun'] spawn client_fnc_marker; ",5] 
	],
	
	[ 
		["visibleMap"], 
		["General Store", " ['General'] spawn client_fnc_marker; ",5] 
	],
	
	[ 
		["visibleMap"], 
		["Car Shop", " ['Carshop'] spawn client_fnc_marker; ",5] 
	],
	
	[ 
		["visibleMap"], 
		["Car Garage", " ['Garage'] spawn client_fnc_marker; ",5] 
	],
	
	[ 
		["visibleMap"], 
		["Air Shop & Garage", " ['Airshop'] spawn client_fnc_marker; ",5] 
	],
	
	[ 
		["visibleMap"], 
		["Boat Shop & Garage", " ['Boatshop'] spawn client_fnc_marker; ",5] 
	],
	
	[ 
		["visibleMap"], 
		["Pizzaria", " ['Pizzaria'] spawn client_fnc_marker; ",5] 
	],
	
	[ 
		["visibleMap"], 
		["Bar", " ['Bar'] spawn client_fnc_marker; ",5] 
	],
	
	[ 
		["visibleMap"], 
		["Barber Shop", " ['Barber'] spawn client_fnc_marker; ",5] 
	],

	[ 
		["visibleMap"], 
		["McDildos", " ['McDildos'] spawn client_fnc_marker; ",5] 
	],
	
	[ 
		["visibleMap"], 
		["Processing", " ['Processing'] spawn client_fnc_marker; ",5] 
	],
	
	[ 
		["visibleMap"], 
		["Miscellaneous", " ['Misc'] spawn client_fnc_marker; ",5] 
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

	//casino ??
	[ 
		["player distance [4821.64,2133.08,0.00143909] < 25"], 
		["Horse Betting $0-500", " createdialog 'client_phonebet';",5] 
	],

	[ 
		["player distance [4816.38,2120.7,0.00143909] < 25"], 
		["Lottery $1K", "[] spawn client_fnc_lottoBuy;",5] 
	],

	[ 
		["player distance [4821.92,2139.32,0.00143909] < 25"], 
		["Slots $100-$1K", "[] spawn client_fnc_slotsStart; ",5] 
	],
	//

	[
		["typeof CursorObject == 'Land_Market_DED_Market_03_F'"],
		["Make Advert $100", "closedialog 0; createdialog 'client_Advertise';", 5]
	],

	[ 
		[" myCallOwner IN [99.1,99.2,99.3,99.4,99.5] && !(player IN serverRadioPlayers) "], 
		["Tip Radio $50", "[] spawn client_fnc_tipRadioPresenter; ",5] 
	],

	[ 
		[" ( (player IN serverRadioPlayers) && !(CursorObject IN serverRadioPlayers) && (isPlayer CursorObject && CursorObject isKindOf 'Man') ) "], 
		["Add Presenter", "[player] remoteexec ['client_fnc_forceradioconnection',currentCursorObject]; ",5] 
	],

	[ 
		[" ( (player IN serverRadioPlayers) ) "], 
		["Check Callers", " [] SPAWN CLIENT_FNC_RADIOCALLMENU; ",5] 
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
		[" typeof CursorObject IN ['Land_buildingsCasino2','Land_buildingsbasement1','Land_buildingsNightclub2','Land_buildingsJailCellBlock1','land_jf_sheriff_station_01'] && myJob IN ['Cop'] "], 
		["Raid Door", " [] spawn client_fnc_lockpick; ",5] 
	],


	[ 
		[" CursorObject getVariable['hotcar',FALSE] "], 
		["Steal Vehicle", " ['Hotwiring Vehicle',30,'client_fnc_careventend',player,'AinvPknlMstpSnonWnonDnon_medic_1',[CurrentCursorObject],'cg_mission_files\sounds\repair.ogg'] spawn client_fnc_dotask ",5] 
	],

[ 
		[" CursorObject getVariable['robberCar',FALSE] && myJob IN ['Cop']"], 
		["Return Vehicle", " ['Returning Vehicle',180,'client_fnc_careventendpolice',player,'AinvPknlMstpSnonWnonDnon_medic_1',[CurrentCursorObject],'cg_mission_files\sounds\repair.ogg'] spawn client_fnc_dotask ",5] 
	],

	[ 
		[" bankrobber == 4 && typeof CursorObject IN ['plp_ct_HighSecMediumBlack','cg_mainvault'] && mybank == CursorObject "], 
		["Take Cash", " ['Taking Money',30,'client_fnc_takecash',player,'AinvPknlMstpSnonWnonDnon_medic_1',[CurrentCursorObject],'cg_mission_files\sounds\repair.ogg'] spawn client_fnc_dotask ",5] 
	],

	[ 
		[" bankrobber == 2 && typeof CursorObject IN ['plp_ct_HighSecMediumBlack','cg_mainvault'] && mybank == CursorObject "], 
		["Repair Drill", " ['Repairing Drill',30,'client_fnc_repairdrill',player,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorObject,'cg_mission_files\sounds\repair.ogg'] spawn client_fnc_dotask ",5] 
	],

	[ 
		["player distance [6795.5,4615.08,0.00143814] <= 3"], 
		["Twitch.TV", " ['Trying to connect to twitch.tv servers... Connection lost.', true] spawn domsg; ",5] 
	],

	[ 
		[" "], 
		["Give Keys", " [] spawn client_fnc_findplayerskeys; ",5] 
	],

	[ 
		[" vehicle player != player && !isNil{vehicle player getVariable 'ivory_windowtint'} "], 
		["Vehicle Manual", " [vehicle player] spawn client_fnc_manual; ",5] 
	],

	[ 
		[" (typeof cursorobject IN ['Land_buildingscourthouse1'])"], 
		["Buy Licenses", "[0] spawn client_fnc_license;",1] 
	],

	[
		["(typeof cursorobject IN ['Land_buildingscourthouse1'])"],
		["Pay Taxes", "createdialog 'payTax_Menu';",1]
	],

	[
		["(typeof cursorobject IN ['Land_buildingscourthouse1'])"],
		["View Taxes", " [format['You have unpaid taxes of %1 and the tax rate is at %2%3.', ((player getVariable 'statuses') select 13) call client_fnc_numberText, taxRate, '%'], true]  spawn domsg; ",1]
	],

	[
		["paintballing "],
		["Respawn", " paintballhit = true; ['Respawned', true] spawn domsg; ",1]
	],

	[
		["paintballing "],
		["Refill Paintball", " for '_i' from 1 to 3 do { player addItemToUniform '140Rnd_PaintBall_blau'; }; ",1]
	],

	[
		[" player distance [3370.36,1436.92,0.00147247] < 225 && !paintballing"],
		["Start Paintball", " [player] remoteexec ['server_fnc_paintball',2]; ",1]
	],

	[
		[" cursorObject == mobsterVehicle && !isNull mobsterVehicle && player distance endOfmission < 25 && myjob == 'Mobster' && typeof mobsterVehicle == 'acj_Brinks' "],
		["Armed Pack", " ['Packing in Boat',30,'client_fnc_brinkstoboat',player,'AinvPknlMstpSnonWnonDnon_medic_1',[CurrentCursorObject,1],'cg_mission_files\sounds\patdown1.ogg'] spawn client_fnc_dotask ",1]
	],

	[
		[" cursorObject == mobsterVehicle && !isNull mobsterVehicle && player distance endOfmission < 25 && myjob == 'Mobster' && typeof mobsterVehicle == 'acj_Brinks' "],
		["Unarmed Pack", " ['Packing in Boat',300,'client_fnc_brinkstoboat',player,'AinvPknlMstpSnonWnonDnon_medic_1',[CurrentCursorObject,2],'cg_mission_files\sounds\patdown1.ogg'] spawn client_fnc_dotask ",1]
	],

	[
		["player distance theGunner < 500 && myjob == 'Mobster' && typeof mobsterVehicle != 'acj_Brinks' && vehicle player != player"],
		["Finish Boat Run", " [] spawn client_fnc_finishOreDrop;  ",1]
	],

	[
		[" typeof cursorobject == 'land_cg_dexters' && player distance getmarkerpos 'drugdump' < 30 && ((myjob == 'Mafia' && drugcount <= 375) || (myjob == 'Biker' && drugcount2 <= 375)) "],
		["Dump Drugs", " ['Dumping Drugs',60,'client_fnc_dumpDrugs',player,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorObject,'cg_mission_files\sounds\patdown1.ogg'] spawn client_fnc_dotask ",1]
	],
	
	[
		["player distance [1109.4,715.803,0.000686407] < 100 && ((myjob == 'Mafia' && CursorObject == mafiaVehicle) || (myjob == 'Biker' && CursorObject == bikerVehicle)) && vehicle player == player"],
		["Finish Drug Run", " [] spawn client_fnc_finishDrugRun;  ",1]
	],

	[
		["typeof cursorobject == 'Land_buildingsCasino2' && myJob == 'Mobster' "],
		["Dump Ore", " ['Dropping Ore',60,'client_fnc_dumpOre',player,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorObject,'cg_mission_files\sounds\patdown1.ogg'] spawn client_fnc_dotask ",1]
	],

	[
		[" isPlayer CursorObject && CursorObject isKindOf 'Man' && (player distance [4817.36,2111.62,0.00143957] < 5) && (myJob IN ['Mobster']) && player getvariable 'mobster' >= 3 "],
		["Give Contract", " closeDialog 0; createDialog 'casinoConvert_Menu'; ",1]
	],


	[
		[" (( myJob == 'Mafia' && player getvariable 'mafia' >= 2 ) || ( myJob == 'Cop' && player getvariable 'cop' == 5 ) || (player getvariable 'cop' == 10)) && count TracingPlayers > 0 && !imRestrained"],
		["Traced Calls", " [] spawn client_fnc_findTapped; ",1]
	],

	[
		[" myJob IN ['Cop','doc'] && (count(nearestObjects [player,['weaponholder'],3])>0) && count (nearestObjects[player,['land_jf_sheriff_station_01'],100]) > 0"],
		["Seize Objects", " [] spawn client_fnc_seizeObjects; ",1]
	],


	[
		[" isPlayer CursorObject && CursorObject isKindOf 'Man' && myJob == 'Mafia' && CursorObject distance player < 5 && !imrestrained "],
		["Give Loan", " [currentCursorObject] spawn client_fnc_giveLoan; ",1]
	],


	[
		[" isPlayer CursorObject && CursorObject isKindOf 'Man' && myJob == 'Mafia' && !imrestrained "],
		["Open Loans", " [player] remoteexec ['server_fnc_MafiaOwed',2];  ",1]
	],



	[
		[" isPlayer CursorObject && CursorObject isKindOf 'Man' && myJob == 'Mafia' && CursorObject distance player < 5 && !imrestrained "],
		["Urinate", " [currentCursorObject] spawn client_fnc_pee; ",1]
	],

	[
		[" (player == vehicle player) && (isPlayer CursorObject && CursorObject isKindOf 'Man' && vehicle CursorObject == currentCursorObject) && myJob == 'Mobster' "],
		["Rent Casino Room", " [] spawn client_fnc_casinoRoom; ",1]
	],


	[
		[" (vehicle player == player) && (isPlayer CursorObject && CursorObject isKindOf 'Man' && vehicle CursorObject == currentCursorObject) && (( myJob == 'Mafia' && player getvariable 'mafia' >= 2 ) || ( myJob == 'Cop' && player getvariable 'cop' == 5) || ( myJob == 'Cop' && player getvariable 'cop' == 10 )) && !imRestrained"],
		["Track Call $1K", " ['Tracking',5,'client_fnc_tracecall',CurrentCursorObject,'vvv_anim_ticket',CurrentCursorObject,'cg_mission_files\sounds\patdown1.ogg'] spawn client_fnc_dotask ",1]
	],

	[
		[" (vehicle player == player) && (isPlayer CursorObject && CursorObject isKindOf 'Man') && (vehicle CursorObject == currentCursorObject) && ( ( myJob == 'Mafia' && player getvariable 'mafia' >= 2 ) || ( myJob == 'Cop' && player getvariable 'cop' == 5 ) || ( myJob == 'Cop' &&  player getvariable 'cop' == 10 ) ) && !imrestrained"],
		["Track Person $3K", " ['Tracking',5,'client_fnc_trackplayer',CurrentCursorObject,'vvv_anim_ticket',CurrentCursorObject,'cg_mission_files\sounds\patdown1.ogg'] spawn client_fnc_dotask ",1]
	],

	[
		[" (vehicle player == player) &&  (CursorObject isKindOf 'Air' || CursorObject isKindOf 'Car' || CursorObject isKindOf 'Boat') && ( ( myJob == 'Mafia' && player getvariable 'mafia' >= 2 ) || ( myJob == 'Biker' && player getvariable 'biker' >= 2 ) || ( myJob == 'Mobster' && player getvariable 'mobster' >= 2 ) || ( myJob == 'Cop' && player getvariable 'cop' == 5 ) || ( myJob == 'Cop' && player getvariable 'cop' == 10 ) ) && !imrestrained"],
		["Track Vehicle $1K", " ['Tracking',5,'client_fnc_trackvehicle',CurrentCursorObject,'vvv_anim_ticket',CurrentCursorObject,'cg_mission_files\sounds\patdown1.ogg'] spawn client_fnc_dotask ",1]
	],

	[
		[" (vehicle player == player) &&  (CursorObject isKindOf 'Air' || CursorObject isKindOf 'Car' || CursorObject isKindOf 'Boat') && ( ( myJob == 'Mafia' && player getvariable 'mafia' >= 2 ) || ( myJob == 'Biker' && player getvariable 'biker' >= 2 ) || ( myJob == 'Mobster' && player getvariable 'mobster' >= 2 ) ) && ( CursorObject getVariable ['pdCar',''] != '' || CursorObject getVariable ['docCar',''] != '' || CursorObject getVariable ['emsCar',''] != '' ) && !imrestrained "],
		["Untrack Vehicle $10K", " ['Tracking',60,'client_fnc_untrackvehicle',CurrentCursorObject,'vvv_anim_ticket',CurrentCursorObject,'cg_mission_files\sounds\patdown1.ogg'] spawn client_fnc_dotask ",1]
	],

	[
		[" (vehicle player == player) && (CursorObject isKindOf 'Air' || CursorObject isKindOf 'Car' || CursorObject isKindOf 'Boat') && ( ( myJob == 'Mafia' && player getvariable 'mafia' >= 2 ) || ( myJob == 'Cop' && player getvariable 'cop' >= 5 ) ) && count hackedcars < 2  && !imrestrained && CursorObject IN current_cars "],
		["Hack Vehicle $5K", " ['Hacking',60,'client_fnc_hackCar',CurrentCursorObject,'vvv_anim_ticket',CurrentCursorObject,'cg_mission_files\sounds\patdown1.ogg'] spawn client_fnc_dotask ",1]
	],

	[
		[" count hackedcars > 0  && !imrestrained"],
		["Disable Vehicle(s)", " [] spawn client_fnc_hackCarDisplay;  ",1]
	],

	[
		[" ('ToolKit' IN items player) && ( 'SatchelCharge_F' IN ((attachedObjects currentCursorObject) apply {typeOf _x}) || (typeof CursorObject == 'SatchelCharge_F') )  && !imrestrained "],
		["Defuse Bomb", " ['Defusing',5,'client_fnc_IEDdefuse',player,'vvv_anim_ticket',CurrentCursorObject,'cg_mission_files\sounds\patdown1.ogg'] spawn client_fnc_dotask ",1]
	],

	[
		[" CursorObject IN ((bombs) apply {call compile _x}) && !imrestrained "],
		["Pick up Bomb", " ['Picking Up',5,'client_fnc_IEDdefuse',player,'vvv_anim_ticket',CurrentCursorObject,'cg_mission_files\sounds\patdown1.ogg'] spawn client_fnc_dotask ",1]
	],

	[
		[" count bombs > 0 && !imrestrained"],
		["Detonate Bomb(s)", " [] spawn client_fnc_IEDdisplay; ",1]
	],

	[
		[" PLAYER DISTANCE [7483.25,2218.8,0.00143814] < 15 && !imRestrained && !(player getVariable ['surrender', false]) "],
		["Dance", " [0] spawn client_fnc_dance; ",1]
	],

	[
		[" PLAYER DISTANCE [7483.25,2218.8,0.00143814] < 15 && !imRestrained && !(player getVariable ['surrender', false]) "],
		["Stop Dance", " [player, ''] remoteExec ['switchMove'] ",1]
	],

	[
		[" (vehicle player == player) && (isPlayer CursorObject && CursorObject isKindOf 'Man') && ( myJob == 'Mobster' && (player getVariable 'mobster') >= 3 ) && ( count nearestobjects[player,['Land_buildingsCasino2'],50] > 0 ) && !imrestrained"],
		["Check Bank", " [player] remoteExec ['client_fnc_checkBank', CurrentCursorObject]; ",1]
	],

	[
		[" player distance getmarkerpos 'rally_1' < 80 "],
		["Rally Trials", " [] spawn client_fnc_doRally; ",1]
	],

	[
		[" player distance getmarkerpos 'formula1' < 40 "],
		["Race Sign-In", " [player] remoteexec ['server_fnc_raceenter',2] ",1]
	],

	[
		[" player distance getmarkerpos 'formula1' < 40 || player distance getmarkerpos 'rally_1' < 80 "],
		["Fastest Laps", " createdialog 'racetimes'; ",1]
	],

	[
		[" !client_seatbelt && vehicle player != player "],
		["Seatbelt On", "client_seatbelt = true;",1]
	],

	[
		[" client_seatbelt && vehicle player != player "],
		["Seatbelt Off", "client_seatbelt = false;",1]
	],
// healing

	[
		["CursorObject getVariable['dead',FALSE] && (count currentEMS == 0)"],
		["CPR Person", "['Reviving',125,'client_fnc_sendRevive',player,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorObject,'cg_mission_files\sounds\patdown1.ogg'] spawn client_fnc_dotask",1]
	],


	[
		["CursorObject getVariable['dead',FALSE] && (myjob == 'EMS' || myJob == 'Fire')"],
		["Revive Person", "['Reviving',15,'client_fnc_sendRevive',player,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorObject,'cg_mission_files\sounds\patdown1.ogg'] spawn client_fnc_dotask",1]
	],

	[
		[" !imrestrained && count (nearestobjects[player,['Man'],5]-[player]) > 0  && !(player getVariable ['surrender', false])"],
		["Heal Near", "createdialog 'FindPlayer_Menu';",1]
	],

	[
		[" vehicle player == player && !imrestrained && isPlayer CursorObject && CursorObject isKindOf 'Man'  && !(player getVariable ['surrender', false])"],
		["Heal Person", " [CurrentCursorObject] spawn client_fnc_medicUpdater; ",1]
	],

	[
		[" !imrestrained && !(player getVariable ['surrender', false]) "],
		["Heal Self", " [player] spawn client_fnc_medicUpdater; ",1]
	],

	[
		["bedactive"],
		["Drop Bed", "[] spawn client_fnc_dropbed;",1]
	],

	[
		[" typeof cursorobject == 'A3L_HospitalBed2015' && myjob == 'EMS'"],
		["Pickup Bed", "[true] spawn client_fnc_spawnbed;",1]
	],

	[
		[" typeof cursorobject == 'A3L_HospitalBed2015' && myjob == 'EMS'"],
		["Remove Bed", "deletevehicle currentCursorObject;",1]
	],

	[
		[" typeof cursorobject == 'Land_buildingshospital1' && myjob == 'EMS'"],
		["Spawn Bed", "[false] spawn client_fnc_spawnbed;",1]
	],


	[
		[" typeof cursorobject == 'Land_buildingshospital1'"],
		["Full Heal", "[] spawn client_fnc_fullheal; bleedingEffect = 0; ",1]
	],

	[
		[" typeof cursorobject == 'Land_buildingshospital1'"],
		["Sex Change", " if(female) then {female = false; ['You are now male.', true] spawn domsg; } else {female = true; ['You are now female.', true] spawn domsg; }; ['NA','sex',0] call client_fnc_sustain;",1]
	],

	[
		[" typeof cursorobject == 'Land_buildingshospital1'"],
		["Search Tracking", "[] spawn client_fnc_disabletrackingme;",1]
	],

	// vehicles

	[
		[" count (nearestobjects[player,['Land_fs_feed_F'],10]) > 0 "],
		["Fill Vehicle $0-500", "[] spawn client_fnc_fillvehicle;",2]
	],
	
	[
		[" (CursorObject isKindOf 'Car' || CursorObject isKindOf 'AIR' || CursorObject isKindOf 'BOAT') && ('np_FuelCan' IN (magazines player)) "],
		["Fill Vehicle", "[CurrentCursorObject] spawn client_fnc_fuelcan;",2]
	],

	[
		["count attachedObjects player > 0 && attachedcar"],
		["Drop Vehicle", " [] spawn client_fnc_detach; ",2]
	],

	[
		[" !(player getVariable ['surrender',false]) && !imrestrained && vehicle player == player "],
		["Surrender", " [] spawn client_fnc_surrender; ",2]
	],
	
	[
		[" player getVariable ['surrender', false] && !imrestrained && vehicle player == player"],
		["Surrender", " player setVariable ['surrender', nil, false]; ",2]
	],

	[
		["CursorObject in current_cars && myjob IN ['Cop','Fire','EMS'] && !imrestrained && count (crew currentCursorObject) > 0 "],
		["Pull Out People", " ['Pulling Out Players',8,'client_fnc_pulloutplayers',player,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorObject,'cg_mission_files\sounds\patdown1.ogg'] spawn client_fnc_dotask ",2]
	],

	[
		["myjob == 'towtruck' && (CursorObject isKindOf 'Car' || CursorObject isKindOf 'AIR' || CursorObject isKindOf 'BOAT' || CursorObject isKindOf 'SHIP' || CursorObject isKindOf 'TANK') && ((getpos player) distance [7603.34,6311.1,0.00143814] < 30) && !(CursorObject IN current_cars) "],
		["Impound Vehicle", " ['Impounding Vehicle',5,'client_fnc_impoundVehicle',player,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorObject,'cg_mission_files\sounds\repair.ogg'] spawn client_fnc_dotask ",2]
	],

	[
		["myjob IN ['Cop','EMS','doc'] && (CursorObject isKindOf 'Car' || CursorObject isKindOf 'AIR' || CursorObject isKindOf 'BOAT' || CursorObject isKindOf 'SHIP' || CursorObject isKindOf 'TANK') && count currenttowtruckdrivers > 0"],
		["Request Impound", " ['Impounding Vehicle',3,'client_fnc_impoundVehicle',player,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorObject,'cg_mission_files\sounds\repair.ogg'] spawn client_fnc_dotask ",2]
	],

	[
		["myjob IN ['Cop','EMS','doc'] && (CursorObject isKindOf 'Car' || CursorObject isKindOf 'AIR' || CursorObject isKindOf 'BOAT' || CursorObject isKindOf 'SHIP' || CursorObject isKindOf 'TANK') && count currenttowtruckdrivers > 0"],
		["Impound Vehicle", " ['Impounding Vehicle',300,'client_fnc_impoundVehicle',player,'AinvPknlMstpSnonWnonDnon_medic_1',[CurrentCursorObject,1],'cg_mission_files\sounds\repair.ogg'] spawn client_fnc_dotask ",2]
	],

	[
		["myjob IN ['Cop','EMS','doc'] && (CursorObject isKindOf 'Car' || CursorObject isKindOf 'AIR' || CursorObject isKindOf 'BOAT' || CursorObject isKindOf 'SHIP' || CursorObject isKindOf 'TANK') && count currenttowtruckdrivers == 0"],
		["Impound Vehicle", " ['Impounding Vehicle',30,'client_fnc_impoundVehicle',player,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorObject,'cg_mission_files\sounds\repair.ogg'] spawn client_fnc_dotask ",2]
	],

	[
		["(getpos player) distance [7604.7,6315.58,0.00143814] < 40 && player getvariable 'Mafia' > 0 "],
		["Sell Vehicle", " ['Selling Vehicle',60,'client_fnc_sellVehicle',player,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorObject,'cg_mission_files\sounds\repair.ogg'] spawn client_fnc_dotask ",2]
	],

	[
		["(CursorObject isKindOf 'Car' || CursorObject isKindOf 'Air' || CursorObject isKindOf 'Boat' || CursorObject isKindOf 'Ship') && (myJob != 'Repairman' || ( myJob == 'Repairman' && (CursorObject IN current_cars) ) ) && ('CG_wheel' in magazines player || 'CG_engine' in magazines player)"],
		["Repair Vehicle", "['Repairing',20,'client_fnc_repair',CurrentCursorObject,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorObject,'cg_sndimg\sounds\repair.ogg'] spawn client_fnc_dotask",2]
	],

	[
		["(CursorObject isKindOf 'Car' || CursorObject isKindOf 'Air' || CursorObject isKindOf 'Boat' || CursorObject isKindOf 'Ship') && myJob == 'Repairman' && !(CursorObject IN current_cars) "],
		["Repair Vehicle", "['Repairing',5,'client_fnc_repair',CurrentCursorObject,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorObject,'cg_sndimg\sounds\repair.ogg'] spawn client_fnc_dotask",2]
	],

	[
		[" CursorObject isKindOf 'Car' "],
		["Steal Rims", "['Stealing',100,'client_fnc_stealRims',CurrentCursorObject,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorObject,'cg_sndimg\sounds\repair.ogg'] spawn client_fnc_dotask",2]
	],

	[
		["(vehicle player) == player && CursorObject in Current_Cars && (CursorObject getVariable['salecheck',FALSE]) "],
		["Stop Selling", "CursorObject setvariable ['sale',nil,true]; CursorObject setvariable ['salecheck',nil,true];",2]
	],

	[
		["(vehicle player) == player && count nearestobjects[player,['Land_ModernShowroom'],50] > 0 && CursorObject in Current_Cars && !(CursorObject getVariable['salecheck',FALSE]) "],
		["Sell Vehicle", "[] call Client_fnc_AuctionDialog",2]
	],

	[
		["(vehicle player) == player && count nearestobjects[player,['Land_ModernShowroom'],50] > 0 && (CursorObject getVariable['salecheck',FALSE])"],
		["Vehicle Price", "[] call Client_fnc_AuctionCheckPrice",2]
	],

	[
		["(vehicle player) == player && count nearestobjects[player,['Land_ModernShowroom'],50] > 0 && (CursorObject getVariable['salecheck',FALSE]) && !(CursorObject IN current_cars)"],
		["Purchase Vehicle", "[] call Client_fnc_AuctionPurchaseCar",2]
	],

	[
		["(vehicle player) == player && CursorObject in Current_Cars && !imrestrained && !(player getVariable ['surrender', false])"],
		["Use Key", "[CurrentCursorObject] call Client_fnc_useKey",2]
	],

	[
		["(vehicle player) in Current_Cars && !imrestrained && !(player getVariable ['surrender', false])"],
		["Use Key", "[vehicle player] call Client_fnc_useKey",2]
	],	

	[
		[" (CursorObject isKindOf 'Air' || CursorObject isKindOf 'Car' || CursorObject isKindOf 'Boat') && vectorUp CursorObject select 2 < 0.9 && CursorObject in current_cars && !imrestrained"],
		["Flip car", " CursorObject setVectorUp [0,0,1]; CursorObject setPosATL [(getPosATL currentCursorObject) select 0, (getPosATL currentCursorObject) select 1, ((getPosATL currentCursorObject) select 2) + 1]; ",2]
	],

	[
		[" (CursorObject isKindOf 'Car' || CursorObject isKindOf 'Ship') && player distance CursorObject < 11 && CursorObject in current_cars && !imrestrained"],
		["Push Vehicle", "[] spawn Client_fnc_pushveh",2]
	],
	
	[
		[" (CursorObject isKindOf 'Air' || CursorObject isKindOf 'Car') && CursorObject in Current_Cars && ( (myhouse distance getpos player < 50 || count (nearestterrainobjects[player,['BUILDING'],50] select {str _x find 'embarcadero' > -1}) > 0 || count (nearestobjects[player,['Land_Hangar_F'],50]) > 0 || count (nearestterrainobjects[player,['BUILDING'],50] select {str _x find 'taller' > -1}) > 0) || (myJob IN ['Cop','doc'] && count (nearestObjects[player,['land_jf_sheriff_station_01'],50]) > 0 ) || (myJob == 'EMS' && count (nearestObjects[player,['Land_buildingsfiredept1','Land_buildingshospital1'],50]) > 0) || (myJob == 'Mafia' && count (nearestObjects[player,['Land_em_mansion_01'],50]) > 0) || (myJob == 'Biker' && count (nearestObjects[player,['Land_buildingsNightclub2'],50]) > 0) || (myJob == 'Mobster' && count (nearestObjects[player,['Land_buildingsCasino2'],50]) > 0) ) && !imrestrained"],
		["Store Vehicle", "['Storing Vehicle',5, 'Client_fnc_storeCar',player,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorObject,'cg_sndimg\sounds\repair.ogg'] spawn client_fnc_dotask",2]
	],
	
	[
		[" (CursorObject isKindOf 'Air' || CursorObject isKindOf 'Car') && CursorObject in Current_Cars && ( count (CursorObject getvariable ['information',[]]) == 0 && myJob != 'none' ) && !imrestrained"],
		["Store Vehicle", "['Storing Vehicle',5, 'Client_fnc_storeCar',player,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorObject,'cg_sndimg\sounds\repair.ogg'] spawn client_fnc_dotask",2]
	],

	[
		[" (CursorObject isKindOf 'Boat' || CursorObject isKindOf 'Ship') && CursorObject in Current_Cars && !imrestrained && count (nearestterrainobjects[player,['BUILDING'],50] select {str _x find 'embarcadero' > -1}) > 0  "],
		["Store Boat", "['Storing Vehicle',25, 'Client_fnc_storeCar',player,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorObject,'cg_sndimg\sounds\repair.ogg'] spawn client_fnc_dotask",2]
	],




//furniture
	[
		["player distance getpos CursorObject < 20 && CursorObject IN mychairs "],
		["Spin 90", " _dir = getdir currentCursorObject; CursorObject setdir (_dir + 90); " ,2]
	],

	[
		[" (player distance myoffice < 25 || (player distance myhouse < 25 && player getVariable 'houselevel' > 1 )) && count mychairs > 0 "],
		["Remove All Furniture", "  [0] spawn client_fnc_spawnfurniture; attachedfurniture = false; ",2]
	],


	[
		["player distance getpos CursorObject < 20 && CursorObject IN mychairs "],
		["Remove Furniture", " _pia = mychairs FIND currentCursorObject; mychairs DELETEAT _pia; deletevehicle currentCursorObject; ",2]
	],

	[
		["player distance getpos CursorObject < 20 && CursorObject IN mychairs "],
		["Pickup Furniture", " fuckingcouch = currentCursorObject; fuckingcouch attachto [player,[0,1.8,2]]; attachedfurniture = true; ",2]
	],

	[
		["(player distance myoffice < 25 || (player distance myhouse < 25 && player getVariable 'houselevel' > 1 )) && attachedfurniture "],
		["Place Furniture", " [2] spawn client_fnc_spawnfurniture; attachedfurniture = false; ",2]
	],

	[
		["(player distance myoffice < 25 || (player distance myhouse < 25 && player getVariable 'houselevel' > 1 )) && player distance getpos CursorObject < 20 && !attachedfurniture "],
		["Pick Furniture", " createdialog 'placefurniture' ",2]
	],

	[
		[" attachedbarrier "],
		["Place Barrier", " [] spawn client_fnc_placebarrier; ",2]
	],

	[
		[" !isNil{CursorObject getVariable 'evidenceInformation'} && myJob == 'Cop' && player IN currentDetectives"],
		["Identify Evidence", " [CurrentCursorObject] spawn client_fnc_evidence;  ",2]
	],

	[
		[" count nearestObjects[player,['plp_up_WoodBarrierLongPolice','plp_up_WoodBarrierShortPoliceLightsOn','plp_up_TrafficConeOrange','plp_up_WoodBarrierLongRed','plp_up_WoodBarrierShortRedLightsOn','plp_up_TrafficConeRed','plp_up_MetalFenceGrey'],5] > 0 "],
		["Pickup Barrier", " [] spawn client_fnc_pickupbarrier ",2]
	],

	[
		["isPlayer CursorObject && CursorObject isKindOf 'Man' && CursorObject == vehicle CursorObject && myJob IN ['Cop','doc','Mobster','Legal','EMS'] "],
		["Grant Licenses", " ['Granting License',6,'client_fnc_grantlicense',CurrentCursorObject,'vvv_anim_ticket',CurrentCursorObject,'cg_mission_files\sounds\patdown1.ogg'] spawn client_fnc_dotask ",2]
	],
	
	[
		["isPlayer CursorObject && CursorObject isKindOf 'Man' && CursorObject == vehicle CursorObject && myJob IN ['Cop','doc','Mobster','Legal','EMS']"],
		["Revoke Licenses", " ['Revoking',6,'client_fnc_revokelicense',CurrentCursorObject,'vvv_anim_ticket',CurrentCursorObject,'cg_mission_files\sounds\patdown1.ogg'] spawn client_fnc_dotask ",2]
	],

	[
		[" isPlayer CursorObject && CursorObject isKindOf 'Man' "],
		["Give ID", " ['Giving ID',3,'client_fnc_giveLicense',CurrentCursorObject,'vvv_anim_ticket',1,'cg_mission_files\sounds\patdown1.ogg'] spawn client_fnc_dotask ",2]
	],

	[
		[" !imrestrained && !(isNil 'getLicensePerson') "],
		["View ID", "  [format['%1', getLicensePerson], true] spawn domsg; getLicensePerson = nil; ",2]
	],

	[
		[" isPlayer CursorObject && CursorObject isKindOf 'Man' && !imrestrained && myJob IN ['Cop','doc','EMS'] && count (nearestObjects[player,['land_jf_sheriff_station_01','Land_buildingsfiredept1','Land_buildingshospital1'],100]) > 0"],
		["Identify Person", " ['Identifying Person',15,'client_fnc_getName',CurrentCursorObject,'AinvPknlMstpSnonWnonDnon_medic_1',player,'cg_mission_files\sounds\patdown1.ogg',CurrentCursorObject] spawn client_fnc_dotask     ",2]
	],

	[
		[" myJob IN ['Cop','EMS'] && isPlayer CursorObject && CursorObject isKindOf 'Man' && !imrestrained"],
		["Intoxication", " ['Checking Intoxication',5,'client_fnc_sendIntox',CurrentCursorObject,'AinvPknlMstpSnonWnonDnon_medic_1',player,'cg_mission_files\sounds\patdown1.ogg',CurrentCursorObject] spawn client_fnc_dotask ",2]
	],

	[
		[" myJob IN ['Cop'] && CursorObject isKindOf 'Car' && !imrestrained && !isNil{CursorObject getVariable 'ivory_windowtint'}"],
		["Tint Percent", " ['Getting Tint Percentage',5,'client_fnc_getTint',CurrentCursorObject,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorObject,'cg_mission_files\sounds\patdown1.ogg'] spawn client_fnc_dotask   ",2]
	],

	[
		[" (myJob IN ['Cop','doc','DA'] || (myJob == 'Legal' && player getVariable 'Legal' > 5)) && isPlayer CursorObject && CursorObject isKindOf 'Man' && CursorObject == vehicle CursorObject && getpos player distance [8242.13,3019.17,0] < 150 && !imrestrained"],
		["Send To Jail", " createdialog 'jailprocess';",2]
	],

	[
		[" (myJob IN ['Cop','doc','DA'] || (myJob == 'Legal' && player getVariable 'Legal' > 5)) && isPlayer CursorObject && CursorObject isKindOf 'Man' && CursorObject == vehicle CursorObject && count (nearestObjects[player,['land_jf_sheriff_station_01'],100]) > 0 && ((animationstate CurrentCursorObject) == 'amovpercmstpsnonwnondnon_amovpercmstpssurwnondnon' || (animationstate CurrentCursorObject) == 'Incapacitated' || (animationstate CurrentCursorObject) == 'AmovPercMstpSnonWnonDnon_Ease' || (animationstate CurrentCursorObject) == 'Acts_AidlPsitMstpSsurWnonDnon_loop') && !imrestrained"],
		["Set Bail", " createDialog 'Bail_Menu'; ",2]
	],

	[
		[" count acceptBail > 0 "],
		["Accept Bail", " [true] spawn client_fnc_acceptBail ",2]
	],

	[
		[" count acceptBail > 0 "],
		["Deny Bail", " [false] spawn client_fnc_acceptBail ",2]
	],

	[
		[" myJob == 'Legal' && player getVariable 'Legal' > 5 && isPlayer CursorObject && CursorObject isKindOf 'Man' && CursorObject == vehicle CursorObject && !imrestrained"],
		["Give Back Bail", " [currentCursorObject] spawn client_fnc_removeBail; ",2]
	],

	[
		[" myJob == 'Legal' && player getVariable 'Legal' > 5 && isPlayer CursorObject && CursorObject isKindOf 'Man' && CursorObject == vehicle CursorObject && !imrestrained"],
		["Close Bail", " [currentCursorObject] spawn client_fnc_closeBail; ",2]
	],

	[
		[" myJob IN ['Cop','doc','DA'] && isPlayer CursorObject && CursorObject isKindOf 'Man' && CursorObject == vehicle CursorObject && ((animationstate CurrentCursorObject) == 'amovpercmstpsnonwnondnon_amovpercmstpssurwnondnon' || (animationstate CurrentCursorObject) == 'Incapacitated' || (animationstate CurrentCursorObject) == 'AmovPercMstpSnonWnonDnon_Ease' || (animationstate CurrentCursorObject) == 'Acts_AidlPsitMstpSsurWnonDnon_loop') && !imrestrained "],
		["Log Arrest", " createdialog 'insertPBA'; ",2]
	],

	[
		[" (myJob IN ['Cop','doc','DA'] || (myJob == 'Legal' && player getVariable 'Legal' > 5)) && isPlayer CursorObject && CursorObject isKindOf 'Man' && CursorObject == vehicle CursorObject && getpos player distance [5556.2,6291.29,0.00143433] < 150 && !imrestrained"],
		["Send To Prison", " createdialog 'jailprocess';",2]
	],

	[
		[" (CursorObject getVariable['dead',FALSE]) && isPlayer CursorObject && CursorObject isKindOf 'Man' && !imrestrained"],
		["Check Pulse", " ['Checking Pulse',3,'client_fnc_checkPulse',CurrentCursorObject,'AinvPknlMstpSnonWnonDnon_medic_1',player,'cg_mission_files\sounds\patdown1.ogg',CurrentCursorObject] spawn client_fnc_dotask ",2]
	],

	[
		["!(CursorObject getVariable['dead',FALSE]) && isPlayer CursorObject && CursorObject isKindOf 'Man' && (animationstate CurrentCursorObject) == 'amovpercmstpsnonwnondnon_amovpercmstpssurwnondnon' || (animationstate CurrentCursorObject) == 'Incapacitated' || (animationstate CurrentCursorObject) == 'AmovPercMstpSnonWnonDnon_Ease' || (animationstate CurrentCursorObject) == 'Acts_AidlPsitMstpSsurWnonDnon_loop' && !imrestrained"],
		["Strip Search Person", " ['Strip Searching Person',30,'client_fnc_startpatdown',CurrentCursorObject,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorObject,'cg_mission_files\sounds\patdown1.ogg'] spawn client_fnc_dotask ",2]
	],

	[
		[" (myJob IN ['Cop','doc','Biker','Mobster','Mafia']) && isPlayer CursorObject && CursorObject isKindOf 'Man' && CursorObject == vehicle CursorObject && !imrestrained"],
		["Frisk Person", " ['Frisking Person',5,'client_fnc_frisk',CurrentCursorObject,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorObject,'cg_mission_files\sounds\patdown1.ogg'] spawn client_fnc_dotask ",2]
	],


	[
		["(isPlayer CursorObject && CursorObject isKindOf 'Man') && ((animationstate CurrentCursorObject) == 'amovpercmstpsnonwnondnon_amovpercmstpssurwnondnon' || (animationstate CurrentCursorObject) == 'Incapacitated' || (animationstate CurrentCursorObject) == 'AmovPercMstpSnonWnonDnon_Ease' || (animationstate CurrentCursorObject) == 'Acts_AidlPsitMstpSsurWnonDnon_loop') && !imrestrained "],
		["Take Money", " ['Taking Money',10,'client_fnc_takePlayerMoney',CurrentCursorObject,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorObject,'cg_mission_files\sounds\blindfold.ogg'] spawn client_fnc_dotask",2]
	],

	/*
	[
		["( !(CursorObject getVariable['dead',FALSE]) && isPlayer CursorObject && CursorObject isKindOf 'Man') && ((animationstate CurrentCursorObject) == 'incapacitated' || (animationstate CurrentCursorObject) == 'deadstate' || (animationstate CurrentCursorObject) == 'amovpercmstpssurwnondnon' || (animationstate CurrentCursorObject) == 'amovpercmstpsnonwnondnon_amovpercmstpssurwnondnon') && !imrestrained"],
		["Restrain", " ['Restraining',3,'client_fnc_restrain',CurrentCursorObject,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorObject,'cg_mission_files\sounds\handcuff.ogg'] spawn client_fnc_dotask",2]
	],
	*/
	[
		["( !(CursorObject getVariable['dead',FALSE]) && isPlayer CursorObject && CursorObject isKindOf 'Man') && cursorObject getVariable 'surrender' == true && !imrestrained"],
		["Restrain Sitting", " ['Restraining',3,'client_fnc_restrain',CurrentCursorObject,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorObject,'cg_mission_files\sounds\handcuff.ogg'] spawn client_fnc_dotask",2]
	],
	[
		["( !(CursorObject getVariable['dead',FALSE]) && isPlayer CursorObject && CursorObject isKindOf 'Man') && cursorObject getVariable 'surrender' == true && !imrestrained"],
		["Restrain in front", " ['Restraining',3,'client_fnc_restrainfront',CurrentCursorObject,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorObject,'cg_mission_files\sounds\handcuff.ogg'] spawn client_fnc_dotask",2]
	],


	[
		[" myJob IN ['Cop','doc'] && isPlayer CursorObject && CursorObject isKindOf 'Man' && ((animationstate CurrentCursorObject) == 'Acts_AidlPsitMstpSsurWnonDnon_loop' || (animationstate CurrentCursorObject) == 'amovpercmstpssurwnondnon' || (animationstate CurrentCursorObject) == 'amovpercmstpsnonwnondnon_amovpercmstpssurwnondnon') && !imrestrained"],
		["Unrestrain", " ['Unrestraining',3,'client_fnc_unrestrain',CurrentCursorObject,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorObject,'cg_mission_files\sounds\handcuff.ogg'] spawn client_fnc_dotask",2]
	],

	[
		[" !(myJob IN ['Cop','doc']) && isPlayer CursorObject && CursorObject isKindOf 'Man' && ((animationstate CurrentCursorObject) == 'Acts_AidlPsitMstpSsurWnonDnon_loop' || (animationstate CurrentCursorObject) == 'amovpercmstpssurwnondnon' || (animationstate CurrentCursorObject) == 'amovpercmstpsnonwnondnon_amovpercmstpssurwnondnon') && !imrestrained"],
		["Unrestrain", " ['Unrestraining',35,'client_fnc_unrestrain',CurrentCursorObject,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorObject,'cg_mission_files\sounds\handcuff.ogg'] spawn client_fnc_dotask",2]
	],


	[
		[" isPlayer CursorObject && CursorObject isKindOf 'Man'", "(headgear CurrentCursorObject) != 'mgsr_headbag', (animationstate CurrentCursorObject) == 'amovpercmstpsnonwnondnon_amovpercmstpssurwnondnon' || (animationstate CurrentCursorObject) == 'Incapacitated' || (animationstate CurrentCursorObject) == 'AmovPercMstpSnonWnonDnon_Ease' || (animationstate CurrentCursorObject) == 'Acts_AidlPsitMstpSsurWnonDnon_loop' && !imrestrained"],
		["Blindfold", " ['Blindfolding',5,'client_fnc_blindfold',CurrentCursorObject,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorObject,'cg_sndimg\sounds\blindfold.ogg'] spawn client_fnc_dotask ",2]
	],

	[
		[" isPlayer CursorObject && CursorObject isKindOf 'Man' && !imrestrained", "(headgear CurrentCursorObject) == 'mgsr_headbag' "],
		["Remove Blindfold", " ['Removing Blindfold',5,'client_fnc_unblindfold',CurrentCursorObject,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorObject,'cg_sndimg\sounds\blindfold.ogg'] spawn client_fnc_dotask",2]
	],

	[
		[" isPlayer CursorObject && CursorObject isKindOf 'Man'", "(animationstate CurrentCursorObject) == 'amovpercmstpsnonwnondnon_amovpercmstpssurwnondnon' || (animationstate CurrentCursorObject) == 'Incapacitated' || (animationstate CurrentCursorObject) == 'AmovPercMstpSnonWnonDnon_Ease' || (animationstate CurrentCursorObject) == 'Acts_AidlPsitMstpSsurWnonDnon_loop' && !imrestrained"],
		["Throw In Car", " ['Throwing in Car',10,'client_fnc_putincar',CurrentCursorObject,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorObject,'cg_mission_files\sounds\patdown1.ogg'] spawn client_fnc_dotask ",2]
	],

	[
		[" (CursorObject getVariable['dead',FALSE]) && isPlayer CursorObject && CursorObject isKindOf 'Man' && !imrestrained && !attachedplayer && count (attachedobjects currentCursorObject) == 0 "],
		["Drag Body", " ['Grabbing Body',15,'client_fnc_grabBody',CurrentCursorObject,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorObject,'cg_mission_files\sounds\patdown1.ogg'] spawn client_fnc_dotask ",2]
	],

	[
		[" isPlayer CursorObject && CursorObject isKindOf 'Man'", "(animationstate CurrentCursorObject) == 'amovpercmstpsnonwnondnon_amovpercmstpssurwnondnon' || (animationstate CurrentCursorObject) == 'Incapacitated' || (animationstate CurrentCursorObject) == 'AmovPercMstpSnonWnonDnon_Ease' || (animationstate CurrentCursorObject) == 'Acts_AidlPsitMstpSsurWnonDnon_loop' && !imrestrained"],
		["Escort", " ['Starting Escort',5,'client_fnc_attach',CurrentCursorObject,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorObject,'cg_mission_files\sounds\patdown1.ogg'] spawn client_fnc_dotask ",2]
	],

	[
		["attachedplayer && !imrestrained"],
		["Stop Escort", " ['Stopping Escort',5,'client_fnc_detach',player,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorObject,'cg_mission_files\sounds\patdown1.ogg'] spawn client_fnc_dotask ",2]
	],

	[
		["isPlayer CursorObject && CursorObject isKindOf 'Man' && bankrobber == 1 && !imrestrained"],
		["Give Cash", "[CurrentCursorObject] call Client_fnc_giveCash",2]
	],

	[
		["isPlayer CursorObject && CursorObject isKindOf 'Man' && (myjob == 'doc' || myjob == 'Biker' || myjob == 'Mobster' || myjob == 'Mafia' || myJob IN ['Cop','doc'] || myjob == 'EMS' || myjob == 'Legal' || myjob == 'DA')"],
		["Promote User", "[player, myJob] remoteExec ['client_fnc_promotionFirst', CurrentCursorObject]; ",2]
	],

	[
		[" myJob IN ['Cop','doc'] && isPlayer CursorObject && CursorObject isKindOf 'Man' && !imrestrained"],
		["Ticket Player", " createdialog 'np_ticketpolice'; ",2]
	],




//shops and offices garages etc

	//private shops
	[
		["player distance myshop < 3 && !imrestrained"],
		["Shop Inventory", "['Your crate will automatically despawn in 5 minutes - people can not use your shop while it is out!', true] spawn domsg; [player] remoteExec ['server_fnc_retreiveStore',2] ",3]
	],

	[
		["player distance myshop < 3 && !imrestrained"],
		["Shop Prices", "[shopcontent,'start'] call client_fnc_updatePrices;",3]
	],

	[
		["(typeof CursorObject) IN ['Land_buildingCommercial1','Land_buildingCommercial2'] && !imrestrained"],
		["Browse Shop", "[typeof CursorObject,player] remoteExec ['server_fnc_retreiveStoreShopper',2]",3]
	],

	[
		["(typeof CursorObject == 'Land_buildingApartments2A' && player distance getpos CursorObject < 20 && (myJob IN ['Legal','DA'] || 20 IN licenseArray) && player distance [8186.91,2862.51,0.00143814] < 100) && myoffice isEqualTo [0,0,0]"],
		["Rent Office $500", " createdialog 'rentshop'",3]
	],

	[
		["(typeof CursorObject == 'Land_buildingApartments2A' && player distance getpos CursorObject < 20 && player distance [8186.91,2862.51,0.00143814] > 200) && !imrestrained && myoffice isEqualTo [0,0,0]"],
		["Rent Office $500", " createdialog 'rentshop' ",3]
	],

	[
		["player distance myoffice < 10 && !(myoffice isEqualTo [0,0,0])"],
		["Close Office", " [myoffice, player] remoteExec['server_fnc_closeOffice',2]  ",3]
	],
	//


	[
		["typeof CursorObject == 'Land_buildingBarbers1' && !imrestrained"],
		["Barber Store", "closedialog 0; createdialog 'HairDresser_Menu'; ['Glasses'] spawn client_fnc_loadStore;",3]
	],

	[
		["typeof CursorObject IN ['Land_ModernShowroom'] && !imrestrained"],
		["Car Shop", "createdialog 'buycar';",3]
	],

	[ 
		["str CursorObject find 'hangar' > -1"], 
		["Air Shop", "createdialog 'buycar';",3] 
	],

	[ 
		["str CursorObject find 'embarcadero' > -1"], 
		["Boat Shop", "createdialog 'buycar';",3] 
	],

	[
		["typeof CursorObject IN ['Land_HouseDoubleAL','Land_HouseDoubleAL2','Land_ivory_trailer_04','Land_ivory_trailer_01','Land_ivory_trailer_02','Land_ivory_trailer_03','Land_ivory_trailer_06','Land_ivory_trailer_05','Land_Ranch_DED_Ranch_02_F','Land_Ranch_DED_Ranch_01_F','Land_HouseC_R','Land_HouseC1_L','Land_HouseA1_L','Land_HouseB1_L']"],
		["House Light", " [CursorObject] spawn client_fnc_houselight;",3]
	],

	[
		["player distance myhouse < 10"],
		["Dirty Money Stash", " [] call Client_fnc_openStash; ",3]
	],
	
	[
		["player distance myhouse < 10 || typeof CursorObject IN ['Land_PostB']"],
		["Check Mail", "[] spawn client_fnc_openMail",3]
	],

	[
		["str CursorObject find 'mailboxnorth' > -1"],
		["Post Mail", "createdialog 'client_findMail'",3]
	],

	[
		["CursorObject == fishTrader"],
		["Rare Fish Sales", "closedialog 0; createdialog 'RareFish_Menu'; ['rarefish'] spawn client_fnc_LoadStore;",3]
	],

	[
		["CursorObject == fishTrader"],
		["Trade Rare Pelt", "closedialog 0; [] spawn client_fnc_rarePelt;",3]
	],

	[
		["typeof CursorObject IN ['Land_Coffee_DED_Coffee_02_F','Land_Coffee_DED_Coffee_01_F'] && !(CursorObject getVariable['robbing',FALSE]) "],
		["Rob Store", "closedialog 0; [] spawn client_fnc_robberyStore;",3]
	],

	[
		["typeof CursorObject IN ['Land_Coffee_DED_Coffee_02_F','Land_Coffee_DED_Coffee_01_F']"],
		["Clothing Store", "closedialog 0; createdialog 'Clothing_Menu'; ['clothing'] spawn client_fnc_LoadStore;",3]
	],

	[
		["typeof CursorObject == 'Land_buildingGunStore1'"],
		["Gun Store", "closedialog 0; createdialog 'gun_menu'; ['gunstore'] spawn client_fnc_LoadStore;",3]
	],

	[
		["typeof CursorObject == 'land_cg_dunkinbronuts'"],
		["Donut Menu", "closedialog 0; createdialog 'food_menu'; ['donuts'] spawn client_fnc_LoadStore;",3]
	],

	[
		["typeof CursorObject == 'land_cg_dexters'"],
		["Pizza Menu", "closedialog 0; createdialog 'food_menu'; ['pizza'] spawn client_fnc_LoadStore;",3]
	],

	[
		["typeof CursorObject == 'Land_Market_DED_Market_01_F'"],
		["Mc Dildos", "closedialog 0; createdialog 'food_menu'; ['mcdonalds'] spawn client_fnc_LoadStore;",3]
	],

	[
		["str penis find 'carrito' > -1 || str penis find 'modelos6ki' > -1"],
		["Fast Food", "closedialog 0; createdialog 'food_menu'; ['hotdogs'] spawn client_fnc_LoadStore;",3]
	],

	[
		["typeof CursorObject IN ['Land_buildingBar1','Land_Pub_A'] "],
		["Bar Store", "closedialog 0; createdialog 'food_menu'; ['bar'] spawn client_fnc_LoadStore;",3]
	],

	[
		[" getpos player distance [7481.77,2223.85,0.00143814] < 5"],
		["Nightclub Bar", "closedialog 0; createdialog 'food_menu'; ['nbar'] spawn client_fnc_LoadStore;",3]
	],

	[
		[" casinoOpen && getpos player distance [6819.29,4619.24,0.00144005] < 5"],
		["Casino Bar", "closedialog 0; createdialog 'food_menu'; ['bar'] spawn client_fnc_LoadStore;",3]
	],

	[
		["typeof CursorObject IN ['Land_Coffee_DED_Coffee_02_F','Land_Coffee_DED_Coffee_01_F','Land_Shop_DED_Shop_01_F','Land_Shop_DED_Shop_02_F']"],
		["General Store", "closedialog 0; createdialog 'GeneralStore_Menu'; ['general'] spawn client_fnc_LoadStore;",3]
	],


	[ 
		["(getpos player) distance [1049.88,3657.15,0.00143814] < 30"], 
		["Impound Lot", "[CurrentCursorObject] call Client_fnc_openCarYard",3] 
	],

	[ 
		["str CursorObject find 'otros' > -1 || str CursorObject find 'garaje' > -1 || str cursorObject find 'tallerdepinturaabandonado' > -1"], 
		["Customize Vehicle", "createdialog 'upgradecar' ",3] 
	],


	[ 
		["str CursorObject find 'otros' > -1 || str CursorObject find 'garaje' > -1 || str CursorObject find 'tallerdepinturaabandonado' > -1"], 
		["Upgrade Vehicle", "[] spawn client_fnc_carupdate;",3] 
	],

	[
		[" ( (myJob IN ['Cop','doc'] && typeof cursorobject IN ['Land_PoliceStation','Land_ScriptOase_PoliceHeadquarters']) || (myjob == 'EMS' && (typeof cursorobject IN ['Land_buildingsfiredept1','Land_buildingshospital1'])) || (myJob == 'Mafia' && (typeof cursorobject == 'Land_em_mansion_01')) || (myJob == 'Biker' && (typeof cursorobject == 'Land_buildingsNightclub2')) || (myJob == 'Mobster' && (typeof cursorobject == 'Land_buildingsCasino2')) || (( myJob IN ['Cop','doc','EMS'] ) && ( str CursorObject find 'em_heliport' > -1 || str CursorObject find 'embarcadero' > -1 )) || (Mayor && player distance myhouse < 30) || (myJob == 'Legal' && player getVariable 'legal' > 5 && (typeof cursorobject == 'Land_buildingscourthouse1'))) && !imrestrained "],
		["Open Job Garage", "[CursorObject] spawn client_fnc_opengaragepolice;  ",3]
	],

	[ 
		["!attachedcar && (player distance myhouse < 30 || str CursorObject find 'otros' > -1 || str CursorObject find 'garaje' > -1 || str CursorObject find 'tallerdepinturaabandonado' > -1 || str CursorObject find 'hangar' > -1 || str CursorObject find 'embarcadero' > -1) && !imrestrained"], 
		["Open Garage", "[cursorObject] call Client_fnc_openGarage",3] 
	],
	
	[ 
		["!attachedcar && (str CursorObject find 'otros' > -1 || str CursorObject find 'garaje' > -1 || str CursorObject find 'tallerdepinturaabandonado' > -1 || str CursorObject find 'hangar' > -1 || str CursorObject find 'embarcadero' > -1) && !imrestrained"], 
		["Full Repair $1K", " [vehicle player] spawn client_fnc_garageRepair ",3] 
	],
	
	[
		["((player distance (getMarkerPos 'houseUpgrades')) < 30) && !isNull houseinvitation && !imrestrained "],
		["Accept Share House", "[] spawn client_fnc_AcceptShareHouse",3]
	],

	[
		["((player distance (getMarkerPos 'houseUpgrades')) < 30) && !imrestrained "],
		["Reset Share House", "_myguid = getplayeruid player; _theirguid = '0'; _myarray = [_myguid,_theirguid]; _myarray spawn client_fnc_sharehousefinish;",3]
	],
/*
	[
		["player getVariable 'houselevel' == 3 && isPlayer CursorObject && CursorObject isKindOf 'Man' && ((player distance (getMarkerPos 'houseUpgrades')) < 30) && !imrestrained"],
		["Temp Disabled", ',3]
	],
//[player,getplayerUID player] remoteexec ['client_fnc_ShareHouse', currentCursorObject]
*/

	[
		["((player distance (getMarkerPos 'houseUpgrades')) < 30) && player getvariable 'houselevel' < 3"],
		["Upgrade House $225K", "[] spawn client_fnc_UpgradeHouse",3]
	],

	[
		["typeof CursorObject == 'Land_Market_DED_Market_03_F'"],
		["Replace Phone", "closedialog 0; [] call client_fnc_checkPhone; trackedby = [];",3]
	],

	[
		["typeof CursorObject == 'Land_Market_DED_Market_03_F'"],
		["Recharge Phone", "closedialog 0; ['add','battery',200] call client_fnc_sustain;",3]
	],


// jobs / situational

	[
		[" myJob IN ['Cop','DA'] && (( typeof cursorobject IN ['Land_PoliceStation','Land_ScriptOase_PoliceHeadquarters']) || ( vehicle player != player )) && !imrestrained "],
		["Wanted System", "createdialog 'wanted';",4]
	],

	[
		[" myJob IN ['Legal'] && player getVariable 'legal' >= 6 && ( typeof cursorobject IN ['Land_buildingscourthouse1'] ) && ( vehicle player == player ) && !imrestrained "],
		["Court System", "createdialog 'wanted3';",4]
	],

	[
		[" ( typeof cursorobject IN ['Land_buildingscourthouse1'] ) && ( vehicle player == player ) && !imrestrained "],
		["Public Records", "createdialog 'wanted2';",4]
	],

	[
		["(typeof CursorObject IN ['Land_Centrelink','Land_CommonwealthBank','Land_Bank_DED_House_01_F'] || str CursorObject find 'mcl_atm' > -1) && myJob == 'Mobster' && bankrobber == 1 && !imrestrained"],
		["Mobster Bank", "[player] remoteExec['Client_fnc_openMobsterATM',2]",4]
	],

	[
		["(typeof CursorObject IN ['Land_Centrelink','Land_CommonwealthBank','Land_Bank_DED_House_01_F'] || str CursorObject find 'mcl_atm' > -1) && myJob == 'Mafia' && bankrobber == 1 && !imrestrained"],
		["Mafia Bank", "[player] remoteExec['Client_fnc_openMafiaATM',2]",4]
	],

	[
		["(typeof CursorObject IN ['Land_Centrelink','Land_CommonwealthBank','Land_Bank_DED_House_01_F'] || str CursorObject find 'mcl_atm' > -1) && myJob == 'Biker' && bankrobber == 1 && !imrestrained"],
		["Biker Bank", "[player] remoteExec['Client_fnc_openBikerATM',2]",4]
	],

	[
		["(typeof CursorObject IN ['Land_Centrelink','Land_CommonwealthBank','Land_Bank_DED_House_01_F'] || str CursorObject find 'mcl_atm' > -1) && ( Mayor || Psenate || (player getVariable 'legal' == 10) ) && !imrestrained"],
		["Govt Bank", "[player] remoteExec['Client_fnc_openGovtATM',2]",4]
	],

	[
		["(typeof CursorObject IN ['Land_CommonwealthBank','Land_Bank_DED_House_01_F']) && bankrobber == 1 && !imrestrained"],
		["Bank", "[] call Client_fnc_openATM",4]
	],

	[
		["(typeof CursorObject IN ['Land_Centrelink'] || str CursorObject find 'mcl_atm' > -1) && bankrobber == 1 && !imrestrained"],
		["ATM", "[] call Client_fnc_openATM",4]
	],

	[
		["player distance myhouse < 10 && !imrestrained"],
		["Open House Stash", "['Your crate will automatically despawn in 1 minute!', true] spawn domsg; [player] remoteExec ['server_fnc_retreivehouse',2]",4]
	],

	[
		["((myjob == 'Mafia' && typeof CursorObject == 'Land_em_mansion_01' && player getVariable 'Mafia' >= 8) || (myjob == 'Mobster' && typeof cursorobject == 'Land_buildingsCasino2' && player getVariable 'Mobster' >= 8) || (myjob == 'Biker' && typeof cursorobject == 'Land_buildingsNightclub2' && player getVariable 'Biker' >= 8)) && !imrestrained"],
		["Open Gang Stash", "['Your crate will automatically despawn in 1 minute!', true] spawn domsg; [player, myJob] remoteExec ['server_fnc_retreivegang',2]",4]
	],



	[
		["((myjob == 'Cop' && typeof CursorObject == 'Land_em_mansion_01' && player getVariable 'Cop' > 4))"],
		["Raid Gang Stash", "['Your crate will automatically despawn in 1 minute!', true] spawn domsg; [player, ""Mafia""] remoteExec ['server_fnc_retreivegang',2]",4]
	],


	[
		["((myjob == 'Cop' && typeof cursorobject == 'Land_buildingsCasino2' && player getVariable 'Cop' > 4))"],
		["Raid Gang Stash", "['Your crate will automatically despawn in 1 minute!', true] spawn domsg; [player, ""Mobster""] remoteExec ['server_fnc_retreivegang',2]",4]
	],

	[
		["((myjob == 'Cop' && typeof cursorobject == 'Land_buildingsNightclub2' && player getVariable 'Cop'> 4))"],
		["Raid Gang Stash", "['Your crate will automatically despawn in 1 minute!', true] spawn domsg; [player, ""Biker""] remoteExec ['server_fnc_retreivegang',2]",4]
	],


	[
		["(str CursorObject find 'gymbench' > -1 || str CursorObject find 'gymrack' > -1)"],
		["Work Out", "['Doing Workout',60,'client_fnc_workout',player,'AmovPercMstpSnonWnonDnon_exercisePushup',player,''] spawn client_fnc_dotask; ",4]
	],

	[
		["Mayor && player distance myhouse < 25"],
		["Set Taxes", "createdialog 'tax_menu';",4]
	],

	[
		["(Mayor || Psenate) && player distance myhouse < 25"],
		["Pay Govt", " createdialog 'bill_menu'; ",4]
	],

	[
		[" myJob IN ['Mobster'] && (typeof cursorobject IN ['Land_buildingsCasino2']) && player getVariable 'Mobster' >= 8 "],
		["Set Casino Rate", "createdialog 'casinoRate_Menu';",4]
	],

	[
		[" (typeof cursorobject IN ['Land_buildingsCasino2']) && player distance [6780,4608.48,0.00143766] < 5 && (myJob == 'Mobster' && player getVariable 'Mobster' >= 8) "],
		["Open Casino Vault", "[player] remoteExec['Client_fnc_openCasinoVault',2]",4]
	],

	[
		[" vaultrobber && time > vaultTimer "],
		["Rob Casino Vault", " ['Robbing Money',15,'client_fnc_robVault',player,'AinvPknlMstpSnonWnonDnon_medic_1',player,'cg_sndimg\sounds\repair.ogg'] spawn client_fnc_dotask ",4]
	],

	[
		[" !casinoOpen && myJob IN ['Mobster'] && (typeof cursorobject IN ['Land_buildingsCasino2']) && player getVariable 'Mobster' >= 6 "],
		["Open Casino", "[1] remoteExec['server_fnc_openCasino',2];",4]
	],

	[
		[" casinoOpen && myJob IN ['Mobster'] && (typeof cursorobject IN ['Land_buildingsCasino2']) && player getVariable 'Mobster' >= 6 "],
		["Close Casino", "[0] remoteExec['server_fnc_openCasino',2];",4]
	],

	[
		[" myJob IN ['Mobster'] && (typeof cursorobject IN ['Land_buildingsCasino2']) && player getVariable 'Mobster' >= 6 && !lockCasino"],
		["Lock Casino", "[1] call client_fnc_lockCasino;",4]
	],

	[
		[" myJob IN ['Mobster'] && (typeof cursorobject IN ['Land_buildingsCasino2']) && player getVariable 'Mobster' >= 6 && lockCasino"],
		["Unlock Casino", "[0] call client_fnc_lockCasino;",4]
	],

	[
		[" !nightclubOpen && myJob IN ['Biker'] && (typeof cursorobject IN ['Land_buildingsNightclub2']) && player getVariable 'Biker' >= 6 "],
		["Open Nightclub", "[1] remoteExec['server_fnc_openNightclub',2];",4]
	],

	[
		[" nightclubOpen && myJob IN ['Biker'] && (typeof cursorobject IN ['Land_buildingsNightclub2']) && player getVariable 'Biker' >= 6 "],
		["Close Nightclub", "[0] remoteExec['server_fnc_openNightclub',2];",4]
	],

	[
		[" myJob IN ['Biker'] && (typeof cursorobject IN ['Land_buildingsNightclub2']) && player getVariable 'Biker' >= 6 && !lockNightclub"],
		["Lock Nightclub", "[1] call client_fnc_lockNightclub;",4]
	],

	[
		[" myJob IN ['Biker'] && (typeof cursorobject IN ['Land_buildingsNightclub2']) && player getVariable 'Biker' >= 6 && lockNightclub"],
		["Unlock Nightclub", "[0] call client_fnc_lockNightclub;",4]
	],

	[
		["clientarrested"],
		["Time Left", "_time = secondsLeft / 60; [format['You have %1 year(s) remaining.', round(_time)], true] spawn domsg;",4]
	],

	[
		[" !imrestrained  && !(player getVariable ['surrender', false]) "],
		["Wallet", "createdialog 'wallet_Menu'",4]
	],

	[
		["count (player call TFAR_fnc_radiosList) > 0 && !imRestrained && !(player getVariable ['surrender', false])"],
		["Phone", "createdialog 'phoneHUD'",4]
	],

	[
		["str CursorObject find 'cabinatelefonica' > -1 && !callInProgress && !PhonesRinging && !TryingCall && !imrestrained"],
		["Anonymous Call", "[] spawn client_fnc_callMenuPP; ",4]
	],

	[
		["str CursorObject find 'cabinatelefonica' > -1 && !callInProgress && !PhonesRinging && !TryingCall && !imrestrained"],
		["Anonymous Text", " createDialog 'client_findSMSAnon' ",4]
	],


	[
		["!busyPlayer && !imrestrained && !clientarrested && player distance myhouse < 30"],
		["Craft Menu", "createdialog 'client_Craft_Menu'",4]
	],

	[
		[" myJob IN ['Cop'] && !dispatch && (player getvariable 'cop') > 0 "],
		["Sign-in Dispatch", "[player,'Police Dispatch'] spawn client_fnc_jobstart;",4]
	],

	[
		[" myJob IN ['doc'] && !dispatch && (player getvariable 'doc') > 0 "],
		["Sign-in Dispatch", "[player,'Doc Dispatch'] spawn client_fnc_jobstart;",4]
	],

	[
		["myjob == 'EMS' && !dispatch && (player getvariable 'ems') > 0 "],
		["Sign-in Dispatch", "[player,'Medic Dispatch'] spawn client_fnc_jobstart;",4]
	],

	[
		["dispatch"],
		["Sign-out Dispatch", "Dispatch = false; [player] remoteExec ['server_fnc_quitDispatch',2];",4]
	],


	[
		[" (myJob IN ['Cop'] && typeof cursorobject IN ['Land_PoliceStation','Land_ScriptOase_PoliceHeadquarters']) && (player getvariable 'cop') >= 5  "],
		["UAV Terminal", " ['uav'] spawn client_fnc_setGear  ",4]
	],
	
	[
		[" myJob IN ['Legal'] && (player getVariable 'legal' >= 9) && (typeof cursorobject IN ['Land_buildingscourthouse1']) "],
		["Justice Uniform", "['basic'] spawn client_fnc_setGear",4]
	],
	
	[
		[" myJob IN ['Mafia'] && (typeof cursorobject IN ['Land_em_mansion_01']) "],
		["Mafia Uniform", "['basic'] spawn client_fnc_setGear",4]
	],

	[
		[" myJob IN ['Biker'] && (typeof cursorobject IN ['Land_buildingsNightclub2']) "],
		["Biker Uniform", "['basic'] spawn client_fnc_setGear",4]
	],

	[
		[" myJob IN ['Mobster'] && (typeof cursorobject IN ['Land_buildingsCasino2']) "],
		["Mobster Uniform", "['basic'] spawn client_fnc_setGear",4]
	],

	[
		[" myJob IN ['EMS'] && (typeof cursorobject IN ['Land_buildingsfiredept1','Land_buildingshospital1']) "],
		["EMS Gear", "['EMS'] spawn client_fnc_setGear",4]
	],

	[
		[" myJob IN ['EMS'] && (typeof cursorobject IN ['Land_buildingsfiredept1','Land_buildingshospital1']) "],
		["Fire Gear", "['Fire'] spawn client_fnc_setGear",4]
	],


	[
		[" (myJob IN ['Cop','doc'] && typeof cursorobject IN ['Land_PoliceStation','Land_ScriptOase_PoliceHeadquarters']) "],
		["Poncho", " player addVest 'mgsr_poncho_dry_vest'; ",4]
	],

	[
		[" (myJob IN ['Cop'] && typeof cursorobject IN ['Land_PoliceStation','Land_ScriptOase_PoliceHeadquarters']) "],
		["Patrol Gear", "['patrol'] spawn client_fnc_setGear",4]
	],

	[
		[" (myJob IN ['Cop'] && typeof cursorobject IN ['Land_PoliceStation','Land_ScriptOase_PoliceHeadquarters']) "],
		["DTU Gear", "['dtu'] spawn client_fnc_setGear",4]
	],

	[
		[" (myJob IN ['Cop'] && typeof cursorobject IN ['Land_PoliceStation','Land_ScriptOase_PoliceHeadquarters']) "],
		["Marshal Gear", "['marshal'] spawn client_fnc_setGear",4]
	],
	
	[
		[" (myjob IN ['doc'] && typeof cursorobject IN ['Land_PoliceStation','Land_ScriptOase_PoliceHeadquarters']) "],
		["Prison Gear", "['prison'] spawn client_fnc_setGear",4]
	],

	[
		[" myJob IN ['Cop'] && typeof cursorobject IN ['Land_PoliceStation','Land_ScriptOase_PoliceHeadquarters'] && (player getVariable 'cop' == 10 || 10 IN licenseArray || 11 IN licenseArray)"],
		["Scuba Gear", "['water'] spawn client_fnc_setGear",4]
	],

	[
		[" myJob IN ['Cop'] && typeof cursorobject IN ['Land_PoliceStation','Land_ScriptOase_PoliceHeadquarters'] && (player getVariable 'cop' == 10 || 8 IN licenseArray || 9 IN licenseArray)"],
		["SWAT Gear", "['swat'] spawn client_fnc_setGear",4]
	],

	[
		[" myJob IN ['doc'] && typeof cursorobject IN ['Land_PoliceStation','Land_ScriptOase_PoliceHeadquarters'] && (player getVariable 'doc' == 10 || 14 IN licenseArray || 15 IN licenseArray)"],
		["CRT Gear", "['crt'] spawn client_fnc_setGear",4]
	],

	[
		[" myJob == 'EMS' && (typeof cursorobject IN ['Land_buildingsfiredept1','Land_buildingshospital1']) && (player getVariable 'EMS' == 10 || 25 IN licenseArray || 26 IN licenseArray)"],
		["Scuba Gear", "['Mwater'] spawn client_fnc_setGear",4]
	],

	[
		[" myJob IN ['Cop'] && typeof cursorobject IN ['Land_PoliceStation','Land_ScriptOase_PoliceHeadquarters']"],
		["Request Prosecutor", " ['Request sent successfully.', true] spawn domsg;  [currentDA, format['%1 has requested a prosecutor at PD. Text him/her to confirm.',name player], 'Silver Lake'] remoteExec ['server_fnc_sendMessage', 2]; ", 4]
	],

	[
		[" myJob IN ['Cop'] && typeof cursorobject IN ['Land_PoliceStation','Land_ScriptOase_PoliceHeadquarters']"],
		["Request Defender", " ['Request sent successfully.', true] spawn domsg;  [currentPubDefs, format['%1 has requested a public defender at PD. Text him/her to confirm.',name player], 'Silver Lake'] remoteExec ['server_fnc_sendMessage', 2];  ", 4]
	],

	[
		[" myJob IN ['Cop'] && typeof cursorobject IN ['Land_PoliceStation','Land_ScriptOase_PoliceHeadquarters']"],
		["Request Judge", " ['Request sent successfully.', true] spawn domsg; [currentjudges, format['%1 has requested a judge at PD. Text him/her to confirm.',name player], 'Silver Lake'] remoteExec ['server_fnc_sendMessage', 2]; ", 4]
	],

	[
		[" myjob == 'none' && (player getvariable 'doc') > 0 && typeof cursorobject IN ['Land_PoliceStation','Land_ScriptOase_PoliceHeadquarters'] "],
		["Sign-in SO", "[] call client_fnc_setlastsave; [player,'doc'] spawn client_fnc_jobstart;",4]
	],

	[
		[" myjob IN ['doc'] && typeof cursorobject IN ['Land_PoliceStation','Land_ScriptOase_PoliceHeadquarters'] "],
		["Sign-out SO", "[1] call client_fnc_jobEnd",4]
	],

	[
		[" myjob == 'none' && (player getvariable 'cop') > 0 && typeof cursorobject IN ['Land_PoliceStation','Land_ScriptOase_PoliceHeadquarters']"],
		["Sign-in PD", "[] call client_fnc_setlastsave; [player,'Cop'] spawn client_fnc_jobstart;",4]
	],

	[
		[" myjob IN ['Cop'] && typeof cursorobject IN ['Land_PoliceStation','Land_ScriptOase_PoliceHeadquarters']"],
		["Sign-out PD", "[1] call client_fnc_jobEnd",4]
	],
	[
		[" myjob == 'none' && (player getvariable 'ems') > 0 && (typeof cursorobject IN ['Land_buildingsfiredept1','Land_buildingshospital1']) "],
		["Sign-in FD", "[] call client_fnc_setlastsave; [player,'EMS'] spawn client_fnc_jobstart;",4]
	],

	[
		["myjob == 'EMS' && (typeof cursorobject IN ['Land_buildingsfiredept1','Land_buildingshospital1'])"],
		["Sign-out FD", "[1] call client_fnc_jobEnd",4]
	],

	[
		["myjob == 'none' && (player getvariable 'legal') > 0 && (typeof cursorobject IN ['Land_buildingscourthouse1']) && !(Senator || Mayor)"],
		["Sign-in Legal", "[player,'Legal'] spawn client_fnc_jobstart;",4]
	],

	[
		["myjob == 'Legal' && (typeof cursorobject IN ['Land_buildingscourthouse1'])"],
		["Sign-out Legal", "[0] call client_fnc_jobEnd",4]
	],

	[
		["20 IN licenseArray && !(player IN currentLawyers) && ( typeof cursorobject == 'Land_Centrelink' )"],
		["Sign-in Attorney", " currentLawyers pushBack player; publicVariable 'currentLawyers'; ",4]
	],

	[
		["(player IN currentLawyers) && ( typeof cursorobject == 'Land_Centrelink' )"],
		["Sign-out Attorney", " currentLawyers = currentLawyers - [player]; publicVariable 'currentLawyers'; ",4]
	],

	[
		["27 IN licenseArray && !(player IN currentParalegals) && ( typeof cursorobject == 'Land_Centrelink' )"],
		["Sign-in Paralegal", " currentParalegals pushBack player; publicVariable 'currentParalegals'; ",4]
	],

	[
		["player IN currentParalegals && ( typeof cursorobject == 'Land_Centrelink' )"],
		["Sign-out Paralegal", " currentParalegals = currentParalegals - [player]; publicVariable 'currentParalegals'; ",4]
	],


	[
		["myjob == 'none' && (player getvariable 'dmv') > 0 && (typeof cursorobject IN ['Land_Centrelink'])"],
		["Sign-in DMV", "[player,'DMV'] spawn client_fnc_jobstart;",4]
	],

	[
		["myjob == 'DMV' && (typeof cursorobject IN ['Land_Centrelink'])"],
		["Sign-out DMV", "[0] call client_fnc_jobEnd",4]
	],


	[
		["myjob == 'none' && (player getvariable 'da') > 0 && (typeof cursorobject IN ['Land_Centrelink'])"],
		["Sign-in DA", "[player,'DA'] spawn client_fnc_jobstart;",4]
	],

	[
		["myjob == 'DA' && (typeof cursorobject IN ['Land_Centrelink'])"],
		["Sign-out DA", "[0] call client_fnc_jobEnd",4]
	],

	[
		["myjob == 'none' && (player getvariable 'mafia') > 0 && (typeof cursorobject IN ['Land_em_mansion_01'])"],
		["Sign-in Mafia", "[player,'Mafia'] spawn client_fnc_jobstart;",4]
	],

	[
		["myjob == 'Mafia' && (typeof cursorobject IN ['Land_em_mansion_01'])"],
		["Sign-out Mafia", "[0] call client_fnc_jobEnd",4]
	],


	[
		["myjob == 'none' && (player getvariable 'Biker') > 0 && (typeof cursorobject IN ['Land_buildingsNightclub2'])"],
		["Sign-in Biker", "[player,'Biker'] spawn client_fnc_jobstart;",4]
	],

	[
		["myjob == 'Biker' && (typeof cursorobject IN ['Land_buildingsNightclub2'])"],
		["Sign-out Biker", "[0] call client_fnc_jobEnd",4]
	],

	[
		["myjob == 'none' && (player getvariable 'Mobster') > 0 && (typeof cursorobject IN ['Land_buildingsCasino2'])"],
		["Sign-in Mobster", "[player,'Mobster'] spawn client_fnc_jobstart;",4]
	],

	[
		["myjob == 'Mobster' && (typeof cursorobject IN ['Land_buildingsCasino2'])"],
		["Sign-out Mobster", "[0] call client_fnc_jobEnd",4]
	],




	[
		["typeof CursorObject == 'Land_i_Barracks_V1_F'"],
		["Process Drug Bricks", "closedialog 0; [] spawn client_fnc_processBricks",4]
	],

	[
		["((player distance (getMarkerPos 'sales')) < 30)"],
		["Sell Ore / Wood", "closedialog 0; [] spawn client_fnc_sellOre",4]
	],

	[
		["((player distance (getMarkerPos 'peltCuring')) < 30)"],
		["Cure Pelts", "closedialog 0; [] spawn client_fnc_refinePelts",4]
	],

	[
		["((player distance (getMarkerPos 'fishRefinery')) < 70) || typeof (vehicle player) IN ['vvv_NewYacht','POP_Speed_yatch'] "],
		["Refine Fish", "closedialog 0; [] spawn client_fnc_refineFish",4]
	],

	[
		["((player distance (getMarkerPos 'logRefinery')) < 30)"],
		["Refine Wood", "closedialog 0; [] spawn client_fnc_refineLogs",4]
	],

	[
		["((player distance (getMarkerPos 'oilRefinery')) < 30)"],
		["Refine Oil", "closedialog 0; [] spawn client_fnc_refineoil;",4]
	],

	[
		["((player distance (getMarkerPos 'OreRefinery')) < 30)"],
		["Refine Ore", "closedialog 0; [] spawn client_fnc_refinemetal1;",4]
	],

	[
		["ClientArrested && player distance [5616.14,6313.37,0.00143433] < 8"],
		["Craft Hacking Tool", "['Crafting Hacking Tool',20,'client_fnc_crafthackingdevice',player,'AinvPknlMstpSnonWnonDnon_medic_1',player] spawn client_fnc_dotask; ",4]
	],
	
	[
		["ClientArrested && (str CursorObject find 'gymbench' > -1 || str CursorObject find 'gymrack'> -1 ) && getpos player distance [5644.19,6329.73,0.00143433] < 55"],
		["Craft Lockpick", "['Crafting Lockpick',60,'client_fnc_craftlockpick',player,'AmovPercMstpSnonWnonDnon_exercisePushup',player] spawn client_fnc_dotask; ",4]
	],

	[
		["( typeof CursorObject == 'Rabbit_F' || str CursorObject find 'cock_' > -1 ) && getdammage cursorobject == 1"],
		["Skin Rabbit", "deletevehicle CurrentCursorObject; player additem 'np_upelt'; ['You skinned an animal for its pelt!', true] spawn domsg; ",4]
	],

	[
		["( str CursorObject find 'Sheep_' > -1 ) && getdammage cursorobject == 1"],
		["Skin Animal", "deletevehicle CurrentCursorObject; player additem 'np_upelt'; player additem 'np_upelt'; player additem 'np_upelt'; player additem 'np_upelt'; ['You skinned an animal for its pelt!', true] spawn domsg; ",4]
	],

	[
		["((player distance (getMarkerPos 'fishSales')) < 20)"],
		["Sell Fish", "closedialog 0; [] spawn client_fnc_sellFish",4]
	],

	[
		["str CursorObject find 'cargo20' > -1 && player distance [3709.95,9054.45,0.00143886] < 600"],
		["Search Crate", "['Searching Crate',35,'client_fnc_searchcrates',player,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorObject,'cg_sndimg\sounds\repair.ogg'] spawn client_fnc_dotask; ",4]
	],

	[ 
		[" 'np_goldscanner' in magazines player && player distance [8606.95,1421.29,8.80693] < 400 && GoldTimer < time "], 
		["Scan for Gold", " [] spawn client_fnc_scangold; ",4] 
	],

	[
		[" player distance nearestObject [getpos player, 'itemsGoldbar1'] < 2 "],
		["Dig for Gold", "['Searching for Gold Bar',7,'client_fnc_packgoldbar',player,'AinvPknlMstpSnonWnonDnon_medic_1',player,'cg_sndimg\sounds\repair.ogg'] spawn client_fnc_dotask; ",4]
	],

	[
		["( myjob != 'none' && !(myjob IN ['Doc','cop','EMS','Mobster','Biker','Mafia']) ) && (typeof CursorObject IN ['Land_Centrelink'] || player distance myhouse < 20)"],
		["Quit Job", "[0] spawn client_fnc_jobEnd;",4]
	],

	[
		["myjob != 'none' && typeof CursorObject IN ['Land_Centrelink'] && myjob != 'cropdusting'"],
		["Spawn Job Vehicle", "[] spawn client_fnc_spawnjobvehicle",4]
	],


	[
		[" myjob == 'none' && player distance [7051.26,834.174,-1.5532] < 100 "],
		["Start Trawling Job", "[] spawn client_fnc_fishTrawling;",4]
	],

	[
		[" myjob == 'none' && player distance [3573.71,1842.27,0.00144196] < 100 "],
		["Start Farming Job", "[] spawn client_fnc_farmingplots;",4]
	],

	[
		[" myjob == 'none' && typeof CursorObject IN ['Land_Hangar_F'] && (6) IN licenseArray "],
		["Start Air Job", "[] spawn client_fnc_cropdusting; ['You can spawn a plane at any hanger', true] spawn domsg; ",4]
	],

	[
		["myjob != 'none' && typeof CursorObject IN ['Land_Hangar_F'] && myjob == 'cropdusting' && (6) IN licenseArray "],
		["Spawn Air Job Vehicle", "[] spawn client_fnc_spawnjobvehicle",4]
	],

	[
		["typeof CursorObject == 'Land_Centrelink'"],
		["Search Jobs", "[player] spawn client_fnc_startjob",4]
	],

	[
		["myjob == 'Repairman'"],
		["Repair Object", "['Repairing Object',15,'client_fnc_repairNear',player,'AinvPknlMstpSnonWnonDnon_medic_1',player,'cg_sndimg\sounds\repair.ogg'] spawn client_fnc_dotask; ",4]
	],

	[
		[" "],
		["Player Stats", "closedialog 0; [] spawn client_fnc_myLevels; ",4]
	],
	
	[
		[" myjob IN ['doc'] && isPlayer CursorObject && CursorObject isKindOf 'Man' && !(CursorObject getVariable['JailTracked',FALSE]) "],
		["Enable Tracking", "[] remoteexec ['client_fnc_enablePlayerTracking',currentCursorObject] ",4]
	],

	[
		[" myjob IN ['doc'] && isPlayer CursorObject && CursorObject isKindOf 'Man' && (CursorObject getVariable['JailTracked',FALSE]) "],
		["Disable Tracking", " CursorObject setvariable ['JailTracked',nil,true]; ",4]
	],
	[
		[" (player getVariable['JailTracked',FALSE]) && vehicle player != player "],
		["Disable Tracking", "  ['Removing Tracking',600,'client_fnc_DisablePlayerTracking',player,'AinvPknlMstpSnonWnonDnon_medic_1',player,'cg_sndimg\sounds\repair.ogg'] spawn client_fnc_dotask; ",4]
	],
	
	[
		[" myjob IN ['doc','Cop'] && isPlayer CursorObject && CursorObject isKindOf 'Man' && ( getpos player distance [8242.13,3019.17,0] < 50 || getpos player distance [5556.2,6291.29,0.00143433] < 350 ) "],
		["Block 1 Clothing", " [0,0] remoteexec ['client_fnc_jailClothing',currentCursorObject]; ",4]
	],

	[
		[" myjob IN ['doc','Cop'] && isPlayer CursorObject && CursorObject isKindOf 'Man' && ( getpos player distance [8242.13,3019.17,0] < 50 || getpos player distance [5556.2,6291.29,0.00143433] < 350 ) "],
		["Block 2 Clothing", " [1,0] remoteexec ['client_fnc_jailClothing',currentCursorObject]; ",4]
	],

	[
		[" myjob IN ['doc','Cop'] && isPlayer CursorObject && CursorObject isKindOf 'Man' && ( getpos player distance [8242.13,3019.17,0] < 50 || getpos player distance [5556.2,6291.29,0.00143433] < 350 ) "],
		["Block 3 Clothing", " [2,0] remoteexec ['client_fnc_jailClothing',currentCursorObject]; ",4]
	],

	[
		[" myjob IN ['doc','Cop'] && isPlayer CursorObject && CursorObject isKindOf 'Man' && ( getpos player distance [8242.13,3019.17,0] < 50 || getpos player distance [5556.2,6291.29,0.00143433] < 350 ) "],
		["Time Left", " [player] remoteexec ['client_fnc_getTimeLeft', CurrentCursorObject] ",4]
	],


	[
		[" myjob IN ['doc','Cop','EMS']  && !imrestrained && !(player getVariable ['surrender', false]) && count currentrepairmen > 0"],
		["Request Repair", " [getpos player] remoteExec ['client_fnc_startRepair',currentrepairmen]; ['Thank you for supporting your community, SMS has been sent to repair jobs' , true] spawn domsg; ",4]
	]

];

player setVariable["loaded", 2, false];





