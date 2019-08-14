	if(PhoneDisabled) then {
		PhoneDisabled = false;
		["Twoje połącznia są włączone!", false] spawn domsg; 
	} else {
		PhoneDisabled = true;
		["Twoje połącznia są wyłączone!", false] spawn domsg; 
	};	