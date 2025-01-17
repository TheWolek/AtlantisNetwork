_player = _this select 0;
_jobtype = _this select 1;

if (str _jobtype find "Police Dispatch" > -1) exitwith {   
	if(count currentPoliceDispatch > 2) exitWith { ["Na służbie jest za dużo dyspozytorów.", true] spawn domsg; };
	[] spawn client_fnc_startDispatch;
	currentPoliceDispatch pushback _player;
	publicvariable "currentPoliceDispatch";
};

if (str _jobtype find "Doc Dispatch" > -1) exitwith {   
	if(count currentDocDispatch > 2) exitWith { ["Na służbie jest za dużo dyspozytorów.", true] spawn domsg; };
	[] spawn client_fnc_startDispatch;
	currentDocDispatch pushback _player;
	publicvariable "currentDocDispatch";
};

if (str _jobtype find "Medic Dispatch" > -1) exitwith {
	if(count currentMedicDispatch > 2) exitWith { ["Na służbie jest za dużo dyspozytorów.", true] spawn domsg; };
	[] spawn client_fnc_startDispatch;
	currentMedicDispatch pushback _player;
	publicvariable "currentMedicDispatch";	
};

if(!allowjob) exitwith { ["Musisz odczekać 5 minut od zakończenia pracy, aby zacząć kolejną.", true] spawn domsg; };

if (str _jobtype find "doc" > -1) exitwith { 
		if(count currentdoc > 6 && player getVariable 'doc' <= 5) exitWith { ["Za dużo osób na służbie.", true] spawn domsg; };

		player setVariable["badgeNumber", "3" + ([getplayeruid player, 14] call CBA_fnc_substr), true];
	
		[player, "getunitloadout", getunitloadout player] remoteExec ["Server_fnc_setVariable",2];
		[_player, 0, getplayeruid _player, name _player] remoteexec ["Server_fnc_statSave",2];	  
		[] spawn client_fnc_startdoc;
		currentdoc pushback _player;
		publicvariable "currentdoc";
		removeAllItems player;
		removeAllContainers player;
		removeAllWeapons player;
		removeAllAssignedItems player;
		removeUniform player;
		removeVest player;
		removeBackpack player;
		removeGoggles player;
		removeHeadgear player;			
};

if (str _jobtype find "Cop" > -1) exitwith {  
		if(count currentcop > 20 && player getVariable 'cop' <= 5) exitWith { ["Za dużo osób na służbie.", true] spawn domsg; };

		player setVariable["badgeNumber", "2" + ([getplayeruid player, 14] call CBA_fnc_substr), true];

		[player, "getunitloadout", getunitloadout player] remoteExec ["Server_fnc_setVariable",2];
		[_player, 0, getplayeruid _player, name _player] remoteexec ["Server_fnc_statSave",2];	
		[] spawn client_fnc_startCop;
		currentCop pushback _player;
		publicvariable "currentCop";
		removeAllItems player;
		removeAllContainers player;
		removeAllWeapons player;
		removeAllAssignedItems player;
		removeUniform player;
		removeVest player;
		removeBackpack player;
		removeGoggles player;
		removeHeadgear player;	
};

if (str _jobtype find "EMS" > -1) exitwith {  
		if(count currentdoc > 11 && player getVariable 'ems' <= 5) exitWith { ["Za dużo osób na służbie.", true] spawn domsg; };

		player setVariable["badgeNumber", "4" + ([getplayeruid player, 14] call CBA_fnc_substr), true];

		[player, "getunitloadout", getunitloadout player] remoteExec ["Server_fnc_setVariable",2];
		[_player, 0, getplayeruid _player, name _player] remoteexec ["Server_fnc_statSave",2];		
		[] spawn client_fnc_startEMS;
		currentEMS pushback _player;
		publicvariable "currentEMS";
		removeAllItems player;
		removeAllContainers player;
		removeAllWeapons player;
		removeAllAssignedItems player;
		removeUniform player;
		removeVest player;
		removeBackpack player;
		removeGoggles player;
		removeHeadgear player;	
};


if (str _jobtype find "Mafia" > -1) exitwith {   

		[] spawn client_fnc_startMafia;
		currentMafia pushback _player;
		publicvariable "currentMafia";
};

if (str _jobtype find "Biker" > -1) exitwith {   

		[] spawn client_fnc_startBiker;
		currentBiker pushback _player;
		publicvariable "currentBiker";
};

if (str _jobtype find "Mobster" > -1) exitwith {   
	
		[] spawn client_fnc_startMobster;
		currentMobster pushback _player;
		publicvariable "currentMobster";
};

if (str _jobtype find "DMV" > -1) exitwith {   
	
		[] spawn client_fnc_startDMV;
		currentDMV pushback _player;
		publicvariable "currentDMV";
};

if (str _jobtype find "DA" > -1) exitwith {   
	
		[] spawn client_fnc_startDA;
		currentDA pushback _player;
		publicvariable "currentDA";
};







if (str _jobtype find "Kurier" > -1) exitwith {
	[] spawn client_fnc_signupmail;
	currentmailmen pushback _player;
	publicvariable "currentMailMen";	
};

if (str _jobtype find "Kierowca Autobusu" > -1) exitwith {
	[] spawn client_fnc_signupBus;
	currentBusDrivers pushback _player;
	publicvariable "currentBusDrivers";
};


if (str _jobtype find "Taksówkarz" > -1) exitwith {
	[] spawn client_fnc_startTaxi;
	currentTaxiDrivers pushback _player;
	publicvariable "currentTaxiDrivers";
};

if (str _jobtype find "Security" > -1) exitwith {
	[] spawn client_fnc_startSecurity;
	currentsecurity pushback _player;
	publicvariable "currentSecurity";	
};

if (str _jobtype find "Legal Aid" > -1) exitwith {
	[] spawn client_fnc_startLegalAid;
	currentlegalaid pushback _player;
	publicvariable "currentLegalAid";	
};


if (str _jobtype find "Legal" > -1) exitwith {

	[player, "getunitloadout", getunitloadout player] remoteExec ["Server_fnc_setVariable",2];
	[_player, 0, getplayeruid _player, name _player] remoteexec ["Server_fnc_statSave",2];
	removeAllItems player;
	removeAllContainers player;
	removeAllWeapons player;
	removeAllAssignedItems player;
	removeUniform player;
	removeVest player;
	removeBackpack player;
	removeGoggles player;
	removeHeadgear player;	

	[] remoteExec ["client_fnc_startLegal",_player];

	if(player getvariable "legal" == 1) then {
		currentPubDefs pushback _player;
		publicvariable "currentPubDefs";
	};
	if(player getvariable "legal" == 2) then {
		currentPubDefs pushback _player;
		publicvariable "currentPubDefs";
	};
	if(player getvariable "legal" == 3) then {
		currentPubDefs pushback _player;
		publicvariable "currentPubDefs";
	};
	if(player getvariable "legal" == 4) then {
		currentPubDefs pushback _player;
		publicvariable "currentPubDefs";
	};
	if(player getvariable "legal" == 5) then {
		currentPubDefs pushback _player;
		publicvariable "currentPubDefs";
	};
	if(player getvariable "legal" == 6) then {
		currentjudges pushback _player;
		publicvariable "currentJudges";
	};
	if(player getvariable "legal" == 7) then {
		currentjudges pushback _player;
		publicvariable "currentJudges";
	};
	if(player getvariable "legal" == 8) then {
		currentJudges pushback _player;
		publicvariable "currentJudges";
	};
	if(player getvariable "legal" == 9) then {
		currentJudges pushback _player;
		publicvariable "currentJudges";
	};	
	if(player getvariable "legal" == 10) then {
		currentJudges pushback _player;
		publicvariable "currentJudges";
	};							
	//[] spawn server_fnc_addJob;
};

//nie ma
if (str _jobtype find "Radio Presenter" > -1) exitwith {
	[] spawn client_fnc_radioStart;
};

//nie ma
if (str _jobtype find "Tow Truck Driver" > -1) exitwith {
	[] spawn client_fnc_startTowTruck;
	currentTowTruckDrivers pushback _player;
	publicvariable "currentTowTruckDrivers";
};

if (str _jobtype find "Śmieciarz" > -1) exitwith {
	[] spawn client_fnc_startGarbage;
	currentTrashMan pushback _player;
	publicvariable "currentTrashman";	
};

//nie ma
if (str _jobtype find "News Reporter" > -1) exitwith {
	[] spawn client_fnc_startNews;	
	currentNewsMan pushback _player;
	publicvariable "currentNewsMan";
};

if (str _jobtype find "Mechanik" > -1) exitwith {	
	[] spawn client_fnc_startRepair;
	currentRepairmen pushback _player;
	publicvariable "currentRepairmen";	
};

