//file: fn_panibuttonUsed
if(!panicbuttonUsed) exitWith {["Już wezałeś pomoc, poczekaj",true] spawn domsg;};

_panicTime = 60;
[player,_panicTime] remoteExec ["client_fnc_panicbutton",currentcop];
panicbuttonUsed = false;
sleep _paniTime + 320;
panicbuttonUsed = true;
["Możesz ponownie wezwać wsparcie!",true] spawn domsg;