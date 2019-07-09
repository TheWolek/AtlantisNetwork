private["_type"];
disableSerialization;
_message = ctrlText 9331;
_type = _this select 0;
if(_message == "Wpisz swój tweet.") exitwith { ["Musisz podać prawidłowy tweet.", true] spawn domsg; };
if (count _message > 140) exitWith { ["Tweet nie może być dłuższy niż 140 znaków.", true] spawn domsg; };
closedialog 0;
sleep 0.05;
["Tweet",_message,name player] remoteExec ["server_fnc_sendMessage",2];