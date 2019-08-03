params["_object"];

[_object,1] remoteExec ["setfuel"];

player removeItem "np_fuelcan";

["Zatankowałeś ten pojazd.", true] spawn domsg;