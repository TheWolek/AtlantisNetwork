detach myDT;
cookingMeth = true;
player removeAction myDrugAction;
["Twój stół jest gotowy, czas gotować!", true] spawn domsg;
myActionStart = myDT addAction [ "Zacznij gotować", {  
	[] spawn client_fnc_methCooking;
	totalskills = 100;
	myDrugValue = 100;
	myDT removeaction myActionStart;
	myAction1 = myDT addAction [ "Wymieszaj Aceton", { ["Acetone"] call client_fnc_upMethCooking; } ];
	myAction2 = myDT addAction [ "Wymieszaj Pseudoferynę", { ["Pseudo"] call client_fnc_upMethCooking; } ];
	myAction3 = myDT addAction [ "Schłodź", { ["Cool"] call client_fnc_upMethCooking; } ];
	myAction4 = myDT addAction [ "Podgrzej", { ["Heat"] call client_fnc_upMethCooking; } ];
	myAction5 = myDT addAction [ "Zmniejsz ciśnienie", { ["Release"] call client_fnc_upMethCooking; } ];
} ];