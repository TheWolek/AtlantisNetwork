// file name: fn_seizeitems.sqf
//Author: DonTheDev
_clear = nearestObjects [player,["weaponholder"],3];
_clear = _clear + nearestObjects [player,["groundWeaponHolder"],3];
_destroyed = 0;
player playMoveNow "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
for "_i" from 0 to count _clear - 1 do{
        _destroyed = _destroyed + 1;
        deleteVehicle (_clear select _i);
        sleep 0.056;
	};
["Skonfiskowałeś itemy", true] spawn domsg;