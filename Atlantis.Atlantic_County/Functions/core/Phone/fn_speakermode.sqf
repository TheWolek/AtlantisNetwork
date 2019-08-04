	_stereo = (call TFAR_fnc_ActiveSwRadio) call TFAR_fnc_getSwSpeakers;
	if(_stereo) then {
		["Twój telefon jest w trybie normalnym!", false] spawn doquickmsg;
	} else {
		["Twój telefon jest w trybie głośnomówiącym!", false] spawn doquickmsg;
	};
	[call TFAR_fnc_ActiveSWRadio] call TFAR_fnc_setSwSpeakers;