private["_type"];
disableSerialization;
_index = lbCurSel (1113);
_message = ctrlText 9331;
_type = _this select 0;
if(_message == "Enter a Message") exitwith { ["Musisz wprowadzić wiadomość.", true] spawn domsg;  };
if(_message find ":" > -1) exitWith {
    ["Nie możesz użyć dwukropka (':') w swojej wiadmości.", true] spawn domsg;
};
if (_index == -1) exitWith {};
_status = lbData[1113, _index];
_status = call compile format["%1", _status];
closedialog 0;
sleep 0.05;
if(isNil "_status") exitwith { };
if(_type == 0) then {
    [_status,_message,name player] remoteExec ["server_fnc_sendMessage",2];
} else {
    [_status,_message,"Anonymous"] remoteExec ["server_fnc_sendMessage",2];
    format["MessageLog: %1 (%2) sent a message to %3 (%4) saying - %5.", name player, getplayeruid player, name _satus, getPlayerUID _status, _message] remoteExecCall["diag_log",2];
};