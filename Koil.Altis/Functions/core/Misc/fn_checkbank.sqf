 params["_sender"];
 
[format["Ta osoba ma %1 na swoim koncie bankowym.", (player getVariable "cashinbank") call client_fnc_numberText], true] remoteExec ["domsg", _sender];