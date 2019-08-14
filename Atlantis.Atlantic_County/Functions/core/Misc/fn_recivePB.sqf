	_panicuserp = _this select 0;
	_panicuser = _this select 1;
	_pos = _this select 2;
[_panicuserp,_panicuser,_pos] spawn {
	_panicuserp = _this select 0;
	_panicuser = _this select 1;
	_pos = _this select 2;

		playSound "dpanic";
		[format["%1 uruchomił panic button",_panicuser],false] spawn domsg; 

		_markername = format["panic%1",getPlayerUID _panicuserp];
		deletemarkerlocal _markername; 
		_marker = createMarkerlocal [_markername, _pos]; 
		_marker setMarkerShapelocal "ICON"; 
		_marker setMarkerTypelocal "mil_warning"; 
		_marker setMarkerColorlocal "ColorRed";
		_marker setMarkerTextlocal format["Panic Button: %2",_panicuser];

		sleep 60;
		deletemarkerlocal _markername; 
	};




};