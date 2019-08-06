if(count currentcop < 2) exitwith { ["2 policjantów musi być na służbie",true] spawn domsg; };

_class1 = ["CG_MethBag100","CG_Cocaine","CG_WeedBag4"];
_class2 = ["CG_MethBag80","CG_WeedBag3","CG_MethBag90"];
_class3 = ["CG_MethBag70","CG_WeedBag2"];
_class4 = ["CG_MethBag60"];
_class5 = ["CG_MethBag50","CG_WeedBag1"];

_total = 0;
_cashout = 0;

if(myjob == "Mafia") then {
	{
	_mag = _x;
	if(_mag IN _class1) then { player removeMagazine _mag; _total = _total + 1; };
	if(_mag IN _class2) then { player removeMagazine _mag; _total = _total + 1; };
	if(_mag IN _class3) then { player removeMagazine _mag; _total = _total + 1; };
	if(_mag IN _class4) then { player removeMagazine _mag; _total = _total + 1; };
	if(_mag IN _class5) then { player removeMagazine _mag; _total = _total + 1; };	

	} forEach magazines player;

	["Add","Karma",random(15),"Stress"] call client_fnc_sustain;
	[1,_total,player,getpos player] remoteExec ["server_fnc_drugJob",2];
} else {
	{
	_mag = _x;
	if(_mag IN _class1) then { _cashout = _cashout + 500; player removeMagazine _mag; _total = _total + 1; };
	if(_mag IN _class2) then { _cashout = _cashout + 400; player removeMagazine _mag; _total = _total + 1; };
	if(_mag IN _class3) then { _cashout = _cashout + 300; player removeMagazine _mag; _total = _total + 1; };
	if(_mag IN _class4) then { _cashout = _cashout + 200; player removeMagazine _mag; _total = _total + 1; };
	if(_mag IN _class5) then { _cashout = _cashout + 100; player removeMagazine _mag; _total = _total + 1; };	

	} forEach magazines player;

	[_cashout,false,true] call Client_fnc_addMoneyToPlayer;

	[format["Zarobiłeś %1 z tego przemytu.",_cashout call client_fnc_numberText], true] spawn domsg;
		
	["Add","Karma",random(15),"Stress"] call client_fnc_sustain;
};


//if(myjob == "Mafia") exitwith { [1,_total,player,getpos player] remoteExec ["server_fnc_drugJob",2]; };

//if(myjob == "Biker") exitwith { [1,_total,player,getpos player] remoteExec ["server_fnc_drugJob2",2]; };