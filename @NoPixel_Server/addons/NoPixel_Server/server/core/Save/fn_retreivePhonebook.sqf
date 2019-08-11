_player = _this select 0;

_information = [

	["Policja",currentPoliceDispatch],
	["Pogotowie Ratunkowe",currentMedicDispatch],
	["Ochrona",currentSecurity],
	["Mechanik",currentRepairmen],

	["Sędziowie",currentJudges],
	["Prawnicy",currentLawyers],
	["Asystent prawny",currentParalegals],

	["Public Defender",currentPubDefs],
	["Prokuratorzy",currentDA],

	["Senatorzy",currentSenators],
	["Burmistrz",currentMayor],
	
	["Kurier",currentMailmen],
	["Holownik",currentTowTruckDrivers],
	["Prezenter",currentNewsMan],
	["Kierowca Autobusus",currentBusDrivers],
	["Taxi",currentTaxiDrivers]
	
];

[_information] remoteExec ["client_fnc_updatePhonebook",_player];


diag_log format ["retreive phonebook %1", _player];
