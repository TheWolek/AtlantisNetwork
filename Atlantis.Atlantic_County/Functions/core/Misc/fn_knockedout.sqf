[] spawn {
	[format["%1 powalił cie",_this select 0], false] spawn domsg;
	player playmove "deadstate";
	uisleep 10;

	player switchmove "";
	[player,""] remoteExec ["client_fnc_animSync"];
};