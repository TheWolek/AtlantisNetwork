params ["_keys"];

{ 
	if !(_x in current_cars) then { current_cars pushback _x; }; 
} foreach _keys;

["Otrzymałeś klucze do pojazdów!", true] spawn domsg;