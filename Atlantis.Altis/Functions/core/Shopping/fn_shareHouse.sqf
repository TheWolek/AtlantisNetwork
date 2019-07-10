params["_them","_theirUID"];

if(player getvariable "houselevel" != 3) exitwith { ["Możesz dzielić domy tylko na poziomie 3", true] spawn domsg; };

_theirName = name _them;

[format["%1 chciałbym podzielić się z tobą domem. Klawisz Windows i zaakceptuj, jeśli chcesz kontynuować w ciągu następnych 60 sekund - możesz udostępniać tylko jednej osobie.",_theirName], true] spawn domsg;

houseinvitation = _them;

[] spawn {
	uisleep 60;
	houseinvitation = objNull;	
};

//dialog