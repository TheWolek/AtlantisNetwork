detach myDT2;
growingweed = true;
player removeAction myDrugAction2;
["Twoja sadzonka jest zasadzona!", true] spawn domsg;
myActionStart2 = myDT2 addAction [ "Start Growing", {  
	[] spawn client_fnc_weedgrowing;
	myDrugValue2 = 4;
	totalskills = 4;
	myDT2 removeaction myActionStart2;
	myAction12 = myDT2 addAction [ "Podlać Rośline", { ["Water"] call client_fnc_upweedgrowing; } ];
	myAction22 = myDT2 addAction [ "Ściąć Rośline", { ["Prune"] call client_fnc_upweedgrowing; } ];
	myAction32 = myDT2 addAction [ "Schłodzić Rośline", { ["Cool"] call client_fnc_upweedgrowing; } ];
	myAction42 = myDT2 addAction [ "Ogrzać Rośline", { ["Heat"] call client_fnc_upweedgrowing; } ];
	myAction52 = myDT2 addAction [ "Na żywnic glebe", { ["Turnover"] call client_fnc_upweedgrowing; } ];
} ];
