if(myJob == "Radio") exitwith {
	callInProgress = false;
	[myphonecall] remoteexec ["client_fnc_clearRadio",RadioConnected];
};

if(PhonesRinging) exitwith { 
	PhonesRinging = false;
	["Wysłany sygnał zajętego.", false] spawn domsg; 
	[] call client_fnc_hangup; 
};
if(tryingCall) exitwith {
	tryingcall = FALSE;
	["Zatrzymywanie bieżącego połączenia.", false] spawn domsg; 
	[] call client_fnc_resetcall;
};
if(myCallOwner == player) exitwith {
	["Zatrzymywanie bieżącego połączenia.", false] spawn domsg; 
	[] call client_fnc_resetcall;	
};
if(callInProgress) exitwith { 
	["Opuszczanie bieżącego połączenia.", false] spawn domsg; 
	[] call client_fnc_hangup; 
};

["Resetowanie listy połączeń.", false] spawn domsg; 
[] call client_fnc_resetcall; 