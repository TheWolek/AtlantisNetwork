private["_bankAmount","_bankName","_bankId"];
params["_bankType"];


if(!(typeOf CurrentCursorTarget IN ["Land_CommonwealthBank","Land_Bank_DED_House_01_F"])) exitWith { ["Muisz być w banku, aby przesyłać pieniądze", true] spawn domsg; };

if(_bankType == 1 && player getVariable "Mafia" <= 7) exitwith { ["Nie ma dostępu do przesyłania funfuszy mafijnych.", true] spawn domsg;  };
if(_bankType == 2) exitwith { ["Nie ma dostępu do przesyłania funduszy rządowych.", true] spawn domsg;  };
if(_bankType == 3 && player getVariable "Biker" <= 7) exitwith { ["Nie ma dostępu do przesyłania funduszy gangu motocyklowego.", true] spawn domsg;  };
if(_bankType == 4) exitwith { ["Nie ma dostępu do przesyłania funduszy kasyna.", true] spawn domsg;  };
if(_bankType == 5 && player getVariable "Mobster" <= 7) exitwith { ["Nie ma dostępu do przesyłania funduszy gangsterów.", true] spawn domsg;  };
if(_bankType == 6) exitwith { ["Nie ma dostępu do przesyłania tych funduszy.", true] spawn domsg; };


switch (_bankType) do {
    case 0: {
        _bankAmount = (player getVariable "cashinbank");
        _bankName = "his/her personal bank account";
        _bankId = "personalBank";
    };
    case 1: { 
		[player, "mafiaBank"] remoteExec ["client_fnc_getremotevar",2];
		waitUntil { !isNil "packet"; };
        _bankAmount = packet;
        packet = nil;
        _bankName = "the Mafia bank account";
        _bankId = "mafiaBank";
    };
    case 2: {
		[player, "govtBank"] remoteExec ["client_fnc_getremotevar",2];
		waitUntil { !isNil "packet"; };
        _bankAmount = packet;
        packet = nil;
        _bankName = "the Government bank account"; 
        _bankId = "govtBank";
    };
    case 3: { 
		[player, "bikerBank"] remoteExec ["client_fnc_getremotevar",2];
		waitUntil { !isNil "packet"; };
        _bankAmount = packet;
        packet = nil;
        _bankName = "the Biker bank account"; 
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
        _bankName = "the Mobster bank account"; 
        _bankId = "mobsterBank";
     };
    case 6: { 
        // dirty money stash
     };
};

_amount = parseNumber (ctrlText 1400);
_player = call compile format["%1",(lbData[1111,(lbCurSel 1111)])];
if(isnil "_player") exitwith { ["Nikt nie został wybrany", true] spawn domsg; };
closeDialog 0;

_old = _bankAmount;
_new = _old - _amount;

if (_new < 0 || _amount < 0) exitwith { 
    ["Nie masz wystarczająco pieniędzy!", true] spawn domsg;
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

[format["Przesłałeś %1", _amount call client_fnc_numberText], true] spawn domsg;

[format["Dostałeś przelew %1 od %2", _amount call client_fnc_numberText, name player], true] remoteExec ["domsg", _player];

format["MoneyLog: %1 (%2) transfered %3 to %5 (%6). Bank: %4; Cash: %5", name player, getPlayerUID player, _amount call client_fnc_numberText, name _player, getPlayerUID _player, player getVariable "cashinbank", player getVariable "cashinhand"] remoteExecCall["diag_log",2];