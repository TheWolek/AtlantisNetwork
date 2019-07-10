private["_bankAmount","_bankName","_bankId"];
params["_bankType"];


if(!(typeOf CurrentCursorTarget IN ["Land_CommonwealthBank","Land_Bank_DED_House_01_F"])) exitWith { ["You need to be at a Bank to be able to transfer money.", true] spawn domsg; };

if(_bankType == 1 && player getVariable "Mafia" <= 7) exitwith { ["Nie masz dostępu do transferu funduszy Mafii.", true] spawn domsg;  };
if(_bankType == 2) exitwith { ["Nie masz dostępu do transferu funduszy rządowych.", true] spawn domsg;  };
if(_bankType == 3 && player getVariable "Biker" <= 7) exitwith { ["Nie masz dostępu do transferu funduszy Klubu Moto.", true] spawn domsg;  };
if(_bankType == 4) exitwith { ["Nie masz dostępu do transferu środków kasyna.", true] spawn domsg;  };
if(_bankType == 5 && player getVariable "Mobster" <= 7) exitwith { ["Nie masz dostępu do transferu funduszy .", true] spawn domsg;  };
if(_bankType == 6) exitwith { ["Nie masz dostępu do transferu tych środków.", true] spawn domsg; };


switch (_bankType) do {
    case 0: {
        _bankAmount = (player getVariable "cashinbank");
        _bankName = "jego / jej osobiste konto bankowe";
        _bankId = "personalBank";
    };
    case 1: { 
		[player, "mafiaBank"] remoteExec ["client_fnc_getremotevar",2];
		waitUntil { !isNil "packet"; };
        _bankAmount = packet;
        packet = nil;
        _bankName = "konto bankowe mafii";
        _bankId = "mafiaBank";
    };
    case 2: {
		[player, "govtBank"] remoteExec ["client_fnc_getremotevar",2];
		waitUntil { !isNil "packet"; };
        _bankAmount = packet;
        packet = nil;
        _bankName = "rządowe konto bankowe"; 
        _bankId = "govtBank";
    };
    case 3: { 
		[player, "bikerBank"] remoteExec ["client_fnc_getremotevar",2];
		waitUntil { !isNil "packet"; };
        _bankAmount = packet;
        packet = nil;
        _bankName = "konto bankowe moto"; 
        _bankId = "bikerBank";
     };
    case 4 : {
        // casino vault
    };
    case 5: { 
		[player, "mobsterBank"] remoteExec ["client_fnc_getremotevar",2];
		waitUntil { !isNil "packet"; };
        _bankAmount = packet;
        packet = nil;
        _bankName = "konto bankowe"; 
        _bankId = "mobsterBank";
     };
    case 6: { 
        // dirty money stash
     };
};

_amount = parseNumber (ctrlText 1400);
_player = call compile format["%1",(lbData[1111,(lbCurSel 1111)])];
if(isnil "_player") exitwith { ["Nie wybrano żadnego gracza", true] spawn domsg; };
closeDialog 0;

_old = _bankAmount;
_new = _old - _amount;

if (_new < 0 || _amount < 0) exitwith { 
    ["Nie masz wystarczająco dużo pieniędzy w banku!", true] spawn domsg;
};

switch (_bankType) do {
    case 0: {
        [_amount] call Client_fnc_removeBank;
    };
    case 1: { 
        ["mafiaBank", _amount, "Remove"] remoteexec ["server_fnc_setValue",2];
    };
    case 2: {
        ["govtBank", _amount, "Remove"] remoteexec ["server_fnc_setValue",2];
    };
    case 3: { 
        ["bikerBank", _amount, "Remove"] remoteexec ["server_fnc_setValue",2];
     };
    case 4 : {
        // casino vault
    };
    case 5: { 
        ["mobsterBank", _amount, "Remove"] remoteexec ["server_fnc_setValue",2];
     };
    case 6: { 
        // dirty money stash
     };
};

[_amount] remoteExec ["Client_fnc_addMoneyToBank", _player];

[format["Udało Ci się przekazać %1", _amount call client_fnc_numberText], true] spawn domsg;

[format["Udało Ci się przekazać  %1 z %2", _amount call client_fnc_numberText, name player], true] remoteExec ["domsg", _player];

[_bankId, format["%1 (%2) transfer %3 z %4 do %5 (%6).", name player, getplayeruid player, _amount call client_fnc_numberText,_bankName, name _player, getplayeruid _player]] remoteExec ["server_fnc_log",2]; 