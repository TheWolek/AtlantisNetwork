

callInProgress = true;

if(isNil "trackedby") then { trackedby = []; };

if(count trackedby > 0) then {
	if(str CurrentCursorTarget find "cabinatelefonica" == -1) then {
		[mycallowner,player] remoteexec ["client_fnc_trackedcall",trackedby];
	};
};

[] spawn {
	while{callInProgress} do {
		_total = myCallOwner getVariable "PhonecallNumber";
		playSound "cgphone_static";
		_total = 1;
		[format["Ta rozmowa kosztowała %1 $ !",_total], false] spawn domsg;
		[_total] spawn client_fnc_removecash;
		sleep 140;
	};
};

[] spawn {
	sleep 7;
	while{callInProgress} do {
		if( isNull myCallOwner ) exitwith { [] call client_fnc_resetcall; };
		_total = myCallOwner getVariable "PhonecallNumber";	
		if( _total < 2 && myjob != "Radio" ) exitwith { [] call client_fnc_resetcall; };
		if( deadPlayer && myCallOwner != player && myjob != "Radio" ) exitwith { ["Rozmowa rozłączona (jesteś nieprzytomny)", false] spawn domsg; [] call client_fnc_hangup };	
		if( client_battery < 5 && myjob != "Radio" ) exitwith { ["Rozmowa rozłączona (niski stan baterii)", false] spawn domsg; [] call client_fnc_hangup };	
		sleep 5;
	};
};