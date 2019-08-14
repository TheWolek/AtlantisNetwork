//file: dropweedplot
detach myDT2;
growingweed = true;
player removeAction myDrugAction2;
["Twoje nasiona zostały zasadzone!", true] spawn domsg;
myActionStart2 = myDT2 addAction [ "Zacznij hodować", {  
	[] spawn client_fnc_weedgrowing;
	myDrugValue2 = 4;
	totalskills = 4;
	myDT2 removeaction myActionStart2;
	myAction12 = myDT2 addAction [ "Podlej", { ["Water"] call client_fnc_upweedgrowing; } ];
	myAction22 = myDT2 addAction [ "Przytnij", { ["Prune"] call client_fnc_upweedgrowing; } ];
	myAction32 = myDT2 addAction [ "Schłodź", { ["Cool"] call client_fnc_upweedgrowing; } ];
	myAction42 = myDT2 addAction [ "Podgrzej", { ["Heat"] call client_fnc_upweedgrowing; } ];
	myAction52 = myDT2 addAction [ "Odwróć ziemię", { ["Turnover"] call client_fnc_upweedgrowing; } ];
} ];
