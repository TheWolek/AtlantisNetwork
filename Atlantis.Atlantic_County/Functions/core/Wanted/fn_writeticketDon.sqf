player playmove "vvv_anim_ticket";

disableSerialization;
_display = findDisplay 1333;

_ctrl = _display displayCtrl 1400;
_amount = ctrlText _ctrl;
_amount = parseNumber _amount;

_ctrl = _display displayCtrl 1401;
_officerSignature = ctrlText _ctrl;

_ctrl = _display displayCtrl 1402;
_reason = ctrlText _ctrl;

if (_amount < 1) exitWith { hint "Wartość musi być większa od 0!"; closedialog 0 };
if (_amount < 0) then { _amount * (-1) };

[_amount, _officerSignature, _reason,player] remoteExec ["client_fnc_taketicketDon",CurrentCursorTarget];
closedialog 0;
