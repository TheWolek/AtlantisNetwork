params["_type","_uid"];

switch (_type) do {
	case "disconnect": { 
		_str = format ["DisconnectLog: %1 wyszedł z gry",_uid];
		diag_log _str;
	};
};
//_updatestr = format ["newLog:%1:%2", _type, _description];
//_update = [0, _updatestr] call ExternalS_fnc_ExtDBquery;