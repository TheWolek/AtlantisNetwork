params["_bool"];

_amount = acceptBail select 0;
_player = acceptBail select 1;

acceptBail = [];

if!(_bool) exitWith {
    [format["Ta osoba odmówiła kwocie kaucji %1.", _amount call client_fnc_numberText], true] remoteExec["domsg", _player];
};

_bank = player getVariable "cashinbank";
if(_bank < _amount) exitWith { [format["Ta osoba nie może sobie pozwolić na kwotę kaucji %1.", _amount call client_fnc_numberText], true] remoteExec["domsg", _player];  };

["Set", "Karma", _amount,"Bail"] call client_fnc_sustain;
[_amount] call client_fnc_removeBank;

[format["Ta osoba zaakceptowała kwotę kaucji %1.", _amount call client_fnc_numberText], true] remoteExec["domsg", _player];
[format["Zaakceptowałeś kwotę kaucji %1. The money has been automatically debited from your bank account.", _amount call client_fnc_numberText], true] remoteExec["domsg", player];

["bail", format["%1 (%2) przekazał kaucję %3 %4 (%5).", name _player, getplayeruid _player, _amount call client_fnc_numberText, name player, getplayeruid player]] remoteExec ["server_fnc_log",2];

[name player, getplayeruid player, name _player, getplayeruid _player, "Court issued bail.", 4, 0, 1, _amount] remoteexec ["server_fnc_addcriminal",2];