params["_object"];

[_object,1] remoteExec ["setfuel"];

player removeItem "np_fuelcan";

["Tankowałeś ten pojazd.", true] spawn domsg;