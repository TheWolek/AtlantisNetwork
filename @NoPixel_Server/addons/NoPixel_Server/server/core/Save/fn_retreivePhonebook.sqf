_player = _this select 0;

_information = [

	["Police Dispatch",currentPoliceDispatch],
	["Fire/EMS Dispatch",currentMedicDispatch],
	["Security",currentSecurity],
	["Repairmen",currentRepairmen],

	["Judges",currentJudges],
	["Lawyers",currentLawyers],
	["Paralegals",currentParalegals],

	["Public Defender",currentPubDefs],
	["Prosecutors",currentDA],

	["Senator",currentSenators],
	["Mayor",currentMayor],
	
	["Mail Men",currentMailmen],
	["Tow Trucks",currentTowTruckDrivers],
	["News Worker",currentNewsMan],
	["Kierowca Autobusus",currentBusDrivers],
	["Taxi",currentTaxiDrivers]
	
];

[_information] remoteExec ["client_fnc_updatePhonebook",_player];


diag_log format ["retreive phonebook %1", _player];
