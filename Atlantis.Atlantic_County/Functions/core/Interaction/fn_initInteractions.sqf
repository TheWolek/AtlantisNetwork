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
		["Wszystko", " ['All'] spawn client_fnc_marker; ",5] 
	],

	[ 
		["visibleMap"], 
		["Dom", " ['Home'] spawn client_fnc_marker; ",5] 
	],

	/*
	[ 
		["visibleMap"], 
		["My Shop", " ['Shop'] spawn client_fnc_marker; ",5] 
	],
	*/

	[ 
		["visibleMap"], 
		["Biuro", " ['Office'] spawn client_fnc_marker; ",5] 
	],
	/*
	[ 
		["visibleMap"], 
		["Shops", " ['Shops'] spawn client_fnc_marker; ",5] 
	],
	*/
	[ 
		["visibleMap"], 
		["Biura", " ['Offices'] spawn client_fnc_marker; ",5] 
	]
];

NoPixel_InteractionMenuItems = [

	[
		["adminLevel >= 7"],

		["Admin", "closedialog 0; createdialog 'koiladmin'; ",5]
	],

	[ 
		[" (lastforcesync + 300) < time && ( myjob != 'Cop' && myjob != 'EMS' && myjob != 'Fire' ) "], 
		["Sync Data (5min)", "	_new = player getVariable 'cashinhand';	[player, 'cashinhand', _new] remoteExec ['Server_fnc_setVariable',2]; _loadout = getunitloadout player; [player, 'getunitloadout', getunitloadout player] remoteExec ['Server_fnc_setVariable',2]; [player,1,getplayeruid player,name player,_loadout] remoteExec ['server_fnc_steppedsync',2]; lastforcesync = time; ",5] 
	],

	//casino ??
	/*
	[ 
		["player distance [935.243,1281.78,0.00143957] < 25"], 
		["Horse Betting $0-500", " createdialog 'client_phonebet';",5] 
	],

	[ 
		["player distance [923.081,1285.73,0.00143957] < 25"], 
		["Lottery $1K", "[] spawn client_fnc_lottoBuy;",5] 
	],

	[ 
		["player distance [922.831,1293.87,0.00144005] < 25"], 
		["Slots $100-$1K", "[] spawn client_fnc_slotsStart; ",5] 
	],
	*/

	[ 
		["myjob == 'Mafia' && player distance [946.936,1274.69,0.00144005] < 15"], 
		["Dealer", "[] spawn client_fnc_dumpDrugs; ",5] 
	],

	[
		["typeof CursorTarget == 'Land_Market_DED_Market_03_F'"],
		["Make Advert $100", "closedialog 0; createdialog 'client_Advertise';", 5]
	],

	[ 
		[" myCallOwner IN [99.1,99.2,99.3,99.4,99.5] && !(player IN serverRadioPlayers) "], 
		["Tip Radio $50", "[] spawn client_fnc_tipRadioPresenter; ",5] 
	],

	[ 
		[" ( (player IN serverRadioPlayers) && !(CursorTarget IN serverRadioPlayers) && (isPlayer CursorTarget && CursorTarget isKindOf 'Man') ) "], 
		["Add Presenter", "[player] remoteexec ['client_fnc_forceradioconnection',currentcursortarget]; ",5] 
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
		[" typeof CursorTarget IN ['Land_buildingsCasino2','Land_buildingsbasement1','Land_buildingsNightclub2','Land_buildingsJailCellBlock1','land_jf_sheriff_station_01'] && myJob IN ['Cop'] "], 
		["Wyważ", " [] spawn client_fnc_lockpick; ",5] 
	],


	[ 
		[" CursorTarget getVariable['hotcar',FALSE] "], 
		["Ukradnij pojazd", " ['Kradnę pojazd',30,'client_fnc_careventend',player,'AinvPknlMstpSnonWnonDnon_medic_1',[CurrentCursorTarget],'cg_mission_files\sounds\repair.ogg'] spawn client_fnc_dotask ",5] 
	],

	[ 
		[" CursorTarget getVariable['robberCar',FALSE] && myJob IN ['Cop']"], 
		["Zwróć pojazd", " ['Zwracam pojazd',180,'client_fnc_careventendpolice',player,'AinvPknlMstpSnonWnonDnon_medic_1',[CurrentCursorTarget],'cg_mission_files\sounds\repair.ogg'] spawn client_fnc_dotask ",5] 
	],

	[ 
		[" bankrobber == 4 && typeof cursortarget IN ['plp_ct_HighSecMediumBlack','cg_mainvault'] && mybank == cursortarget "], 
		["Ukradnij $", " ['Zbieram pieniądze',30,'client_fnc_takecash',player,'AinvPknlMstpSnonWnonDnon_medic_1',[CurrentCursorTarget],'cg_mission_files\sounds\repair.ogg'] spawn client_fnc_dotask ",5] 
	],

	[ 
		[" bankrobber == 2 && typeof cursortarget IN ['plp_ct_HighSecMediumBlack','cg_mainvault'] && mybank == cursortarget "], 
		["Napraw Wiertarkę", " ['Naprawiam wiertarkę',30,'client_fnc_repairdrill',player,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorTarget,'cg_mission_files\sounds\repair.ogg'] spawn client_fnc_dotask ",5] 
	],

	[ 
		["player distance [6795.5,4615.08,0.00143814] <= 3"], 
		["Twitch.TV", " ['Próba połączenia z serwerami twitch.tv... Połączenie utracone.', true] spawn domsg; ",5] 
	],

	/*[ 
		[" "], 
		["Give Keys", " [] spawn client_fnc_findplayerskeys; ",5] 
	],*/
	[ 
		["!imrestrained && isPlayer cursorTarget "], 
		["Daj klucze", " [current_cars] remoteexec ['client_fnc_givekeys', CurrentcursorTarget]; ",5] 
	],

	[ 
		[" vehicle player != player && !isNil{vehicle player getVariable 'ivory_windowtint'} "], 
		["Vehicle Manual", " [vehicle player] spawn client_fnc_manual; ",5] 
	],

	[ 
		["typeof CursorObject IN ['Land_Centrelink']"], 
		["Licencje", "[0] spawn client_fnc_license;",3] 
	],

	[
		["typeof cursorObject == 'Land_courthouse'"],
		["Zapłać podatek", "createdialog 'payTax_Menu';",1]
	],

	[
		["typeof cursorObject == 'Land_courthouse'"],
		["Podatek", " [format['Masz dług w wysokości %1, a stawka podatkowa wynosi %2%3.', ((player getVariable 'statuses') select 13) call client_fnc_numberText, taxRate, '%'], true]  spawn domsg; ",1]
	],
/*
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
*/
//gold run
	[
		[" cursorObject == mobsterVehicle && !isNull mobsterVehicle && player distance endOfmission < 25 && myjob == 'Mobster' && typeof mobsterVehicle == 'acj_Brinks' "],
		["Armed Pack", " ['Packing in Boat',30,'client_fnc_brinkstoboat',player,'AinvPknlMstpSnonWnonDnon_medic_1',[CurrentCursorTarget,1],'cg_mission_files\sounds\patdown1.ogg'] spawn client_fnc_dotask ",1]
	],

	[
		[" cursorObject == mobsterVehicle && !isNull mobsterVehicle && player distance endOfmission < 25 && myjob == 'Mobster' && typeof mobsterVehicle == 'acj_Brinks' "],
		["Unarmed Pack", " ['Packing in Boat',300,'client_fnc_brinkstoboat',player,'AinvPknlMstpSnonWnonDnon_medic_1',[CurrentCursorTarget,2],'cg_mission_files\sounds\patdown1.ogg'] spawn client_fnc_dotask ",1]
	],

	[
		["player distance theGunner < 500 && myjob == 'Mobster' && typeof mobsterVehicle != 'acj_Brinks' && vehicle player != player"],
		["Finish Boat Run", " [] spawn client_fnc_finishOreDrop;  ",1]
	],
////
	[
		["player distance [6460.69,2853.63,0.000980377] < 40 && ((myjob == 'Mafia' && drugcount <= 375) || (myjob == 'Biker' && drugcount2 <= 375) || (myjob == 'none')) "],
		["Dealer", " ['Sprzedaję narkotyki',60,'client_fnc_dumpDrugs',player,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorTarget,'cg_mission_files\sounds\patdown1.ogg'] spawn client_fnc_dotask ",1]
	],
	
	[
		["player distance [1083.07,4126.32,0] < 100 && ((myjob == 'Mafia' && CursorTarget == mafiaVehicle) || (myjob == 'Biker' && CursorTarget == bikerVehicle)) && vehicle player == player"],
		["Zakończ przemyt", " [] spawn client_fnc_finishDrugRun;  ",1]
	],

	[
		["typeof cursorobject == 'Land_buildingsCasino2' && myJob == 'Mobster' "],
		["Dump Ore", " ['Dropping Ore',60,'client_fnc_dumpOre',player,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorTarget,'cg_mission_files\sounds\patdown1.ogg'] spawn client_fnc_dotask ",1]
	],

	//brudne $
	[
		[" isPlayer CursorTarget && CursorTarget isKindOf 'Man' && (player distance [4817.36,2111.62,0.00143957] < 5) && (myJob IN ['Mobster']) && player getvariable 'mobster' >= 3 "],
		["Give Contract", " closeDialog 0; createDialog 'casinoConvert_Menu'; ",1]
	],


	[
		[" (( myJob == 'Mafia' && player getvariable 'mafia' >= 2 ) || ( myJob == 'Cop' && player getvariable 'cop' == 5 ) || (player getvariable 'cop' == 10)) && count TracingPlayers > 0 && !imRestrained"],
		["Traced Calls", " [] spawn client_fnc_findTapped; ",1]
	],

	[
		[" myJob IN ['Cop','doc'] && (count(nearestObjects [player,['weaponholder'],3])>0) && count (nearestObjects[player,['Land_ScriptOase_PoliceHeadquarters'],100]) > 0"],
		["Skonfiskuj itemy", " [] spawn client_fnc_seizeObjects; ",1]
	],


	[
		[" isPlayer CursorTarget && CursorTarget isKindOf 'Man' && myJob == 'Mafia' && CursorTarget distance player < 5 && !imrestrained "],
		["Daj pożyczke", " [currentcursortarget] spawn client_fnc_giveLoan; ",1]
	],


	[
		[" isPlayer CursorTarget && CursorTarget isKindOf 'Man' && myJob == 'Mafia' && !imrestrained "],
		["Pożyczki", " [player] remoteexec ['server_fnc_MafiaOwed',2];  ",1]
	],



	[
		[" isPlayer CursorTarget && CursorTarget isKindOf 'Man' && myJob == 'Mafia' && CursorTarget distance player < 5 && !imrestrained "],
		["Obszczaj", " [currentcursortarget] spawn client_fnc_pee; ",1]
	],

	[
		[" (player == vehicle player) && (isPlayer CursorTarget && CursorTarget isKindOf 'Man' && vehicle CursorTarget == currentcursortarget) && myJob == 'Mafia' "],
		["Wynajmij pokój kasyna", " [] spawn client_fnc_casinoRoom; ",1]
	],

	/*
	[
		[" (vehicle player == player) && (isPlayer CursorTarget && CursorTarget isKindOf 'Man' && vehicle CursorTarget == currentcursortarget) && (( myJob == 'Mafia' && player getvariable 'mafia' >= 2 ) || ( myJob == 'Cop' && player getvariable 'cop' == 5) || ( myJob == 'Cop' && player getvariable 'cop' == 10 )) && !imRestrained"],
		["Track Call $1K", " ['Tracking',5,'client_fnc_tracecall',CurrentCursorTarget,'vvv_anim_ticket',CurrentCursorTarget,'cg_mission_files\sounds\patdown1.ogg'] spawn client_fnc_dotask ",1]
	],
	*/

	[
		[" (vehicle player == player) && (isPlayer CursorTarget && CursorTarget isKindOf 'Man') && (vehicle CursorTarget == currentcursortarget) && ( ( myJob == 'Mafia' && player getvariable 'mafia' >= 2 ) || ( myJob == 'Cop' && player getvariable 'cop' == 5 ) || ( myJob == 'Cop' &&  player getvariable 'cop' == 10 ) ) && !imrestrained"],
		["Śledź osobę $3K", " ['Podkładam gps',5,'client_fnc_trackplayer',CurrentCursorTarget,'vvv_anim_ticket',CurrentCursorTarget,'cg_mission_files\sounds\patdown1.ogg'] spawn client_fnc_dotask ",1]
	],

	[
		[" (vehicle player == player) &&  (CursorTarget isKindOf 'Air' || CursorTarget isKindOf 'Car' || CursorTarget isKindOf 'Boat') && ( ( myJob == 'Mafia' && player getvariable 'mafia' >= 2 ) || ( myJob == 'Biker' && player getvariable 'biker' >= 2 ) || ( myJob == 'Mobster' && player getvariable 'mobster' >= 2 ) || ( myJob == 'Cop' && player getvariable 'cop' == 5 ) || ( myJob == 'Cop' && player getvariable 'cop' == 10 ) ) && !imrestrained"],
		["Śledź pojazd $1K", " ['Podkładam gps',5,'client_fnc_trackvehicle',CurrentCursorTarget,'vvv_anim_ticket',CurrentCursorTarget,'cg_mission_files\sounds\patdown1.ogg'] spawn client_fnc_dotask ",1]
	],

	[
		[" (vehicle player == player) &&  (CursorTarget isKindOf 'Air' || CursorTarget isKindOf 'Car' || CursorTarget isKindOf 'Boat') && ( ( myJob == 'Mafia' && player getvariable 'mafia' >= 2 ) || ( myJob == 'Biker' && player getvariable 'biker' >= 2 ) || ( myJob == 'Mobster' && player getvariable 'mobster' >= 2 ) ) && ( CursorTarget getVariable ['pdCar',''] != '' || CursorTarget getVariable ['docCar',''] != '' || CursorTarget getVariable ['emsCar',''] != '' ) && !imrestrained "],
		["Untrack Vehicle $10K", " [Podkładam gps',60,'client_fnc_untrackvehicle',CurrentCursorTarget,'vvv_anim_ticket',CurrentCursorTarget,'cg_mission_files\sounds\patdown1.ogg'] spawn client_fnc_dotask ",1]
	],

	[
		[" (vehicle player == player) && (CursorTarget isKindOf 'Air' || CursorTarget isKindOf 'Car' || CursorTarget isKindOf 'Boat') && ( ( myJob == 'Mafia' && player getvariable 'mafia' >= 2 ) || ( myJob == 'Cop' && player getvariable 'cop' >= 5 ) ) && count hackedcars < 2  && !imrestrained && CursorTarget IN current_cars "],
		["Hakuj pojazd $5K", " ['Hakuję',60,'client_fnc_hackCar',CurrentCursorTarget,'vvv_anim_ticket',CurrentCursorTarget,'cg_mission_files\sounds\patdown1.ogg'] spawn client_fnc_dotask ",1]
	],

	[
		[" count hackedcars > 0  && !imrestrained"],
		["Unieruchom pojazd(y)", " [] spawn client_fnc_hackCarDisplay;  ",1]
	],

	[
		[" ('ToolKit' IN items player) && ( 'SatchelCharge_F' IN ((attachedObjects currentcursortarget) apply {typeOf _x}) || (typeof CursorTarget == 'SatchelCharge_F') )  && !imrestrained "],
		["Rozbrój", " ['Rozbrajam',5,'client_fnc_IEDdefuse',player,'vvv_anim_ticket',CurrentCursorTarget,'cg_mission_files\sounds\patdown1.ogg'] spawn client_fnc_dotask ",1]
	],

	[
		[" CursorTarget IN ((bombs) apply {call compile _x}) && !imrestrained "],
		["Podnieś", " ['Podnoszę',5,'client_fnc_IEDdefuse',player,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorTarget,'cg_mission_files\sounds\patdown1.ogg'] spawn client_fnc_dotask ",1]
	],

	[
		[" count bombs > 0 && !imrestrained"],
		["Zdetonuj", " [] spawn client_fnc_IEDdisplay; ",1]
	],

	[
		[" PLAYER DISTANCE [800.635,1386.1,0.00143862] < 15 && !imRestrained && !(player getVariable ['surrender', false]) "],
		["Tańcz", " [0] spawn client_fnc_dance; ",1]
	],

	[
		[" PLAYER DISTANCE [800.635,1386.1,0.00143862] < 15 && !imRestrained && !(player getVariable ['surrender', false]) "],
		["Przestań tańczyć", " [player, ''] remoteExec ['switchMove'] ",1]
	],

	[
		[" (vehicle player == player) && (isPlayer CursorTarget && CursorTarget isKindOf 'Man') && ( myJob == 'Mobster' && (player getVariable 'mobster') >= 3 ) && ( count nearestobjects[player,['Land_buildingsCasino2'],50] > 0 ) && !imrestrained"],
		["Check Bank", " [player] remoteExec ['client_fnc_checkBank', CurrentCursorTarget]; ",1]
	],

	/*
	//Wysicigowe gówno
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
	*/

	[
		[" !client_seatbelt && vehicle player != player "],
		["Zapnij pasy", "client_seatbelt = true;",1]
	],

	[
		[" client_seatbelt && vehicle player != player "],
		["Odepnij pasy", "client_seatbelt = false;",1]
	],
// healing

	[
		["CursorTarget getVariable['dead',FALSE] && (count currentEMS == 0) && ((animationstate CurrentCursorTarget) == 'incapacitated' || (animationstate cursorObject) == 'deadstate' || (animationstate cursorObject) == 'amovpercmstpsnonwnondnon' || (animationState cursorObject) == 'amovppnemstpsraswrfldnon' || (animationState cursorObject) == 'unconsciousfaceup')"],
		["RKO", "['Przeprowadzam RKO',125,'client_fnc_sendRevive',player,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorTarget,'cg_mission_files\sounds\patdown1.ogg'] spawn client_fnc_dotask",1]
	],


	[
		["CursorTarget getVariable['dead',FALSE] && (myjob == 'EMS' || myJob == 'Fire')"],
		["Uratuj", "['Przeprowadzam RKO',15,'client_fnc_sendRevive',player,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorTarget,'cg_mission_files\sounds\patdown1.ogg'] spawn client_fnc_dotask",1]
	],

	[
		["CursorTarget getVariable['dead',FALSE] && (myjob == 'EMS' || myJob == 'Fire')"],
		["Zgon", "['Stiwerdzam Zgon',5,'client_fnc_sendDeath',player,'vvv_anim_ticket',cursorObject,'cg_mission_files\sounds\patdown1.ogg'] spawn client_fnc_dotask",1]
	],
/*
	[
		[" !imrestrained && count (nearestobjects[player,['Man'],5]-[player]) > 0  && !(player getVariable ['surrender', false])"],
		["Heal Near", "createdialog 'FindPlayer_Menu';",1]
	],
*/
	[
		[" vehicle player == player && !imrestrained && isPlayer CursorTarget && CursorTarget isKindOf 'Man'  && !(player getVariable ['surrender', false])"],
		["Ulecz osobę", " [CurrentCursorTarget] spawn client_fnc_medicUpdater; ",1]
	],

	[
		[" !imrestrained && !(player getVariable ['surrender', false]) "],
		["Ulecz się", " [player] spawn client_fnc_medicUpdater; ",1]
	],
/*
	[
		["bedactive"],
		["Upuść łóżko", "[] spawn client_fnc_dropbed;",1]
	],

	[
		[" typeof cursorobject == 'A3L_HospitalBed2015' && myjob == 'EMS'"],
		["Podnieś łóżko", "[true] spawn client_fnc_spawnbed;",1]
	],

	[
		[" typeof cursorobject == 'A3L_HospitalBed2015' && myjob == 'EMS'"],
		["Usuń łozko", "deletevehicle currentcursortarget;",1]
	],

	[
		[" typeof cursorobject == 'land_POP_Hospital' && myjob == 'EMS'"],
		["Łóżko", "[false] spawn client_fnc_spawnbed;",1]
	],
*/

	[
		[" typeof cursorobject == 'land_POP_Hospital'"],
		["Ulecz się", "[] spawn client_fnc_fullheal; bleedingEffect = 0; ",1]
	],

	[
		[" typeof cursorobject == 'land_POP_Hospital'"],
		["Zmień płeć", " if(female) then {female = false; ['Jesteś teraz mężczyzną.', true] spawn domsg; } else {female = true; ['Jesteś teraz kobietą.', true] spawn domsg; }; ['NA','sex',0] call client_fnc_sustain;",1]
	],

	[
		[" typeof cursorobject == 'land_POP_Hospital'"],
		["Szukaj pluskw", "[] spawn client_fnc_disabletrackingme;",1]
	],

	// vehicles

	[
		[" count (nearestobjects[player,['Land_fs_feed_F'],10]) > 0 "],
		["Zatankuj $0-500", "[] spawn client_fnc_fillvehicle;",2]
	],
	
	[
		[" (CursorTarget isKindOf 'Car' || CursorTarget isKindOf 'AIR' || CursorTarget isKindOf 'BOAT') && ('np_FuelCan' IN (magazines player)) "],
		["Zatankuj", "[CurrentCursorTarget] spawn client_fnc_fuelcan;",2]
	],

	[
		["count attachedObjects player > 0 && attachedcar"],
		["Upuść pojazd", " [] spawn client_fnc_detach; ",2]
	],

	[
		[" !(player getVariable ['surrender',false]) && !imrestrained && vehicle player == player "],
		["Poddaj się", " [] spawn client_fnc_surrender; ",2]
	],
	
	[
		[" player getVariable ['surrender', false] && !imrestrained && vehicle player == player"],
		["Zdejmij ręce", " player setVariable ['surrender', nil, true]; ",2]
	],

	[
		["myjob IN ['Cop','Fire','EMS'] && !imrestrained && count (crew currentcursortarget) > 0 "],
		["Wyciągnij ludzi", " ['Wyciągam graczy',8,'client_fnc_pulloutplayers',player,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorTarget,'cg_mission_files\sounds\patdown1.ogg'] spawn client_fnc_dotask ",2]
	],

	[
		["myjob == 'towtruck' && (CursorTarget isKindOf 'Car' || CursorTarget isKindOf 'AIR' || CursorTarget isKindOf 'BOAT' || CursorTarget isKindOf 'SHIP' || CursorTarget isKindOf 'TANK') && ((getpos player) distance [7603.34,6311.1,0.00143814] < 30) && !(CursorTarget IN current_cars) "],
		["Odholuj", "[""who cares"",0,cursorObject,player] remoteExec [""Server_fnc_updateCarStatus"",2];",2]
	],

	/*
	[
		["myjob IN ['Cop','EMS','doc'] && (CursorTarget isKindOf 'Car' || CursorTarget isKindOf 'AIR' || CursorTarget isKindOf 'BOAT' || CursorTarget isKindOf 'SHIP' || CursorTarget isKindOf 'TANK') && count currenttowtruckdrivers > 0"],
		["Request Impound", " ['Odholowuję',3,'client_fnc_impoundVehicle',player,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorTarget,'cg_mission_files\sounds\repair.ogg'] spawn client_fnc_dotask ",2]
	],
	*/

	[
		["myjob IN ['Cop','EMS','doc'] && (CursorTarget isKindOf 'Car' || CursorTarget isKindOf 'AIR' || CursorTarget isKindOf 'BOAT' || CursorTarget isKindOf 'SHIP' || CursorTarget isKindOf 'TANK') && count currenttowtruckdrivers > 0"],
		["Odholuj", " [""who cares"",0,cursorObject,player] remoteExec [""Server_fnc_updateCarStatus"",2]; ",2]
	],

	[
		["myjob IN ['Cop','EMS','doc'] && (CursorTarget isKindOf 'Car' || CursorTarget isKindOf 'AIR' || CursorTarget isKindOf 'BOAT' || CursorTarget isKindOf 'SHIP' || CursorTarget isKindOf 'TANK') && count currenttowtruckdrivers == 0"],
		["Odholuj", "[""who cares"",0,cursorObject,player] remoteExec [""Server_fnc_updateCarStatus"",2];",2]
	],

	[
		["myjob IN ['Cop'] && (CursorTarget isKindOf 'Car' || CursorTarget isKindOf 'AIR' || CursorTarget isKindOf 'BOAT' || CursorTarget isKindOf 'SHIP' || CursorTarget isKindOf 'TANK')"],
		["Sprawdź tablice", " ['Spisuje tablice',6,'client_fnc_checkLicensePlate',cursorObject,'vvv_anim_ticket',[cursorObject],'cg_mission_files\sounds\patdown1.ogg'] spawn client_fnc_dotask",2]
	],

	[
		["myjob IN ['Cop'] && (CursorTarget isKindOf 'Car' || CursorTarget isKindOf 'AIR' || CursorTarget isKindOf 'BOAT' || CursorTarget isKindOf 'SHIP' || CursorTarget isKindOf 'TANK')"],
		["Wystaw mandat", " ['Wypisuję mandat',10,'client_fnc_ticketvehicle',cursorObject,'vvv_anim_ticket',[cursorObject],'cg_mission_files\sounds\patdown1.ogg'] spawn client_fnc_dotask",2]
	],

	[
		["(getpos player) distance [7604.7,6315.58,0.00143814] < 40 && player getvariable 'Mafia' > 0 "],
		["Sprzedaj", " ['Sprzedaję pojazd',60,'client_fnc_sellVehicle',player,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorTarget,'cg_mission_files\sounds\repair.ogg'] spawn client_fnc_dotask ",2]
	],

	[
		["(CursorTarget isKindOf 'Car' || CursorTarget isKindOf 'Air' || CursorTarget isKindOf 'Boat' || CursorTarget isKindOf 'Ship') && (myJob != 'Repairman' || ( myJob == 'Repairman' && (CursorTarget IN current_cars) ) ) && ('ToolKit' in backpackitems player) && !attachedcar"],
		["Napraw", "['Naprawiam',25,'client_fnc_repair',CurrentCursorTarget,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorTarget,'cg_sndimg\sounds\repair.ogg'] spawn client_fnc_dotask",2]
	],

	[
		["(CursorTarget isKindOf 'Car' || CursorTarget isKindOf 'Air' || CursorTarget isKindOf 'Boat' || CursorTarget isKindOf 'Ship') && myJob == 'Repairman' && !(CursorTarget IN current_cars) "],
		["Napraw", "['Naprawiam',10,'client_fnc_repair',CurrentCursorTarget,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorTarget,'cg_sndimg\sounds\repair.ogg'] spawn client_fnc_dotask",2]
	],

	[
		[" CursorTarget isKindOf 'Car' && !attachedcar "],
		["Ukradnij felgi", "['Stealing',100,'client_fnc_stealRims',CurrentCursorTarget,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorTarget,'cg_sndimg\sounds\repair.ogg'] spawn client_fnc_dotask",2]
	],

	[
		["(vehicle player) == player && CursorTarget in Current_Cars && (cursortarget getVariable['salecheck',FALSE]) "],
		["Anuluj aukcje", "CursorTarget setvariable ['sale',nil,true]; CursorTarget setvariable ['salecheck',nil,true];",2]
	],

	[
		["(vehicle player) == player && count nearestobjects[player,['Land_ModernShowroom'],50] > 0 && CursorTarget in Current_Cars && !(cursortarget getVariable['salecheck',FALSE]) && !attachedcar "],
		["Sprzedaj", "[] call Client_fnc_AuctionDialog",2]
	],

	[
		["(vehicle player) == player && count nearestobjects[player,['Land_ModernShowroom'],50] > 0 && (cursortarget getVariable['salecheck',FALSE])"],
		["Cena pojazdu", "[] call Client_fnc_AuctionCheckPrice",2]
	],

	[
		["(vehicle player) == player && count nearestobjects[player,['Land_ModernShowroom'],50] > 0 && (cursortarget getVariable['salecheck',FALSE]) && !(CursorTarget IN current_cars)"],
		["Kup", "[] call Client_fnc_AuctionPurchaseCar",2]
	],

	[
		["(vehicle player) == player && CursorTarget in Current_Cars && !imrestrained && !(player getVariable ['surrender', false])"],
		["Użyj klucza", "[CurrentCursorTarget] call Client_fnc_useKey",2]
	],

	[
		["(vehicle player) in Current_Cars && !imrestrained && !(player getVariable ['surrender', false])"],
		["Użyj klucza", "[vehicle player] call Client_fnc_useKey",2]
	],	

	[
		[" (CursorTarget isKindOf 'Air' || CursorTarget isKindOf 'Car' || CursorTarget isKindOf 'Boat') && vectorUp CursorTarget select 2 < 0.9 && CursorTarget in current_cars && !imrestrained"],
		["Odwróć", " CursorTarget setVectorUp [0,0,1]; CursorTarget setPosATL [(getPosATL currentcursortarget) select 0, (getPosATL currentcursortarget) select 1, ((getPosATL currentcursortarget) select 2) + 1]; ",2]
	],

	[
		[" (CursorTarget isKindOf 'Car' || CursorTarget isKindOf 'Ship') && player distance CursorTarget < 11 && CursorTarget in current_cars && !imrestrained && !attachedcar"],
		["Popchnij", "[] spawn Client_fnc_pushveh",2]
	],
	
	[
		[" (CursorTarget isKindOf 'Air' || CursorTarget isKindOf 'Car') && CursorTarget in Current_Cars && ( (myhouse distance getpos player < 50 || getpos player distance [872.141,1450.32,0.00143909] < 50 || getpos player distance [5477.27,3964.86,0.00143814] < 50 || player distance [933.33,1239.42,0.00143862] < 30 || player distance [5457.34,4074.5,0.00143909] < 30 || count (nearestterrainobjects[player,['BUILDING'],50] select {str _x find 'embarcadero' > -1}) > 0 || count (nearestobjects[player,['Land_Hangar_F'],50]) > 0 || count (nearestterrainobjects[player,['BUILDING'],50] select {str _x find 'taller' > -1}) > 0) || (myJob IN ['Cop','doc'] && count (nearestObjects[player,['land_jf_sheriff_station_01'],50]) > 0 ) || (myJob == 'EMS' && count (nearestObjects[player,['Land_buildingsfiredept1','land_POP_Hospital'],50]) > 0) || (myJob == 'Mafia' && count (nearestObjects[player,['Land_vvv_np_maison1'],50]) > 0) || (myJob == 'Biker' && count (nearestObjects[player,['Land_buildingsNightclub2'],50]) > 0) || (myJob == 'Mobster' && count (nearestObjects[player,['Land_buildingsCasino2'],50]) > 0) ) && !imrestrained && !attachedcar"],
		["Schowaj", "['Chowam pojazd',10, 'Client_fnc_storeCar',player,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorTarget,'cg_sndimg\sounds\repair.ogg'] spawn client_fnc_dotask",2]
	],

	
	[
		[" (CursorTarget isKindOf 'Air' || CursorTarget isKindOf 'Car') && CursorTarget in Current_Cars && ( count (cursorTarget getvariable ['information',[]]) == 0 && myJob != 'none' ) && !imrestrained"],
		["Schowaj", "['Chowam pojazd',15, 'Client_fnc_storeCar',player,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorTarget,'cg_sndimg\sounds\repair.ogg'] spawn client_fnc_dotask",2]
	],

	[
		[" (CursorTarget isKindOf 'Boat' || CursorTarget isKindOf 'Ship') && CursorTarget in Current_Cars && !imrestrained && count (nearestterrainobjects[player,['BUILDING'],50] select {str _x find 'embarcadero' > -1}) > 0"],
		["Schowaj", "['Chowam pojazd',25, 'Client_fnc_storeCar',player,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorTarget,'cg_sndimg\sounds\repair.ogg'] spawn client_fnc_dotask",2]
	],




//furniture
	[
		["player distance getpos CursorTarget < 20 && CursorTarget IN mychairs "],
		["Obróć", " _dir = getdir currentcursortarget; CursorTarget setdir (_dir + 90); " ,2]
	],

	[
		[" (player distance myoffice < 25 || (player distance myhouse < 25 && player getVariable 'houselevel' > 1 )) && count mychairs > 0 "],
		["Usuń wszystkie meble", "  [0] spawn client_fnc_spawnfurniture; attachedfurniture = false; ",2]
	],


	[
		["player distance getpos CursorTarget < 20 && CursorTarget IN mychairs "],
		["Usuń", " _pia = mychairs FIND currentcursortarget; mychairs DELETEAT _pia; deletevehicle currentcursortarget; ",2]
	],

	[
		["player distance getpos CursorTarget < 20 && CursorTarget IN mychairs "],
		["Podnieś", " fuckingcouch = currentcursortarget; fuckingcouch attachto [player,[0,1.8,2]]; attachedfurniture = true; ",2]
	],

	[
		["(player distance myoffice < 25 || (player distance myhouse < 25 && player getVariable 'houselevel' > 1 )) && attachedfurniture "],
		["Postaw", " [2] spawn client_fnc_spawnfurniture; attachedfurniture = false; ",2]
	],

	/*
	[
		["(player distance myoffice < 25 || (player distance myhouse < 25 && player getVariable 'houselevel' > 1 )) && player distance getpos CursorTarget < 20 && !attachedfurniture "],
		["Meble", " createdialog 'placefurniture' ",2]
	],
	*/

	[
		[" attachedbarrier "],
		["Postaw", " [] spawn client_fnc_placebarrier; ",2]
	],

	[
		[" !isNil{cursorTarget getVariable 'evidenceInformation'} && myJob == 'Cop' && player IN currentDetectives"],
		["Zbierz dowody", "['Zbieram  dowody',30,client_fnc_evidence,0,'AinvPknlMstpSnonWnonDnon_medic_1',[cursorobject],'cg_mission_files\sounds\patdown1.ogg'] spawn client_fnc_dotask; ",2]	
	],

	[
		[" !isNil{cursorTarget getVariable 'evidenceInformation'}"],
		["Zniszcz dowody", "['Zacieram ślady',120,client_fnc_destroyEvidence,0,'AinvPknlMstpSnonWnonDnon_medic_1',[cursorobject],'cg_mission_files\sounds\patdown1.ogg'] spawn client_fnc_dotask; ",2]	
	],

	[
		[" count nearestObjects[player,['plp_up_WoodBarrierLongPolice','plp_up_WoodBarrierShortPoliceLightsOn','plp_up_TrafficConeOrange','plp_up_WoodBarrierLongRed','plp_up_WoodBarrierShortRedLightsOn','plp_up_TrafficConeRed','plp_up_MetalFenceGrey'],5] > 0 "],
		["Podnieś", " [] spawn client_fnc_pickupbarrier ",2]
	],

	[
		["isPlayer CursorTarget && CursorTarget isKindOf 'Man' && CursorTarget == vehicle CursorTarget && myJob IN ['Cop','doc','Mobster','Legal','EMS'] "],
		["Daj licencję", " ['Daje licencje',6,'client_fnc_grantlicense',CurrentCursorTarget,'vvv_anim_ticket',CurrentCursorTarget,'cg_mission_files\sounds\patdown1.ogg'] spawn client_fnc_dotask ",2]
	],
	
	[
		["isPlayer CursorTarget && CursorTarget isKindOf 'Man' && CursorTarget == vehicle CursorTarget && myJob IN ['Cop','doc','Mobster','Legal','EMS']"],
		["Zabierz licencje", " ['Zabieram licencje',6,'client_fnc_revokelicense',CurrentCursorTarget,'vvv_anim_ticket',CurrentCursorTarget,'cg_mission_files\sounds\patdown1.ogg'] spawn client_fnc_dotask ",2]
	],

	[
		[" isPlayer CursorTarget && CursorTarget isKindOf 'Man' "],
		["Pokaż ID", " ['Daję dowód osobisty',3,'client_fnc_giveLicense',CurrentCursorTarget,'vvv_anim_ticket',1,'cg_mission_files\sounds\patdown1.ogg'] spawn client_fnc_dotask ",2]
	],

	[
		[" !imrestrained && !(isNil 'getLicensePerson') "],
		["Zobacz ID", "  [format['%1', getLicensePerson], true] spawn domsg; getLicensePerson = nil; ",2]
	],

	[
		[" isPlayer CursorTarget && CursorTarget isKindOf 'Man' && !imrestrained && myJob IN ['Cop','doc','EMS'] && count (nearestObjects[player,['land_jf_sheriff_station_01','Land_buildingsfiredept1','land_POP_Hospital'],100]) > 0"],
		["Zidentyfikuj osobę", " ['Identyfikuję osobę',15,'client_fnc_getName',CurrentCursorTarget,'AinvPknlMstpSnonWnonDnon_medic_1',player,'cg_mission_files\sounds\patdown1.ogg',CurrentCursorTarget] spawn client_fnc_dotask     ",2]
	],

	[
		[" myJob IN ['Cop','EMS'] && isPlayer CursorTarget && CursorTarget isKindOf 'Man' && !imrestrained"],
		["Sprawdzenie trzeźwości", " ['Sprawdzam trzeeźwość',5,'client_fnc_sendIntox',CurrentCursorTarget,'AinvPknlMstpSnonWnonDnon_medic_1',player,'cg_mission_files\sounds\patdown1.ogg',CurrentCursorTarget] spawn client_fnc_dotask ",2]
	],

	/*
	[
		[" myJob IN ['Cop'] && CursorTarget isKindOf 'Car' && !imrestrained && !isNil{cursorTarget getVariable 'ivory_windowtint'}"],
		["Tint Percent", " ['Getting Tint Percentage',5,'client_fnc_getTint',CurrentCursorTarget,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorTarget,'cg_mission_files\sounds\patdown1.ogg'] spawn client_fnc_dotask   ",2]
	],
	*/

	[
		[" (myJob IN ['Cop','doc','DA'] || (myJob == 'Legal' && player getVariable 'Legal' > 5)) && isPlayer CursorTarget && CursorTarget isKindOf 'Man' && CursorTarget == vehicle CursorTarget && getpos player distance [6984.76,4045.14,0.00143433] < 150 && !imrestrained"],
		["Aresztuj", " createdialog 'jailprocess';",2]
	],

	[
		[" (myJob IN ['Cop','doc','DA'] || (myJob == 'Legal' && player getVariable 'Legal' > 5)) && isPlayer CursorTarget && CursorTarget isKindOf 'Man' && CursorTarget == vehicle CursorTarget && count (nearestObjects[player,['land_jf_sheriff_station_01'],100]) > 0 && ((animationstate CurrentCursorTarget) == 'amovpercmstpsnonwnondnon_amovpercmstpssurwnondnon' || (animationstate CurrentCursorTarget) == 'Incapacitated' || (animationstate CurrentCursorTarget) == 'AmovPercMstpSnonWnonDnon_Ease' || (animationstate CurrentCursorTarget) == 'Acts_AidlPsitMstpSsurWnonDnon_loop') && !imrestrained"],
		["Ustaw kaucje", " createDialog 'Bail_Menu'; ",2]
	],

	[
		[" count acceptBail > 0 "],
		["Akceptuj kaucje", " [true] spawn client_fnc_acceptBail ",2]
	],

	[
		[" count acceptBail > 0 "],
		["Odmów kaucji", " [false] spawn client_fnc_acceptBail ",2]
	],

	[
		[" myJob == 'Legal' && player getVariable 'Legal' > 5 && isPlayer CursorTarget && CursorTarget isKindOf 'Man' && CursorTarget == vehicle CursorTarget && !imrestrained"],
		["Oddaj kaucje", " [currentcursortarget] spawn client_fnc_removeBail; ",2]
	],

	[
		[" myJob == 'Legal' && player getVariable 'Legal' > 5 && isPlayer CursorTarget && CursorTarget isKindOf 'Man' && CursorTarget == vehicle CursorTarget && !imrestrained"],
		["Zamknij kaucje", " [currentcursortarget] spawn client_fnc_closeBail; ",2]
	],

	[
		[" myJob IN ['Cop','doc','DA'] && isPlayer CursorTarget && CursorTarget isKindOf 'Man' && CursorTarget == vehicle CursorTarget && ((animationstate CurrentCursorTarget) == 'amovpercmstpsnonwnondnon_amovpercmstpssurwnondnon' || (animationstate CurrentCursorTarget) == 'Incapacitated' || (animationstate CurrentCursorTarget) == 'AmovPercMstpSnonWnonDnon_Ease' || (animationstate CurrentCursorTarget) == 'Acts_AidlPsitMstpSsurWnonDnon_loop') && !imrestrained "],
		["Protokół aresztowania", " createdialog 'insertPBA'; ",2]
	],

	[
		[" (myJob IN ['Cop','doc','DA'] || (myJob == 'Legal' && player getVariable 'Legal' > 5)) && isPlayer CursorTarget && CursorTarget isKindOf 'Man' && CursorTarget == vehicle CursorTarget && getpos player distance [5556.2,6291.29,0.00143433] < 150 && !imrestrained"],
		["Aresztuj", " createdialog 'jailprocess';",2]
	],

	/*
	[
		[" (CursorTarget getVariable['dead',FALSE]) && isPlayer CursorTarget && CursorTarget isKindOf 'Man' && !imrestrained"],
		["Check Pulse", " ['Checking Pulse',3,'client_fnc_checkPulse',CurrentCursorTarget,'AinvPknlMstpSnonWnonDnon_medic_1',player,'cg_mission_files\sounds\patdown1.ogg',CurrentCursorTarget] spawn client_fnc_dotask ",2]
	],
	*/

	[
		["!(cursortarget getVariable['dead',FALSE]) && isPlayer CursorTarget && CursorTarget isKindOf 'Man' && (animationstate CurrentCursorTarget) == 'amovpercmstpsnonwnondnon_amovpercmstpssurwnondnon' || (animationstate CurrentCursorTarget) == 'Incapacitated' || (animationstate CurrentCursorTarget) == 'AmovPercMstpSnonWnonDnon_Ease' || (animationstate CurrentCursorTarget) == 'Acts_AidlPsitMstpSsurWnonDnon_loop' && !imrestrained"],
		["Przeszukaj", " ['Przeszukuję',30,'client_fnc_startpatdown',CurrentCursorTarget,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorTarget,'cg_mission_files\sounds\patdown1.ogg'] spawn client_fnc_dotask ",2]
	],

	[
		[" (myJob IN ['Cop','doc','Biker','Mobster','Mafia']) && isPlayer CursorTarget && CursorTarget isKindOf 'Man' && CursorTarget == vehicle CursorTarget && !imrestrained"],
		["Przetrzep", " ['Przetrzepuje',5,'client_fnc_frisk',CurrentCursorTarget,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorTarget,'cg_mission_files\sounds\patdown1.ogg'] spawn client_fnc_dotask ",2]
	],


	[
		["(isPlayer CursorTarget && CursorTarget isKindOf 'Man') && ((animationstate CurrentCursorTarget) == 'amovpercmstpsnonwnondnon_amovpercmstpssurwnondnon' || (animationstate CurrentCursorTarget) == 'Incapacitated' || (animationstate CurrentCursorTarget) == 'AmovPercMstpSnonWnonDnon_Ease' || (animationstate CurrentCursorTarget) == 'Acts_AidlPsitMstpSsurWnonDnon_loop') && !imrestrained "],
		["Weź $", " ['Zbieram pieniądze',10,'client_fnc_takePlayerMoney',CurrentCursorTarget,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorTarget,'cg_mission_files\sounds\blindfold.ogg'] spawn client_fnc_dotask",2]
	],


	[
		["(!(cursortarget getVariable['dead',FALSE]) && isPlayer CursorTarget && CursorTarget isKindOf 'Man') && ((animationstate CurrentCursorTarget) == 'incapacitated' || (animationstate cursorObject) == 'deadstate' || (animationState cursorObject) == 'amovppnemstpsraswrfldnon' || (animationState cursorObject) == 'unconsciousfaceup' || cursorObject getVariable['surrender',false]) && !imrestrained"],
		["Zakuj", " ['Zakuwam',3,'client_fnc_restrain',CurrentCursorTarget,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorTarget,'cg_mission_files\sounds\handcuff.ogg'] spawn client_fnc_dotask",2]
	],

	[
		[" myJob IN ['Cop','doc'] && isPlayer CursorTarget && CursorTarget isKindOf 'Man' && ((animationstate CurrentCursorTarget) == 'Acts_AidlPsitMstpSsurWnonDnon_loop' || (animationstate CurrentCursorTarget) == 'amovpercmstpssurwnondnon' || (animationstate CurrentCursorTarget) == 'amovpercmstpsnonwnondnon_amovpercmstpssurwnondnon') && !imrestrained"],
		["Rozkuj", " ['Rozkuwam',3,'client_fnc_unrestrain',CurrentCursorTarget,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorTarget,'cg_mission_files\sounds\handcuff.ogg'] spawn client_fnc_dotask",2]
	],

	[
		[" !(myJob IN ['Cop','doc']) && isPlayer CursorTarget && CursorTarget isKindOf 'Man' && ((animationstate CurrentCursorTarget) == 'Acts_AidlPsitMstpSsurWnonDnon_loop' || (animationstate CurrentCursorTarget) == 'amovpercmstpssurwnondnon' || (animationstate CurrentCursorTarget) == 'amovpercmstpsnonwnondnon_amovpercmstpssurwnondnon') && !imrestrained"],
		["Rozkuj", " ['Rozkuwam',35,'client_fnc_unrestrain',CurrentCursorTarget,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorTarget,'cg_mission_files\sounds\handcuff.ogg'] spawn client_fnc_dotask",2]
	],


	[
		["isPlayer CursorTarget && CursorTarget isKindOf 'Man' && (headgear CursorTarget) != 'mgsr_headbag' && ((animationstate CursorTarget) == 'amovpercmstpsnonwnondnon_amovpercmstpssurwnondnon' || (animationstate CursorTarget) == 'Incapacitated' || (animationstate CursorTarget) == 'AmovPercMstpSnonWnonDnon_Ease' || (animationstate CursorTarget) == 'Acts_AidlPsitMstpSsurWnonDnon_loop') && !imrestrained"],
		["Załóż worek", " ['Zakładam worek',5,'client_fnc_blindfold',CurrentCursorTarget,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorTarget,'cg_sndimg\sounds\blindfold.ogg'] spawn client_fnc_dotask ",2]
	],

	[
		["isPlayer cursorObject && cursorObject isKindOf 'Man' && (animationstate cursorObject) == 'acts_aidlpsitmstpssurwnondnon_loop' && !imrestrained && cursorObject getVariable['tf_voiceVolume',1] > 0"],
		["Zaknebluj", "cursorObject setVariable ['tf_voiceVolume', 0, true];; ['Zostałeś zakneblowany',true] remoteexec ['domsg',cursorObject];",2]
	],

	[
		["isPlayer CursorTarget && CursorTarget isKindOf 'Man' && !imrestrained && cursorObject getVariable['tf_voiceVolume',0] == 0"],
		["Wyjmij knebel", "cursorObject setVariable ['tf_voiceVolume', 1, true];; ['Wyjęto ci knebel',true] remoteexec ['domsg',cursorObject];",2]
	],

	[
		["isPlayer CursorTarget && CursorTarget isKindOf 'Man' && !imrestrained && (headgear CurrentCursorTarget) == 'mgsr_headbag'"],
		["Zdejmij worek", " ['Zdejmuje worek',5,'client_fnc_unblindfold',CurrentCursorTarget,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorTarget,'cg_sndimg\sounds\blindfold.ogg'] spawn client_fnc_dotask",2]
	],

	[
		[" isPlayer CursorTarget && CursorTarget isKindOf 'Man'", "(animationstate CurrentCursorTarget) == 'amovpercmstpsnonwnondnon_amovpercmstpssurwnondnon' || (animationstate CurrentCursorTarget) == 'Incapacitated' || (animationstate CurrentCursorTarget) == 'AmovPercMstpSnonWnonDnon_Ease' || (animationstate CurrentCursorTarget) == 'Acts_AidlPsitMstpSsurWnonDnon_loop' && !imrestrained"],
		["Wrzuć do pojazdu", " ['Wrzucam do pojazdu',10,'client_fnc_putincar',CurrentCursorTarget,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorTarget,'cg_mission_files\sounds\patdown1.ogg'] spawn client_fnc_dotask ",2]
	],

	[
		[" (CursorTarget getVariable['dead',FALSE]) && isPlayer CursorTarget && CursorTarget isKindOf 'Man' && !imrestrained && !attachedplayer && count (attachedobjects currentcursortarget) == 0 "],
		["Ciągnij ciało", " ['Zaczynam ciągnąć',15,'client_fnc_grabBody',CurrentCursorTarget,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorTarget,'cg_mission_files\sounds\patdown1.ogg'] spawn client_fnc_dotask ",2]
	],

	[
		[" isPlayer CursorTarget && CursorTarget isKindOf 'Man'", "(animationstate CurrentCursorTarget) == 'amovpercmstpsnonwnondnon_amovpercmstpssurwnondnon' || (animationstate CurrentCursorTarget) == 'Incapacitated' || (animationstate CurrentCursorTarget) == 'AmovPercMstpSnonWnonDnon_Ease' || (animationstate CurrentCursorTarget) == 'Acts_AidlPsitMstpSsurWnonDnon_loop' && !imrestrained"],
		["Eskortuj", " ['Zaczynam eskortę',5,'client_fnc_attach',CurrentCursorTarget,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorTarget,'cg_mission_files\sounds\patdown1.ogg'] spawn client_fnc_dotask ",2]
	],

	[
		["attachedplayer && !imrestrained"],
		["Przestań ekortować", " ['Kończę eskortę',5,'client_fnc_detach',player,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorTarget,'cg_mission_files\sounds\patdown1.ogg'] spawn client_fnc_dotask ",2]
	],

	[
		["isPlayer CursorTarget && CursorTarget isKindOf 'Man' && bankrobber == 1 && !imrestrained"],
		["Daj $", "[CurrentCursorTarget] call Client_fnc_giveCash",2]
	],

	[
		["isPlayer CursorTarget && CursorTarget isKindOf 'Man' && (myjob == 'doc' || myjob == 'Biker' || myjob == 'Mobster' || myjob == 'Mafia' || myJob IN ['Cop','doc'] || myjob == 'EMS' || myjob == 'Legal' || myjob == 'DA')"],
		["Awansuj", "[player, myJob] remoteExec ['client_fnc_promotionFirst', CurrentCursorTarget]; ",2]
	],

	[
		[" myJob IN ['Cop','doc'] && isPlayer CursorTarget && CursorTarget isKindOf 'Man' && !imrestrained"],
		["Mandat", " createdialog 'np_ticketpolice'; ",2]
	],

	[
		["typeof cursorObject == 'Land_Centrelink' && myJob == 'none'"],
		["Zapłać mandaty","[] spawn client_fnc_taketicket;"]
	],




//shops and offices garages etc

	//private shops
	/*
	[
		["player distance myshop < 3 && !imrestrained"],
		["Shop Inventory", "['Your crate will automatically despawn in 5 minutes - people can not use your shop while it is out!', true] spawn domsg; [player] remoteExec ['server_fnc_retreiveStore',2] ",3]
	],

	[
		["player distance myshop < 3 && !imrestrained"],
		["Shop Prices", "[shopcontent,'start'] call client_fnc_updatePrices;",3]
	],

	[
		["(typeof CurrentCursorTarget) IN ['Land_buildingCommercial1','Land_buildingCommercial2'] && !imrestrained"],
		["Browse Shop", "[typeof CurrentCursorTarget,player] remoteExec ['server_fnc_retreiveStoreShopper',2]",3]
	],
	*/

	[
		["(typeof CursorTarget == 'Land_buildingApartments2A' && player distance getpos CursorTarget < 20 && (myJob IN ['Legal','DA'] || 20 IN licenseArray) && player distance [8186.91,2862.51,0.00143814] < 100) && myoffice isEqualTo [0,0,0]"],
		["Wynajmij biuro $500", " createdialog 'rentshop'",3]
	],

	[
		["(typeof CursorTarget == 'Land_buildingApartments2A' && player distance getpos CursorTarget < 20 && player distance [8186.91,2862.51,0.00143814] > 200) && !imrestrained && myoffice isEqualTo [0,0,0]"],
		["Wynajmij biuro $500", " createdialog 'rentshop' ",3]
	],

	[
		["player distance myoffice < 10 && !(myoffice isEqualTo [0,0,0])"],
		["Zamknij biuro", " [myoffice, player] remoteExec['server_fnc_closeOffice',2]  ",3]
	],
	//


	[
		["typeof CursorTarget == 'Land_buildingBarbers1' && !imrestrained"],
		["Fryzjer", "closedialog 0; createdialog 'HairDresser_Menu'; ['Glasses'] spawn client_fnc_loadStore;",3]
	],

	[
		["typeof CursorTarget IN ['Land_ModernShowroom'] && !imrestrained"],
		["Kiesta", "createdialog 'buycar';",3]
	],

	[ 
		["str CursorObject find 'hangar' > -1"], 
		["Salon heli", "createdialog 'buycar';",3] 
	],

	[ 
		["str CursorObject find 'embarcadero' > -1"], 
		["Salon łódek", "createdialog 'buycar';",3] 
	],

	[
		["typeof CursorTarget IN ['Land_HouseDoubleAL','Land_HouseDoubleAL2','Land_ivory_trailer_04','Land_ivory_trailer_01','Land_ivory_trailer_02','Land_ivory_trailer_03','Land_ivory_trailer_06','Land_ivory_trailer_05','Land_Ranch_DED_Ranch_02_F','Land_Ranch_DED_Ranch_01_F','Land_HouseC_R','Land_HouseC1_L','Land_HouseA1_L','Land_HouseB1_L']"],
		["Światło", " [currentcursortarget] spawn client_fnc_houselight;",3]
	],
/*
	[
		["player distance myhouse < 10"],
		["Dirty Money Stash", " [] call Client_fnc_openStash; ",3]
	],
	*/
	
	[
		["player distance myhouse < 10 || typeof CursorTarget IN ['Land_PostB']"],
		["Poczta", "[] spawn client_fnc_openMail",3]
	],

	[
		["str CursorObject find 'mailboxnorth' > -1"],
		["Wyślij List", "createdialog 'client_findMail'",3]
	],

	[
		["cursorObject getVariable['raretrader',false]"],
		["Sprzedaż ryb", "closedialog 0; createdialog 'RareFish_Menu'; ['rarefish'] spawn client_fnc_LoadStore;",3]
	],

	[
		["cursorObject getVariable['raretrader',false]"],
		["Wymień rzadkie futro", "closedialog 0; [] spawn client_fnc_rarePelt;",3]
	],

	[
		["typeof CursorObject IN ['Land_Coffee_DED_Coffee_02_F','Land_Coffee_DED_Coffee_01_F'] && !(CursorTarget getVariable['robbing',FALSE]) && currentweapon player != '' && !(currentweapon player in ['cg_hatchet','cg_pickaxe','cg_bat','Binocular','Rangefinder']) "],
		["Napadnij", "closedialog 0; [] spawn client_fnc_robberyStore;",3]
	],

	[
		["typeof cursorObject IN ['Land_Coffee_DED_Coffee_02_F','Land_Coffee_DED_Coffee_01_F']"],
		["Ciucholand", "closedialog 0; createdialog 'Clothing_Menu'; ['clothing'] spawn client_fnc_LoadStore;",3]
	],

	[
		["typeof CursorObject == 'Land_buildingGunStore1'"],
		["Sklep z bronią", "closedialog 0; createdialog 'gun_menu'; ['gunstore'] spawn client_fnc_LoadStore;",3]
	],

	[
		["typeof CursorObject == 'land_cg_dunkinbronuts'"],
		["Donut Menu", "closedialog 0; createdialog 'food_menu'; ['donuts'] spawn client_fnc_LoadStore;",3]
	],

	[
		["typeof cursorObject == 'land_cg_dexters'"],
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
		["typeof CursorObject IN ['Land_buildingBar1','Land_Pub_A','plp_bo_BeachBar'] "],
		["Bar", "closedialog 0; createdialog 'food_menu'; ['bar'] spawn client_fnc_LoadStore;",3]
	],
////////////////////////////////////
///////////////////////////////////
//////////////////////////////////

	[
		["getpos player distance [3188.12,3577.67,0.00144958] < 10 || getpos player distance [3273.55,3574.82,0] < 10"],
		["Autobus do Atlantis City", "closedialog 0; [] spawn client_fnc_bus;",3]
	],

	[
		[" getpos player distance [801.153,1391.25,0.00143814] < 5"],
		["Nightclub Bar", "closedialog 0; createdialog 'food_menu'; ['nbar'] spawn client_fnc_LoadStore;",3]
	],

	[
		[" casinoOpen && getpos player distance [939.047,1306.81,0] < 10"],
		["Casino Bar", "closedialog 0; createdialog 'food_menu'; ['bar'] spawn client_fnc_LoadStore;",3]
	],

	[
		["typeof CursorObject IN ['Land_Coffee_DED_Coffee_02_F','Land_Coffee_DED_Coffee_01_F','Land_Shop_DED_Shop_01_F','Land_Shop_DED_Shop_02_F']"],
		["Sklep wielobranżowy", "closedialog 0; createdialog 'GeneralStore_Menu'; ['general'] spawn client_fnc_LoadStore;",3]
	],

	[
		["myjob == 'COP' && typeof cursorobject IN ['Land_PoliceStation','Land_ScriptOase_PoliceHeadquarters'] && !imrestrained && player distance [1355.23,997.027,4.41015] <4"],
		["Wyposażenie policji", "closedialog 0; createdialog 'police_equipment'; ['police_gunstore'] spawn client_fnc_LoadStore;",3]
	],

	[
		["getPlayerUID player IN tempgangmoro && player distance [2421.72,4169.12,0.00143433] < 20"],
		["Wyposażenie gangu", "closedialog 0; createdialog 'gang_equipment'; ['gang_gunstore'] spawn client_fnc_LoadStore;",3]
	],

	[
		["myjob == 'Ems' && typeof cursorobject == 'land_POP_Hospital' && !imrestrained"],
		["Wyposażenie EMS", "closedialog 0; createdialog 'ems_equipment'; ['ems_uniformstore'] spawn client_fnc_LoadStore;",3]
	],

	[
		["myjob == 'COP' && typeof cursorobject IN ['Land_PoliceStation','Land_ScriptOase_PoliceHeadquarters'] && !imrestrained && player distance [1355.1,997.385,4.41015] <8 && player in currentMarshals"],
		["Zielona naszywka", "[player,'usms_sog_patch_g'] call BIS_fnc_setUnitInsignia;",3]
	],

	[
		["myjob == 'COP' && typeof cursorobject IN ['Land_PoliceStation','Land_ScriptOase_PoliceHeadquarters'] && !imrestrained && player distance [1355.1,997.385,4.41015] <8 && player in currentMarshals"],
		["Niebieska naszywka", "[player,'usms_sog_patch_b'] call BIS_fnc_setUnitInsignia;",3]
	],

	[
		["myjob == 'COP' && typeof cursorobject IN ['Land_PoliceStation','Land_ScriptOase_PoliceHeadquarters'] && !imrestrained && player distance [1355.1,997.385,4.41015] <8 && (currentWeapon player) == 'bnae_trg42_virtual'"],
		["Zwróć Karabin", "[] spawn client_fnc_returnrifle;",3]
	],

	[
		["myjob == 'Mafia' && typeof cursorobject IN ['Land_buildingsCasino2'] && !imrestrained"],
		["Sklep Mafii", "closedialog 0; createdialog 'mafia_equipment'; ['mafia_gunstore'] spawn client_fnc_LoadStore;",3]
	],
/*
	[ 
		["(getpos player) distance [1049.88,3657.15,0.00143814] < 30"], 
		["Parking policyjny", "[CurrentCursorTarget] call Client_fnc_openCarYard",3] 
	],


	[ 
		["str CursorObject find 'otros' > -1 || str CursorObject find 'garaje' > -1 || str cursorObject find 'tallerdepinturaabandonado' > -1"], 
		["Customize Vehicle", "createdialog 'upgradecar' ",3] 
	],

	[ 
		["str CursorObject find 'otros' > -1 || str CursorObject find 'garaje' > -1 || str CursorObject find 'tallerdepinturaabandonado' > -1"], 
		["Upgrade Vehicle", "[] spawn client_fnc_carupdate;",3] 
	],
*/
	[
		[" ( (myJob IN ['Cop','doc'] && typeof cursorobject IN ['Land_PoliceStation','Land_ScriptOase_PoliceHeadquarters']) || (myjob == 'EMS' && (typeof cursorobject IN ['Land_buildingsfiredept1','land_POP_Hospital'])) || (myJob == 'Mafia' && (typeof cursorobject == 'Land_vvv_np_maison1')) || (myJob == 'Biker' && (typeof cursorobject == 'Land_buildingsNightclub2')) || (myJob == 'Mobster' && (typeof cursorobject == 'Land_buildingsCasino2')) || (( myJob IN ['Cop','doc','EMS'] ) && ( str CursorObject find 'em_heliport' > -1 || str CursorObject find 'embarcadero' > -1 )) || (Mayor && player distance myhouse < 30) || (myJob == 'Legal' && (typeof cursorobject == 'Land_courthouse'))) && !imrestrained "],
		["Garaż pracy", "[CursorObject] call client_fnc_opengaragepolice;  ",3]
	],

	[ 
		["!attachedcar && (player distance myhouse < 30 || typeof CursorTarget IN ['Land_ModernShowroom'] || player distance [933.33,1239.42,0.00143862] < 30 || player distance [5457.34,4074.5,0.00143909] < 30 || str CursorObject find 'otros' > -1 || str CursorObject find 'garaje' > -1 || str CursorObject find 'tallerdepinturaabandonado' > -1 || str CursorObject find 'hangar' > -1 || str CursorObject find 'embarcadero' > -1) && !imrestrained"], 
		["Garaż", "[cursorObject] call Client_fnc_openGarage",3] 
	],
	
	[ 
		["!attachedcar && (str CursorObject find 'otros' > -1 || str CursorObject find 'garaje' > -1 || str CursorObject find 'tallerdepinturaabandonado' > -1 || str CursorObject find 'hangar' > -1 || str CursorObject find 'embarcadero' > -1) && !imrestrained"], 
		["Napraw $1K", " [vehicle player] spawn client_fnc_garageRepair ",3] 
	],
	
	[
		["(player distance [855.632,1092.4,0.00143909] < 10) && !isNull houseinvitation && !imrestrained "],
		["Akceptuj współaściciela", "[] spawn client_fnc_AcceptShareHouse",3]
	],

	[
		["(player distance [855.632,1092.4,0.00143909] < 10) && !imrestrained "],
		["Resetuj współaściciela", "_myguid = getplayeruid player; _theirguid = '0'; _myarray = [_myguid,_theirguid]; _myarray spawn client_fnc_sharehousefinish;",3]
	],
/*
	[
		["player getVariable 'houselevel' == 3 && isPlayer CursorTarget && CursorTarget isKindOf 'Man' && (player distance [855.632,1092.4,0.00143909] < 10) && !imrestrained"],
		["Temp Disabled", ',3]
	],
//[player,getplayerUID player] remoteexec ['client_fnc_ShareHouse', currentcursortarget]
*/

	[
		["(player distance [855.632,1092.4,0.00143909] < 10) && player getvariable 'houselevel' < 3"],
		["Ulepsz dom $225K", "[] spawn client_fnc_UpgradeHouse",3]
	],

	[
		["typeof cursorObject == 'Land_Market_DED_Market_03_F'"],
		["Wymień telefon", "closedialog 0; [] call client_fnc_checkPhone; trackedby = [];",3]
	],

	[
		["typeof cursorObject == 'Land_Market_DED_Market_03_F'"],
		["Naładuj telefon", "closedialog 0; ['add','battery',200] call client_fnc_sustain;",3]
	],


// jobs / situational

	[
		[" myJob IN ['Cop','DA'] && (( typeof cursorobject IN ['Land_PoliceStation','Land_ScriptOase_PoliceHeadquarters']) || ( vehicle player != player )) && !imrestrained "],
		["Komputer PD", "createdialog 'wanted';",3]
	],

	[
		[" myJob IN ['Legal'] && typeof cursorObject == 'Land_courthouse' && ( vehicle player == player ) && !imrestrained "],
		["System DOJ", "createdialog 'wanted3';",4]
	],

	[
		["typeof cursorObject == 'Land_courthouse' && ( vehicle player == player ) && !imrestrained "],
		["Lista poszukiwanych", "createdialog 'wanted2';",4]
	],

	[
		["(typeof CursorTarget IN ['Land_Centrelink','Land_CommonwealthBank','Land_Bank_DED_House_01_F'] || str CursorObject find 'mcl_atm' > -1) && myJob == 'Mobster' && bankrobber == 1 && !imrestrained"],
		["Mobster Bank", "[player] remoteExec['Client_fnc_openMobsterATM',2]",4]
	],

	[
		["(typeof CursorTarget IN ['Land_Centrelink','Land_CommonwealthBank','Land_Bank_DED_House_01_F'] || str CursorObject find 'mcl_atm' > -1) && myJob == 'Mafia' && bankrobber == 1 && !imrestrained"],
		["Mafia Bank", "[player] remoteExec['Client_fnc_openMafiaATM',2]",4]
	],

	[
		["(typeof CursorTarget IN ['Land_Centrelink','Land_CommonwealthBank','Land_Bank_DED_House_01_F'] || str CursorObject find 'mcl_atm' > -1) && myJob == 'Biker' && bankrobber == 1 && !imrestrained"],
		["Biker Bank", "[player] remoteExec['Client_fnc_openBikerATM',2]",4]
	],

	[
		["(typeof CursorTarget IN ['Land_Centrelink','Land_CommonwealthBank','Land_Bank_DED_House_01_F'] || str CursorObject find 'mcl_atm' > -1) && ( Mayor || Psenate || (player getVariable 'legal' == 10) ) && !imrestrained && myJob IN ['Legal']"],
		["Govt Bank", "[player] remoteExec['Client_fnc_openGovtATM',2]",4]
	],

	[
		["(typeof CursorTarget IN ['Land_CommonwealthBank','Land_Bank_DED_House_01_F','Land_Kangaro0_Bank_01_F']) && bankrobber == 1 && !imrestrained"],
		["Bank", "[] call Client_fnc_openATM",4]
	],

	[
		["(typeof CursorTarget IN ['Land_Centrelink'] || str CursorObject find 'mcl_atm' > -1) && bankrobber == 1 && !imrestrained"],
		["Bankomat", "[] call Client_fnc_openATM",3]
	],

	[
		["player distance myhouse < 10 && !imrestrained"],
		["Otwórz schowek", "['Skrzynka zniknie za 1 minutę!', true] spawn domsg; [player] remoteExec ['server_fnc_retreivehouse',2]",4]
	],

	[
		["((myjob == 'Mafia' && typeof CursorTarget == 'Land_buildingsCasino2' && player getVariable 'Mafia' >= 8) || (myjob == 'Mobster' && typeof cursorobject == 'Land_buildingsCasino2' && player getVariable 'Mobster' >= 8) || (myjob == 'Biker' && typeof cursorobject == 'Land_buildingsNightclub2' && player getVariable 'Biker' >= 8)) && !imrestrained"],
		["Otwórz schowek", "['Skrzynka zniknie za 1 minutę!', true] spawn domsg; [player, myJob] remoteExec ['server_fnc_retreivegang',2]",4]
	],


/*
	[
		["((myjob == 'Cop' && typeof CursorTarget == 'Land_vvv_np_maison1' && player getVariable 'Cop' > 4))"],
		["Przeszukaj schowek", "['Skrzynka zniknie za 1 minutę!', true] spawn domsg; [player, ""Mafia""] remoteExec ['server_fnc_retreivegang',2]",4]
	],


	[
		["((myjob == 'Cop' && typeof cursorobject == 'Land_buildingsCasino2' && player getVariable 'Cop' > 4))"],
		["Przeszukaj schowek", "['Skrzynka zniknie za 1 minutę!', true] spawn domsg; [player, ""Mobster""] remoteExec ['server_fnc_retreivegang',2]",4]
	],

	[
		["((myjob == 'Cop' && typeof cursorobject == 'Land_buildingsNightclub2' && player getVariable 'Cop'> 4))"],
		["Przeszukaj schowek", "['Skrzynka zniknie za 1 minutę!', true] spawn domsg; [player, ""Biker""] remoteExec ['server_fnc_retreivegang',2]",4]
	],
*/

	[
		["(str CursorObject find 'gymbench' > -1 || str CursorObject find 'gymrack' > -1)"],
		["Work Out", "['Doing Workout',60,'client_fnc_workout',player,'AmovPercMstpSnonWnonDnon_exercisePushup',player,''] spawn client_fnc_dotask; ",4]
	],

	[
		["Mayor && player distance myhouse < 25"],
		["Ustaw Podatek", "createdialog 'tax_menu';",4]
	],

	[
		["(Mayor || Psenate) && player distance myhouse < 25"],
		["Zapłać Govt", " createdialog 'bill_menu'; ",4]
	],

	[
		[" myJob IN ['Mafia'] && (typeof cursorobject IN ['Land_buildingsCasino2']) && player getVariable 'Mafia' >= 8 "],
		["Ustaw podatek kasyna", "createdialog 'casinoRate_Menu';",4]
	],

	[
		[" (typeof cursorobject IN ['Land_buildingsCasino2']) && player distance [946.689,1274.56,0] < 5 && (myJob == 'Mafia' && player getVariable 'Mafia' >= 8) "],
		["Otwórz sejf kasyna", "[player] remoteExec['Client_fnc_openCasinoVault',2]",4]
	],

	[
		[" vaultrobber && time > vaultTimer "],
		["Napadnij sejf kasyna", " ['Kradnę pieniądze',15,'client_fnc_robVault',player,'AinvPknlMstpSnonWnonDnon_medic_1',player,'cg_sndimg\sounds\repair.ogg'] spawn client_fnc_dotask ",4]
	],

	[
		[" !casinoOpen && myJob IN ['Mafia'] && (typeof cursorobject IN ['Land_buildingsCasino2']) && player getVariable 'Mafia' >= 6 "],
		["Otwórz kasyno", "[1] remoteExec['server_fnc_openCasino',2];",4]
	],

	[
		[" casinoOpen && myJob IN ['Mafia'] && (typeof cursorobject IN ['Land_buildingsCasino2']) && player getVariable 'Mafia' >= 6 "],
		["Zamknij kasyno", "[0] remoteExec['server_fnc_openCasino',2];",4]
	],

	[
		[" myJob IN ['Mafia'] && (typeof cursorobject IN ['Land_buildingsCasino2']) && player getVariable 'Mafia' >= 6 && !lockCasino"],
		["Zablokuj kasyno", "[1] call client_fnc_lockCasino;",4]
	],

	[
		[" myJob IN ['Mafia'] && (typeof cursorobject IN ['Land_buildingsCasino2']) && player getVariable 'Mafia' >= 6 && lockCasino"],
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
		["Pozostały czas", "_time = secondsLeft / 60; [format['Pozostało ci %1 miesięcy wyroku.', round(_time)], true] spawn domsg;",4]
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
		["Połączenie anonimowe", "[] spawn client_fnc_callMenuPP; ",4]
	],

	[
		["str CursorObject find 'cabinatelefonica' > -1 && !callInProgress && !PhonesRinging && !TryingCall && !imrestrained"],
		["Anonimowy SMS", " createDialog 'client_findSMSAnon' ",4]
	],


	[
		["!busyPlayer && !imrestrained && !clientarrested && player distance myhouse < 30"],
		["Crafting", "createdialog 'client_Craft_Menu'",4]
	],

	[
		["myJob IN ['Cop'] && !dispatch && (player getvariable 'cop') > 0 "],
		["Zmiana Kodu", "[] spawn client_fnc_codeChange;",4]
	],

	[
		[" myJob IN ['Cop'] && !dispatch && (player getvariable 'cop') > 0 "],
		["Centrala", "[player,'Police Dispatch'] spawn client_fnc_jobstart;",4]
	],

	[
		[" myJob IN ['doc'] && !dispatch && (player getvariable 'doc') > 0 "],
		["Centrala", "[player,'Doc Dispatch'] spawn client_fnc_jobstart;",4]
	],

	[
		["myjob == 'EMS' && !dispatch && (player getvariable 'ems') > 0 "],
		["Centrala", "[player,'Medic Dispatch'] spawn client_fnc_jobstart;",4]
	],

	[
		["dispatch"],
		["Wypisz się z centrali", "Dispatch = false; [player] remoteExec ['server_fnc_quitDispatch',2];",4]
	],


	[
		[" (myJob IN ['Cop'] && typeof cursorobject IN ['Land_PoliceStation','Land_ScriptOase_PoliceHeadquarters']) && (player getvariable 'cop') >= 5  "],
		["Terminal UAV", " ['uav'] call client_fnc_setGear  ",4]
	],
	
	[
		[" myJob IN ['Legal'] && typeof cursorObject == 'Land_courthouse' "],
		["Uniform DOJ", "['basic'] call client_fnc_setGear",4]
	],
	
	[
		[" myJob IN ['Mafia'] && (typeof cursorobject IN ['Land_buildingsCasino2']) "],
		["Uniform mafia", "['Mafia'] call client_fnc_setGear",4]
	],

	[
		[" myJob IN ['Biker'] && (typeof cursorobject IN ['Land_buildingsNightclub2']) "],
		["Biker Uniform", "['basic'] call client_fnc_setGear",4]
	],

	[
		[" myJob IN ['Mobster'] && (typeof cursorobject IN ['Land_buildingsCasino2']) "],
		["Mobster Uniform", "['basic'] call client_fnc_setGear",4]
	],

	[
		[" myJob IN ['EMS'] && (typeof cursorobject IN ['Land_buildingsfiredept1','land_POP_Hospital']) "],
		["Sprzęt EMS", "['EMS'] call client_fnc_setGear",4]
	],

	/*
	[
		[" myJob IN ['EMS'] && (typeof cursorobject IN ['Land_buildingsfiredept1','land_POP_Hospital']) "],
		["Fire Gear", "['Fire'] call client_fnc_setGear",4]
	],
	*/

	/*
	[
		[" (myJob IN ['Cop','doc'] && typeof cursorobject IN ['Land_PoliceStation','Land_ScriptOase_PoliceHeadquarters']) "],
		["Poncho", " player addVest 'mgsr_poncho_dry_vest'; ",4]
	],
	*/

	[
		[" (myJob IN ['Cop'] && typeof cursorobject IN ['Land_PoliceStation','Land_ScriptOase_PoliceHeadquarters']) "],
		["Sprzęt Patrolowiec", "['patrol'] call client_fnc_setGear",4]
	],

	[
		[" (myJob IN ['Cop'] && typeof cursorobject IN ['Land_PoliceStation','Land_ScriptOase_PoliceHeadquarters']) "],
		["Sprzęt DTU", "['dtu'] call client_fnc_setGear",4]
	],

	[
		[" (myJob IN ['Cop'] && typeof cursorobject IN ['Land_PoliceStation','Land_ScriptOase_PoliceHeadquarters']) "],
		["Sprzęt Marshal", "['marshal'] call client_fnc_setGear",4]
	],

	[
		[" (myJob IN ['Cop'] && typeof cursorobject IN ['Land_PoliceStation','Land_ScriptOase_PoliceHeadquarters']) "],
		["Sprzęt AIA", "['aia'] call client_fnc_setGear",4]
	],
	
	/*
	[
		[" (myjob IN ['doc'] && typeof cursorobject IN ['Land_PoliceStation','Land_ScriptOase_PoliceHeadquarters']) "],
		["Prison Gear", "['prison'] call client_fnc_setGear",4]
	],
	*/

	[
		[" myJob IN ['Cop'] && typeof cursorobject IN ['Land_PoliceStation','Land_ScriptOase_PoliceHeadquarters'] && (player getVariable 'cop' == 10 || 10 IN licenseArray || 11 IN licenseArray)"],
		["Sprzęt nurka", "['water'] call client_fnc_setGear",4]
	],

	[
		[" myJob IN ['Cop'] && typeof cursorobject IN ['Land_PoliceStation','Land_ScriptOase_PoliceHeadquarters'] && (player getVariable 'cop' == 10 || 8 IN licenseArray || 9 IN licenseArray)"],
		["Sprzęt SWAT", "['swat'] call client_fnc_setGear",4]
	],

	/*
	[
		[" myJob IN ['doc'] && typeof cursorobject IN ['Land_PoliceStation','Land_ScriptOase_PoliceHeadquarters'] && (player getVariable 'doc' == 10 || 14 IN licenseArray || 15 IN licenseArray)"],
		["CRT Gear", "['crt'] call client_fnc_setGear",4]
	],
	*/

	[
		[" myJob == 'EMS' && (typeof cursorobject IN ['Land_buildingsfiredept1','land_POP_Hospital']) && (player getVariable 'EMS' == 10 || 25 IN licenseArray || 26 IN licenseArray)"],
		["Sprzęt nurka", "['Mwater'] call client_fnc_setGear",4]
	],

	[
		[" myJob IN ['Cop'] && typeof cursorobject IN ['Land_PoliceStation','Land_ScriptOase_PoliceHeadquarters']"],
		["Wezwij prokuratora", " ['Wezwanie wysłane pomyślnie.', true] spawn domsg;  [currentDA, format['%1 wezwał prokuratora na komendę. Napisz do niego w celu potwierdzenia.',name player], 'Atlantis County'] remoteExec ['server_fnc_sendMessage', 2]; ", 4]
	],

	[
		[" myJob IN ['Cop'] && typeof cursorobject IN ['Land_PoliceStation','Land_ScriptOase_PoliceHeadquarters']"],
		["Wezwij adwokata", " ['Wezwanie wysłane pomyślnie.', true] spawn domsg;  [currentPubDefs, format['%1 wezwał adwokata ba komendę. Napisz do niego w celu potwierdzenia.',name player], 'Atlantis County'] remoteExec ['server_fnc_sendMessage', 2];  ", 4]
	],

	[
		[" myJob IN ['Cop'] && typeof cursorobject IN ['Land_PoliceStation','Land_ScriptOase_PoliceHeadquarters']"],
		["Wezwij sędziego", " ['Wezwanie wysłane pomyślnie.', true] spawn domsg; [currentjudges, format['%1 wezwał sędziego na komendę. Napisz do niego w celu potwierdzenia.',name player], 'Atlantis County'] remoteExec ['server_fnc_sendMessage', 2]; ", 4]
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
		["START PD", "[] call client_fnc_setlastsave; [player,'Cop'] spawn client_fnc_jobstart;",4]
	],

	[
		[" myjob IN ['Cop'] && typeof cursorobject IN ['Land_PoliceStation','Land_ScriptOase_PoliceHeadquarters']"],
		["STOP PD", "[1] call client_fnc_jobEnd",4]
	],
	[
		[" myjob == 'none' && (player getvariable 'ems') > 0 && (typeof cursorobject IN ['Land_buildingsfiredept1','land_POP_Hospital']) "],
		["START EMS", "[] call client_fnc_setlastsave; [player,'EMS'] spawn client_fnc_jobstart;",4]
	],

	[
		["myjob == 'EMS' && (typeof cursorobject IN ['Land_buildingsfiredept1','land_POP_Hospital'])"],
		["STOPEMS", "[1] call client_fnc_jobEnd",4]
	],

	[
		["myjob == 'none' && (player getvariable 'legal') > 0 && typeof cursorObject == 'Land_courthouse' && !(Senator || Mayor)"],
		["START DOJ", "[] call client_fnc_setlastsave; [player,'Legal'] spawn client_fnc_jobstart;",4]
	],

	[
		["myjob == 'Legal' && typeof cursorObject == 'Land_courthouse'"],
		["STOP DOJ", "[1] call client_fnc_jobEnd",4]
	],

	[
		["20 IN licenseArray && !(player IN currentLawyers) && ( typeof cursorobject == 'Land_Centrelink' )"],
		["START Prawnik", " currentLawyers pushBack player; publicVariable 'currentLawyers'; ",4]
	],

	[
		["(player IN currentLawyers) && ( typeof cursorobject == 'Land_Centrelink' )"],
		["STOP Prawnik", " currentLawyers = currentLawyers - [player]; publicVariable 'currentLawyers'; ",4]
	],

	[
		["27 IN licenseArray && !(player IN currentParalegals) && ( typeof cursorobject == 'Land_Centrelink' )"],
		["START Paralegal", " currentParalegals pushBack player; publicVariable 'currentParalegals'; ",4]
	],

	[
		["player IN currentParalegals && ( typeof cursorobject == 'Land_Centrelink' )"],
		["STOP Paralegal", " currentParalegals = currentParalegals - [player]; publicVariable 'currentParalegals'; ",4]
	],


/*	[
		["myjob == 'none' && (player getvariable 'dmv') > 0 && (typeof cursorobject IN ['Land_Centrelink'])"],
		["Sign-in DMV", "[player,'DMV'] spawn client_fnc_jobstart;",4]
	],

	[
		["myjob == 'DMV' && (typeof cursorobject IN ['Land_Centrelink'])"],
		["Sign-out DMV", "[0] call client_fnc_jobEnd",4]
	],*/


	[
		["myjob == 'none' && (player getvariable 'da') > 0 && player distance [817.614,1637.97,0.00143766] < 20"],
		["START prokurator", "[player,'DA'] spawn client_fnc_jobstart;",4]
	],

	[
		["myjob == 'DA' && player distance [817.614,1637.97,0.00143766] < 20 "],
		["STOP prokurator", "[0] call client_fnc_jobEnd",4]
	],

	[
		["myjob == 'none' && (player getvariable 'mafia') > 0 && (typeof cursorobject IN ['Land_buildingsCasino2'])"],
		["START Mafia", "[player,'Mafia'] spawn client_fnc_jobstart;",4]
	],

	[
		["myjob == 'Mafia' && (typeof cursorobject IN ['Land_buildingsCasino2'])"],
		["STOP Mafia", "[0] call client_fnc_jobEnd",4]
	],

	/*
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
	*/




	[
		["typeof cursorObject == 'Land_Barracks_01_camo_F' && player distance [4330.02,4050.19,0.00143433] < 100"],
		["Oczyść kryształ", "closedialog 0; [] spawn client_fnc_processBricks",4]
	],

	[
		["((player distance (getMarkerPos 'sales')) < 30)"],
		["Sprzedaj rudę / drewno", "closedialog 0; [] spawn client_fnc_sellOre",4]
	],

	[
		["((player distance (getMarkerPos 'peltCuring')) < 30)"],
		["Cure Pelts", "closedialog 0; [] spawn client_fnc_refinePelts",4]
	],

	[
		["((player distance (getMarkerPos 'fishRefinery')) < 70) || typeof (vehicle player) IN ['vvv_NewYacht','POP_Speed_yatch'] "],
		["Przetwórz Rybę", "closedialog 0; [] spawn client_fnc_refineFish",4]
	],

	[
		["((player distance (getMarkerPos 'logRefinery')) < 30)"],
		["Przetwórz drewno", "closedialog 0; [] spawn client_fnc_refineLogs",4]
	],

	[
		["((player distance (getMarkerPos 'oilRefinery')) < 30)"],
		["Przetwórz Ropę", "closedialog 0; [] spawn client_fnc_refineoil;",4]
	],

	[
		["((player distance (getMarkerPos 'OreRefinery')) < 30)"],
		["Przetwórz Rudę", "closedialog 0; [] spawn client_fnc_refinemetal1;",4]
	],

	[
		["ClientArrested && player distance [7027.44,4035.4,0] < 5"],
		["Stwórz haking tool", "['Tworzę kartę dostępu',20,'client_fnc_crafthackingdevice',player,'AinvPknlMstpSnonWnonDnon_medic_1',player] spawn client_fnc_dotask; ",4]
	],
	
	[
		["ClientArrested && (str CursorObject find 'gymbench' > -1 || str CursorObject find 'gymrack'> -1 ) && getpos player distance [7045.34,4057.47,0] < 50"],
		["Stwórz wytrych", "['Tworzę wytrych',60,'client_fnc_craftlockpick',player,'AmovPercMstpSnonWnonDnon_exercisePushup',player] spawn client_fnc_dotask; ",4]
	],

	[
		["( typeof CursorObject == 'Rabbit_F' || str CursorObject find 'cock_' > -1 ) && getdammage cursorobject == 1"],
		["Oskóruj zająca", "deletevehicle CurrentCursorTarget; player additem 'np_upelt'; ['Oskórowałeś zawierze!', true] spawn domsg; ",4]
	],

	[
		["( str CursorObject find 'Sheep_' > -1 ) && getdammage cursorobject == 1"],
		["Oskóruj zwierze", "deletevehicle CurrentCursorTarget; player additem 'np_upelt'; player additem 'np_upelt'; player additem 'np_upelt'; player additem 'np_upelt'; ['Oskórowałeś zawierze!', true] spawn domsg; ",4]
	],

	[
		["((player distance (getMarkerPos 'fishSales')) < 20)"],
		["Sprzedaj rybę", "closedialog 0; [] spawn client_fnc_sellFish",4]
	],

	[
		["(str CursorObject find 'cargo20' > -1 || str cursorObject find 'plp' > -1 ) && player distance [2243.1,6442.22,0] < 700"],
		["Przeszukaj Kontener", "['Przeszukuję skrzynię',35,'client_fnc_searchcrates',player,'AinvPknlMstpSnonWnonDnon_medic_1',cursorObject,'cg_sndimg\sounds\repair.ogg'] spawn client_fnc_dotask; ",4]
	],

	/*
	[ 
		[" 'np_goldscanner' in magazines player && player distance [8606.95,1421.29,8.80693] < 400 && GoldTimer < time "], 
		["Scan for Gold", " [] spawn client_fnc_scangold; ",4] 
	],

	[
		[" player distance nearestObject [getpos player, 'itemsGoldbar1'] < 2 "],
		["Dig for Gold", "['Searching for Gold Bar',7,'client_fnc_packgoldbar',player,'AinvPknlMstpSnonWnonDnon_medic_1',player,'cg_sndimg\sounds\repair.ogg'] spawn client_fnc_dotask; ",4]
	],
	*/

	[
		["( myjob != 'none' && myjob !='cop' && myjob !='EMS' && myjob !='Mafia' ) && (typeof CursorTarget IN ['Land_Centrelink'] || player distance myhouse < 20)"],
		["Wyjdź z pracy", "[0] spawn client_fnc_jobEnd;",4]
	],

	[
		["myjob != 'none' && typeof CursorTarget IN ['Land_Centrelink'] && myjob != 'cropdusting'"],
		["Weź pojazd z pracy", "[] spawn client_fnc_spawnjobvehicle",4]
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
		[" myjob == 'none' && typeof CursorTarget IN ['Land_Hangar_F'] && (6) IN licenseArray "],
		["Start Air Job", "[] spawn client_fnc_cropdusting; ['Możesz wyciągnąć samolot w każdym hangarze', true] spawn domsg; ",4]
	],

	[
		["myjob != 'none' && typeof CursorTarget IN ['Land_Hangar_F'] && myjob == 'cropdusting' && (6) IN licenseArray "],
		["Spawn Air Job Vehicle", "[] spawn client_fnc_spawnjobvehicle",4]
	],

	[
		["typeof CursorObject == 'Land_Centrelink'"],
		["Znajdź pracę", "[player] spawn client_fnc_startjob",4]
	],

	[
		["myjob == 'Repairman'"],
		["Napraw obiekty", "['Naprawiam',15,'client_fnc_repairNear',player,'AinvPknlMstpSnonWnonDnon_medic_1',player,'cg_sndimg\sounds\repair.ogg'] spawn client_fnc_dotask; ",4]
	],

	[
		[" "],
		["Statystyki", "closedialog 0; [] spawn client_fnc_myLevels; ",4]
	],
	/*
	[
		[" myjob IN ['doc'] && isPlayer CursorTarget && CursorTarget isKindOf 'Man' && !(CursorTarget getVariable['JailTracked',FALSE]) "],
		["Enable Tracking", "[] remoteexec ['client_fnc_enablePlayerTracking',currentcursortarget] ",4]
	],

	[
		[" myjob IN ['doc'] && isPlayer CursorTarget && CursorTarget isKindOf 'Man' && (CursorTarget getVariable['JailTracked',FALSE]) "],
		["Disable Tracking", " CursorTarget setvariable ['JailTracked',nil,true]; ",4]
	],
	
	[
		[" (player getVariable['JailTracked',FALSE]) && vehicle player != player "],
		["Disable Tracking", "  ['Removing Tracking',600,'client_fnc_DisablePlayerTracking',player,'AinvPknlMstpSnonWnonDnon_medic_1',player,'cg_sndimg\sounds\repair.ogg'] spawn client_fnc_dotask; ",4]
	],
	*/
	[
		[" myjob IN ['doc','Cop'] && isPlayer CursorTarget && CursorTarget isKindOf 'Man' && ( getpos player distance [8242.13,3019.17,0] < 50 || getpos player distance [5556.2,6291.29,0.00143433] < 350 ) "],
		["Block 1 Clothing", " [0,0] remoteexec ['client_fnc_jailClothing',currentcursortarget]; ",4]
	],

	[
		[" myjob IN ['doc','Cop'] && isPlayer CursorTarget && CursorTarget isKindOf 'Man' && ( getpos player distance [8242.13,3019.17,0] < 50 || getpos player distance [5556.2,6291.29,0.00143433] < 350 ) "],
		["Block 2 Clothing", " [1,0] remoteexec ['client_fnc_jailClothing',currentcursortarget]; ",4]
	],

	[
		[" myjob IN ['doc','Cop'] && isPlayer CursorTarget && CursorTarget isKindOf 'Man' && ( getpos player distance [8242.13,3019.17,0] < 50 || getpos player distance [5556.2,6291.29,0.00143433] < 350 ) "],
		["Block 3 Clothing", " [2,0] remoteexec ['client_fnc_jailClothing',currentcursortarget]; ",4]
	],

	[
		[" myjob IN ['doc','Cop'] && isPlayer CursorTarget && CursorTarget isKindOf 'Man' && ( getpos player distance [8242.13,3019.17,0] < 50 || getpos player distance [5556.2,6291.29,0.00143433] < 350 ) "],
		["Pozostały czas", " [player] remoteexec ['client_fnc_getTimeLeft', CurrentCursorTarget] ",4]
	],

	[
		[" (myJob IN ['Cop','legal'] && isPlayer CursorTarget && CursorTarget isKindOf 'Man' && CursorTarget == vehicle CursorTarget && !imrestrained && player distance [1344.42,981.73,0.00143814] < 35 )"],
		["Sprawdź odciski", " ['Sprawdzam odciski',5,'client_fnc_checkfingerp',CurrentCursorTarget,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorTarget,'cg_mission_files\sounds\patdown1.ogg'] spawn client_fnc_dotask ",4]
	],

	[
		[" myjob IN ['doc','Cop','EMS']  && !imrestrained && !(player getVariable ['surrender', false]) && count currentrepairmen > 0"],
		["Zleć naprawę", " [getpos player] remoteExec ['client_fnc_startRepair',currentrepairmen]; ['Dziękujemy za dbanie o czystość stanu, SMS został wysłany do mechaników' , true] spawn domsg; ",4]
	]

];

player setVariable["loaded", 2, false];





