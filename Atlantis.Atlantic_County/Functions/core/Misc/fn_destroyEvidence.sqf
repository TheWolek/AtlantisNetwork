private["_witnesses"];
_uid = getPlayerUID player;
_evidence = _this select 0;
_info = _evidence getVariable "evidenceInformation"; 

switch(_info select 10) do {

    case 1: {

        ["Zebrałeś wszystkie łuski i wytarłeś odciski. Policja nie powinna odgadnąć do czego doszło...", true] remoteExec ["domsg", player];
        format ["Evidence_log: %1 (UID %2) destroyed kill evidence.", name player, _uid] remoteExecCall["diag_log",2]; 
    };

    case 2: {

        [format["Wytarłeś odciski. Policja nie powinna odgadnąć do czego doszło...", _witnesses], true] remoteExec ["domsg", player];
        format ["Evidence_log: %1 (UID %2) destroyed patdown evidence.", name player, _uid] remoteExecCall["diag_log",2]; 
    };

    case 3: {

        [format["Wytarłeś odciski. Policja nie powinna odgadnąć do czego doszło...", _witnesses], true] remoteExec ["domsg", player];
        format ["Evidence_log: %1 (UID %2) destroyed robbery evidence.", name player, _uid] remoteExecCall["diag_log",2];       

    };

};

deleteVehicle _evidence;
