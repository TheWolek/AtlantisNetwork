params["_object"];

if(myjob == "Repairman") exitwith { _object setdamage 0; };

if(_object gethit "motor" > 0.9 && _object iskindof "car") exitwith { _object setdamage 0; };

if(_wheels > 0) exitwith { _object setdamage 0;};

["You repaired this vehicle", true] spawn domsg;