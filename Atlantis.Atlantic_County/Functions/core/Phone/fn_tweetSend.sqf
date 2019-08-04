private["_type"];
disableSerialization;
_message = ctrlText 9331;
_type = _this select 0;
if(_message == "Enter your Tweet.") exitwith { ["Musisz wprowadzić poprawny tekst.", true] spawn domsg; };
if (count _message > 140) exitWith { ["Tweet musi być krótszy niż 140 znaków.", true] spawn domsg; };
closedialog 0;
sleep 0.05;
["Tweet",_message,name player] remoteExec ["server_fnc_sendMessage",2];