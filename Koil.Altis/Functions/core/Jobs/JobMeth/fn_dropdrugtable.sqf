detach myDT;
cookingMeth = true;
player removeAction myDrugAction;
["Twój stół jest opuszczony, bądź gotowy do gotowania!", true] spawn domsg;
myActionStart = myDT addAction [ "Start Cooking", {  
	[] spawn client_fnc_methCooking;
	totalskills = 100;
	myDrugValue = 100;
	myDT removeaction myActionStart;
	myAction1 = myDT addAction [ "Mix Acetone", { ["Acetone"] call client_fnc_upMethCooking; } ];
	myAction2 = myDT addAction [ "Mix Pseudoephedrine", { ["Pseudo"] call client_fnc_upMethCooking; } ];
	myAction3 = myDT addAction [ "Zimny Product", { ["Cool"] call client_fnc_upMethCooking; } ];
	myAction4 = myDT addAction [ "Gorący Product", { ["Heat"] call client_fnc_upMethCooking; } ];
	myAction5 = myDT addAction [ "Release Pressure", { ["Release"] call client_fnc_upMethCooking; } ];
} ];