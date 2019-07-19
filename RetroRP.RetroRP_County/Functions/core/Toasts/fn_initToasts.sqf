("RscExileToastAreaLayer" call BIS_fnc_rscLayer) cutRsc ["RscExileToastArea", "PLAIN", 0, true]; 
ExileClientToasts = [];
ExileClientLastToastTickAt = diag_tickTime;
ExileHudEventHandle = addMissionEventHandler ["Draw3D", { _this call ClientModules_Toasts_fnc_onDraw3d; }];