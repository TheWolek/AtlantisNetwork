//file: plantweed
["NP_GrowingPlot",0] spawn client_fnc_removeitem;

myDT2 = createVehicle ["vvv_cannabis1_plan", [0,0,0], [], 0, "NONE"]; 
myDT2 attachto [player, [0, 1.3, -1] ]; 
myDrugAction2 = player addAction [ "Posadź", { [] call client_fnc_dropWeedPlot; } ];