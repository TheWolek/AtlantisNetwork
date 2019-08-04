 params["_sender"];
 
[format["Ta osoba ma %1 w banku.", (player getVariable "cashinbank") call client_fnc_numberText], true] remoteExec ["domsg", _sender];