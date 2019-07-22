// surrender CurrentCursorTarget;

attachedplayer = false;

player setVariable ["surrender", true, false]; //Set surrender to true

while { player getVariable ["surrender", false] && !imRestrained }  do { 
//	player playMove "amovpercmstpsnonwnondnon_amovpercmstpssurwnondnon"; //Animation in

client_curWep_h = currentWeapon player; // holster weapon script
player action ["SwitchWeapon", player, player, 200];
player switchcamera cameraView;

player playAction "Foski_Surrender"	; //nowa animacja, start
	// Check if player is alive.
	if (deadPlayer) then {
		player setVariable ["surrender", nil, false];
	};
};

//player playMoveNow "AmovPercMstpSsurWnonDnon_AmovPercMstpSnonWnonDnon"; //Animation out
player playAction "Foski_StopSurrendering";