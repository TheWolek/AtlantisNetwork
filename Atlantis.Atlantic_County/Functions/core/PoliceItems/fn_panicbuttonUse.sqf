//file: fn_panibuttonUsed
if(panicbuttonUsed) exitWith {["Już wezałeś pomoc, poczekaj",true] spawn domsg;};

_panicTime = 60;
[player,_panicTime] remoteExec ["client_fnc_panicbutton",currentcop];
panicbuttonUsed = true;
sleep _panicTime + 320;
panicbuttonUsed = false;
["Możesz ponownie wezwać wsparcie!",true] spawn domsg;