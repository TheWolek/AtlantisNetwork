if(myJob == "Radio") exitwith {
	callInProgress = false;
	[myphonecall] remoteexec ["client_fnc_clearRadio",RadioConnected];
};

if(PhonesRinging) exitwith { 
	PhonesRinging = false;
	["Wysłano zajętą linię.", false] spawn domsg; 
	[] call client_fnc_hangup; 
};
if(tryingCall) exitwith {
	tryingcall = FALSE;
	["Rozłączanie.", false] spawn domsg; 
	[] call client_fnc_resetcall;
};
if(myCallOwner == player) exitwith {
	["Rozłączanie.", false] spawn domsg; 
	[] call client_fnc_resetcall;	
};
if(callInProgress) exitwith { 
	["Rozłączanie.", false] spawn domsg; 
	[] call client_fnc_hangup; 
};

["Resetowanie listy połączeń.", false] spawn domsg; 
[] call client_fnc_resetcall; 