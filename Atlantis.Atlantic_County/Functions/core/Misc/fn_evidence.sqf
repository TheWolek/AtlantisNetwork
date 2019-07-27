private["_witnesses"];
_uid = getPlayerUID player;
_evidence = _this select 0;
_info = _evidence getVariable "evidenceInformation"; 

if(count (_info select 9) > 0) then {
    _witnesses = ((_info select 9) joinString ", ");
} else {
    _witnesses = "nobody";
};

switch(_info select 10) do {

    case 1: {

        [format["Upon analysis, it was discovered that a person shot somebody with a(n) %1. Witnessed by %2.", _info select 6, _witnesses], true] remoteExec ["domsg", player];
        format ["Evidence_log: %1 (UID %2) discovered that a person shot somebody with a(n) %3. Witnessed by %4.", player, _uid , _info select 6, _witnesses] remoteExecCall["diag_log",2]; 
    };

    case 2: {

        [format["Upon analysis, it was discovered that a person strip searched somebody. Witnessed by %1. ", _witnesses], true] remoteExec ["domsg", player];
        format ["Evidence_log: %1 (UID %2) discovered that a person strip searched somebody. Witnessed by %4.", player, _uid , _witnesses] remoteExecCall["diag_log",2]; 
    };

    case 3: {

        [format["Upon analysis, it was discovered that a person robbed a store using a(n) %1. Witnessed by %2.", _info select 6, _witnesses], true] remoteExec ["domsg", player];
        format ["Evidence_log: %1 (UID %2) discovered that a person robbed a store using a(n) %3. Witnessed by %4.", player, _uid , _info select 6, _witnesses] remoteExecCall["diag_log",2];        

    };

};

deleteVehicle _evidence;
