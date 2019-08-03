params["_them","_theirUID"];

if(player getvariable "houselevel" != 3) exitwith { ["Możesz się tylko dzielić domem 3 poziomu.", true] spawn domsg; };

_theirName = name _them;

[format["%1 chciał współdzielić dom z tobą. Możesz zaakceptować przez 60 sekund. Możesz dzielić swój dom tylko z jedną osobą.",_theirName], true] spawn domsg;

houseinvitation = _them;

[] spawn {
	uisleep 60;
	houseinvitation = objNull;	
};

//dialog