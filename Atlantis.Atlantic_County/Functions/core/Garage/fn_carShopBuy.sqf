_index = lbCurSel (1500);
_status = lbData[1500, _index];
_SELECTEDVEHICLE = call compile format["%1", _status];
_class = _selectedvehicle select 0;
_price = _selectedvehicle select 1;

_index = lbCurSel (1501);
_status = lbData[1501, _index];
_color = _status;

_index = lbCurSel (1502);
_status = lbData[1502, _index];
_finish = call compile format["%1", _status];
_pricePaint = _finish select 1;
_finish = _finish select 0;


_cashCheck = [1, _price*(1+taxRate/100)] call Client_fnc_checkMoney;
if!(_cashCheck) exitwith { [format["%1 - Masz za mało pieniędzy, aby za to zapłacić!",(_price*(1+taxRate/100)) call client_fnc_numberText], true] spawn domsg; };

if( ((player getvariable "cashinhand") - _price*(1+taxRate/100)) < (client_level_array select 16) ) exitWith {
    [format["Salon samochodowy nie akceptuje %1 twoich brudnych pieniędzy.", (client_level_array select 16) call client_fnc_numberText], true] spawn domsg;
};

[_price*(1+taxRate/100), true] call Client_fnc_removeCash;
["govtBank", _price*(taxRate/100), "Add"] remoteExec["server_fnc_setValue",2];
format["MoneyLog: %1 (%2) added %3 into the gov bank account.", name player, getplayeruid player, (_price*(1+taxRate/100)) call client_fnc_numberText] remoteExecCall["diag_log",2];
format["BuyLog: %1 (%2) bought %3 za %4.", name player, getplayeruid player, _class,(_price*(1+taxRate/100)) call client_fnc_numberText] remoteExecCall["diag_log",2];
//["govtBank", format["%1 (%2) added %3 into the Government bank account.", name player, getplayeruid player, (_price*(taxRate/100)) call client_fnc_numberText]] remoteExec ["server_fnc_log",2];



closedialog 0;

["Pojazd został dostarczony do twojego garażu.", true] spawn domsg;

_player = player; 
_rims = "default"; 
_windows = 0; 
_Lights = 0; 
_owner = getplayeruid player; 
_licensePlate = "Testing"; 

_statuses = 1; 
[_licensePlate, _class, _color, _finish, _rims, _windows, _lights, _owner, _statuses, "Add", _player] remoteExec ["Server_fnc_garageUpdate",2];
