private["_custody","_jail","_prison"];

_time = _this select 0;
_time = call compile format["%1",_time];
_reason = _this select 1;

if(isnil "secondsLeft") then { secondsLeft = 0; };

secondsLeft = secondsLeft + (_time * 60);

//if ( secondsLeft >= 600 ) then { _custody = "prison"; } else { _custody = "jail"; };

if ( getpos player distance [6966.31,4042.59,0.00143433] < 40 ) then { _custody = "jail"; };
//if ( getpos player distance [5556.2,6291.29,0.00143433] < 150 ) then { _custody = "prison"; };

if (_custody == "jail") then { player setpos [7030.6,4050.35,0.00143433]; };
//if (_custody == "prison") then { player setpos [5520.17,6316,0.00143433]; };

removeuniform player;

["Remove","Karma",random(100),"Stress"] call client_fnc_sustain;

player forceadduniform "U_C_WorkerCoveralls";
ClientArrested = true;
EM_allowed2 = false;
_escaped = false;
imRestrained = false;
player setVariable ['surrender',nil, true];
player switchmove "";
player playAction "Foski_cuff_front";
player forceWalk true;
_myradio = call TFAR_fnc_ActiveSwRadio;
player unlinkitem _myradio;
_update = 0;
while{ClientArrested} do {
	if(getpos player distance [6966.31,4042.59,0.00143433] > 100 && _custody == "jail" && !(player getVariable["JailTracked",FALSE])) exitwith { _escaped = true; };
	//if(getpos player distance [5556.2,6291.29,0.00143433] > 250 && _custody == "prison" && !(player getVariable["JailTracked",FALSE])) exitwith { _escaped = true; };
	uisleep 1;
	secondsLeft = secondsLeft - 1;
	_update = _update + 1;
	if(secondsLeft < 1) exitwith { secondsLeft = 0; };
	if(_update == 300) then { 
		_update = 0;
		_time = secondsLeft / 60;
		_time = round(_time);
		[_time, _reason,player,false] remoteExec ["server_fnc_jailsetup",2];
	};
};
[0, _reason,player,false] remoteExec ["server_fnc_jailsetup",2];
ClientArrested = false;
EM_allowed2 = true;
//when jail time ends normally
if(!_escaped) then {
	["Your jail time is over, did you learn your lesson?", true] spawn domsg;
	if(_custody == "jail") then { player setpos [910.937,1237.75,0.0014348]; };
	//if(_custody == "prison") then { player setpos [5538.63,6258.06,0.00143433]; };
	player setvariable ["JailTracked",nil,true];
	player playAction "foski_uncuff_front";
	player forcewalk false; 
	removeuniform player;
	player forceadduniform "U_C_Poloshirt_blue";
	player linkItem "cg_tabletd";
} else {
	["Udało ci się oswobodzić z kajdanek", true] spawn domsg;
	player playaction "foski_uncuff_front";
	player forcewalk false;
};
