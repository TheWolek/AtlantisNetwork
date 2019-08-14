maxtime = 0;
deadplayer = false;
im_dead = false; 
closedialog 0;
detach player;
["set",0.25] call Client_Fnc_DoHealth;

if(deadPhase == 1) then {

    ["Odzyskałeś władzę w kończynach i pamiętasz co się działo, gdy byłeś sparaliżowany.", true] spawn domsg;

};

if(deadPhase == 2) then {

    ["Obudziłeś się, ale nie pamiętasz co się działo.", true] spawn domsg;

};

sleep 1;
deadphase = 0;
player setVariable ["dead",false,true];
player setVariable ["tf_voiceVolume", 1, true];
TF_speak_volume_level = "normal";
showchat true;
inGameUISetEventHandler ["Action", ""];

"colorCorrections" ppEffectEnable true;    
"colorCorrections" ppEffectAdjust [1, 1, -0.003, [0.0, 0.0, 0.0, 0.0], [0, 0, 0, 1],  [0, 0, 0, 0.0]];  
"colorCorrections" ppEffectCommit 5;
"colorCorrections" ppEffectEnable false; 

if(myjob IN ["Cop","EMS","FIRE"] || !shooting_death || isNil "shooting_death") exitwith {};

player setunitloadout savedGear;

[player, "getunitloadout", savedGear] remoteExec ["Server_fnc_setVariable",2];