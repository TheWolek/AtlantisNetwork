	if(PhoneDisabled) then {
		PhoneDisabled = false;
		["Twoje połączenia są włączone!", false] spawn domsg; 
	} else {
		PhoneDisabled = true;
		["Twoje połączenia są wyłączone!", false] spawn domsg; 
	};	