/*
Refine Logs trees by koil
*/
	totalLogs = 0;
	if(vehSpawned distance player > 15 || isNil {vehSpawned} || isnull vehSpawned ) exitwith { ["Twoja ciężarówka jest za daleko!!", true] spawn domsg; }; 
	{ 
		if(_x distance vehspawned < 11) then {
			deletevehicle _x; 
			_sound = round(random 5);
			playSound3D ["CG_Jobs\sounds\mining\mineF2.ogg", player, false, getPosasl player, 31, 1, 15];
			sleep 1.5;
			["Przerabiasz Metal, nie ruszaj się!", true] spawn domsg;

			_chance = (floor random 2);
			switch (_chance) do
			{
			   case 2 : {
			  	 	player additem "CG_SilverBar";
			   };
			   case 1 : {
			   		player additem "CG_MetalBar";
			   };
			   case 0 : {
			   		player additem "CG_SteelBar";
			   };
			   default {
			   		player additem "CG_SteelBar";
			   };
		   };

		};
	} forEach attachedObjects vehspawned;
	["Przerobiony metal umieszczony w ekwipunku", true] spawn domsg;  