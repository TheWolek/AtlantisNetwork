if(player IN serverRadioPlayers) exitwith {
	[] spawn client_fnc_radioCallMenu;
};

if(callInProgress) exitwith { 
	["Jesteś już w rozmowie telefonicznej!", false] spawn domsg; 
	//[] call client_fnc_currentcallMenu; 
};
if(PhonesRinging) exitwith { 
	["Podłączanie bieżącego połączenia!", false] spawn domsg;
	CurrentCaller spawn client_fnc_answerCall;
};
if(TryingCall) exitwith { 
	["Poczekaj na zakończenie bieżącego połączenia!", false] spawn domsg; 
};
["Rozpoczynasz nowe połączenie!", false] spawn domsg; 
[] call client_fnc_callMenu; 





