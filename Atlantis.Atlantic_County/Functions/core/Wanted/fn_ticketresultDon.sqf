disableSerialization;
_response = _this select 0;


_display = findDisplay 1333;

_ctrl = _display displayCtrl 1400;
_amount = ctrlText _ctrl; 
_amount = parseNumber _amount;

_ctrl = _display displayCtrl 1403;
_cop = ctrlText _ctrl; 


_cop = call compile format["%1",_cop];
_responseReason = "Odmowa zapłaty.";

if(_response == "paid") then {
	_old = player getVariable "cashinbank";
	_new = _old - _amount;
	if (_new < 0) then { 
		_response = "refused";
		_responseReason = "Za mało pieniędzy w banku.";
	};
};

if(_response == "refused") then {
	[format["Nie zapłacono: %1",_responseReason], false] remoteExec ["domsg",_cop];
} else { 
	[_amount] call Client_fnc_removeBank;
	[format["Mandat został zapłacony przez: %1",name player], false] remoteExec ["domsg",_cop];
	["Remove","Karma",50] call client_fnc_sustain;
	["Add",_amount] remoteexec ["server_fnc_updateGovtBank",2];

};

closedialog 0;