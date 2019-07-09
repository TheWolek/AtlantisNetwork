if(player distance myhouse > 20) exitwith { ["You must do this near your house", true] spawn domsg; };

detach myDT;
cookingMeth = true;
player removeAction myDrugAction;
["Your table is down, be ready to cook!", true] spawn domsg;
myActionStart = myDT addAction [ "Start Cooking", {  
	[] spawn client_fnc_methCooking;
	myDrugValue = 100;
	myDT removeaction myActionStart;
	myAction1 = myDT addAction [ "Wymieszać aceton", { ["Acetone"] call client_fnc_upMethCooking; } ];
	myAction2 = myDT addAction [ "Wymieszać Pseudoefedrynę", { ["Pseudo"] call client_fnc_upMethCooking; } ];
	myAction3 = myDT addAction [ "Ciepły Product", { ["Cool"] call client_fnc_upMethCooking; } ];
	myAction4 = myDT addAction [ "Zimny Product", { ["Heat"] call client_fnc_upMethCooking; } ];
	myAction5 = myDT addAction [ "Uwolnij ciśnienie", { ["Release"] call client_fnc_upMethCooking; } ];
} ];
myActionPack = myDT addAction [ "Spakuj zawartość", {  
	deletevehicle myDT;
	cookingMeth = false;
} ];