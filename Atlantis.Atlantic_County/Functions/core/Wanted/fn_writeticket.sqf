disableSerialization;
_display = findDisplay 1333;

_ctrl = _display displayCtrl 1400;
_amount = ctrlText _ctrl; 

_ctrl = _display displayCtrl 1401;
_officerSignature = ctrlText _ctrl; 

_ctrl = _display displayCtrl 1402;
_reason = ctrlText _ctrl; 



[name CurrentCursorTarget,getplayeruid CurrentCursorTarget, name player, getplayeruid player, _reason, 2, 0, 1, (call compile _amount)] remoteexec ["server_fnc_addcriminal",2];

[CurrentCursorTarget, "Dostałeś mandat. Zapłać go w sądzie lub spodziewaj się konsekwencji prawnych.", "Atlantis County", "Mandat"] remoteExec ["server_fnc_sendMail",2];
[name CurrentCursorTarget, getplayeruid CurrentCursorTarget, name player, getplayeruid player, _reason, 2, 0, 1, (call compile _amount),"","","",""] remoteExec ["client_fnc_addTicket",cursorTarget];

closedialog 0;