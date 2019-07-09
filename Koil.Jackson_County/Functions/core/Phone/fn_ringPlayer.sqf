	CurrentCaller = _this select 0;
	_type = _this select 1;
	_haltphone = false;
	_radios = player call TFAR_fnc_radiosList;
	
	if(myjob == "Radio") exitwith { ["A player has been added to your available radio connection list", true] spawn domsg; RadioConnections pushback currentcaller; ["You have been added to the radio host call back list",true] remoteExec ["domsg",currentCaller]; };

	if(count _radios > 0) then {
		if(_type == 1) then {
			if( phoneDisabled ) exitwith { _haltphone = true; currentCaller remoteExec ["fnc_busyAnswer",currentCaller]; [format["Połączenie %1 trafiło do twojego banku wiadomości! (Telefon Wyłączony)","Anonymous"], false] spawn domsg; };	
			if( callInProgress || PhonesRinging ) exitwith { _haltphone = true; currentCaller remoteExec ["fnc_busyAnswer",currentCaller]; [format["Połączenie %1 trafiło do twojego banku wiadomości! (Dzwoni) ","Anonymous"], false] spawn domsg; };	
			if( client_battery < 5 ) exitwith { _haltphone = true; currentCaller remoteExec ["fnc_busyAnswer",currentCaller]; [format["Połączenie %1 trafiło do twojego banku wiadomości! (słaba bateria) ","Anonymous"], false] spawn domsg; };

			["anonymous", format["%1 (%2) called %3 (%4)", name CurrentCaller, getplayeruid CurrentCaller, name player, getplayeruid player]] remoteExec ["server_fnc_log",2];
		} else {
			if( phoneDisabled ) exitwith { _haltphone = true; currentCaller remoteExec ["fnc_busyAnswer",currentCaller]; [format["Połączenie %1 trafiło do twojego banku wiadomości! (Telefon Wyłączony)",name CurrentCaller], false] spawn domsg; };	
			if( callInProgress || PhonesRinging ) exitwith { _haltphone = true; currentCaller remoteExec ["fnc_busyAnswer",currentCaller]; [format["Połączenie %1 trafiło do twojego banku wiadomości! (In a Call) ",name CurrentCaller], false] spawn domsg; };	
			if( client_battery < 5 ) exitwith { _haltphone = true; currentCaller remoteExec ["fnc_busyAnswer",currentCaller]; [format["Połączenie %1 trafiło do twojego banku wiadomości! (słaba bateria) ",name CurrentCaller], false] spawn domsg; };
		};
		PhonesRinging = true;
		_endme = 0;
		if(_haltphone) exitwith {};
		while{PhonesRinging} do {
			if(myjob != "Radio") then {
				playSound "cgphone_call";
			};
			if(_type == 1) then {
				[format["Jesteś wywoływany przez %1!","Anonymous"], false] spawn domsg; 
			} else {
				[format["Jesteś wywoływany przez %1!",name currentcaller], false] spawn domsg; 
			};
			sleep 5;
			_endme = _endme + 5;
			playSound "cgphone_call";

			if(_endme > 20 && _type == 1) exitwith { 
				[format["Nie odebrałeś telefonu od %1.","Anonymous"], false] spawn domsg; 
   		 		[player,format["Nie odebrałeś telefonu od %1.",name currentcaller],"Missed Call"] remoteExec ["server_fnc_sendMessage",2];
				
			};

			if(_endme > 20 && _type == 0) exitwith { 
				[format["Nie odebrałeś telefonu od %1.",name currentcaller], false] spawn domsg; 
   		 		[player,format["Nie odebrałeś telefonu od %1.",name currentcaller],"Missed Call"] remoteExec ["server_fnc_sendMessage",2];
				
			};
		};

		PhonesRinging = false;		
	} else {
		currentCaller remoteExec ["fnc_busyAnswer",currentCaller];
		["Przegapiłeś połączenie!", false] spawn domsg; 
	};