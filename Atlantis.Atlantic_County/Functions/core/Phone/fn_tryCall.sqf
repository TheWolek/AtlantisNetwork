if(player IN serverRadioPlayers) exitwith {
	[] spawn client_fnc_radioCallMenu;
};

if(callInProgress) exitwith { 
	["Już jesteś w rozmowie!", false] spawn domsg; 
	//[] call client_fnc_currentcallMenu; 
};
if(PhonesRinging) exitwith { 
	["Łączenie rozmowy!", false] spawn domsg;
	CurrentCaller spawn client_fnc_answerCall;
};
if(TryingCall) exitwith { 
	["Poczekaj, aż aktualne połączenie zakończy się!", false] spawn domsg; 
};
["Rozpoczynasz nową rozmowę!", false] spawn domsg; 
[] call client_fnc_callMenu; 





