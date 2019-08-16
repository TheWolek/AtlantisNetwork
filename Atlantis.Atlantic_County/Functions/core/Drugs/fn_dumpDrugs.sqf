if(count currentcop < 2) exitwith { ["2 policjantów musi być na służbie",true] spawn domsg; };

_meta100 = ["CG_MethBag100"]; //350
_meta90 = ["CG_MethBag90"]; //250
_meta80 = ["CG_MethBag80"]; //200
_meta70 = ["CG_MethBag70"]; //150
_meta60 = ["CG_MethBag60"]; //100
_meta50 = ["CG_MethBag50"]; //50

_koka = ["CG_Cocaine"]; // 600

_weed1 = ["CG_WeedBag1"]; //50
_weed2 = ["CG_WeedBag2"]; //100
_weed3 = ["CG_WeedBag3"]; //200
_weed4 = ["CG_WeedBag4"]; //250



_total = 0;
_cashout = 0;

if(myjob == "Mafia") then {
	{
	_mag = _x;
	if(_mag IN _meta100) then { _cashout = _cashout + 1100; player removeMagazine _mag; _total = _total + 3; };
	if(_mag IN _meta90) then { _cashout = _cashout + 1100; player removeMagazine _mag; _total = _total + 3; };
	if(_mag IN _meta80) then { _cashout = _cashout + 900; player removeMagazine _mag; _total = _total + 2; };
	if(_mag IN _meta70) then { _cashout = _cashout + 750; player removeMagazine _mag; _total = _total + 2; };

	if(_mag IN _koka) then { _cashout = _cashout + 950;  player removeMagazine _mag; _total = _total + 5; };

	if(_mag IN _weed1) then { _cashout = _cashout + 650; player removeMagazine _mag; _total = _total + 1; };
	if(_mag IN _weed2) then { _cashout = _cashout + 650; player removeMagazine _mag; _total = _total + 1; };
	if(_mag IN _weed3) then { _cashout = _cashout + 650; player removeMagazine _mag; _total = _total + 1; };
	if(_mag IN _weed4) then { _cashout = _cashout + 850; player removeMagazine _mag; _total = _total + 2; };

	} forEach magazines player;
	[_cashout,true,true] call Client_fnc_addMoneyToPlayer;

//	["Add","Karma",random(15),"Stress"] call client_fnc_sustain;
	[1,_total,player,getpos player] remoteExec ["server_fnc_drugJob",2];
} else {
	{
	_mag = _x;
	if(_mag IN _meta100) then { _cashout = _cashout + 550; player removeMagazine _mag; _total = _total + 1; };
	if(_mag IN _meta90) then { _cashout = _cashout + 550; player removeMagazine _mag; _total = _total + 1; };
	if(_mag IN _meta80) then { _cashout = _cashout + 450; player removeMagazine _mag; _total = _total + 1; };
	if(_mag IN _meta70) then { _cashout = _cashout + 375; player removeMagazine _mag; _total = _total + 1; };
	if(_mag IN _meta60) then { _cashout = _cashout + 150; player removeMagazine _mag; _total = _total + 1; };
	if(_mag IN _meta50) then { _cashout = _cashout + 50; player removeMagazine _mag; _total = _total + 1; };

	if(_mag IN _koka) then { _cashout = _cashout + 475; player removeMagazine _mag; _total = _total + 1; };

	if(_mag IN _weed1) then { _cashout = _cashout + 50; player removeMagazine _mag; _total = _total + 1; };
	if(_mag IN _weed2) then { _cashout = _cashout + 100; player removeMagazine _mag; _total = _total + 1; };
	if(_mag IN _weed3) then { _cashout = _cashout + 325; player removeMagazine _mag; _total = _total + 1; };
	if(_mag IN _weed4) then { _cashout = _cashout + 425; player removeMagazine _mag; _total = _total + 1; };

	} forEach magazines player;

	[_cashout,true,true] call Client_fnc_addMoneyToPlayer;

	[format["Zarobiłeś %1 z tego przemytu.",_cashout call client_fnc_numberText], true] spawn domsg;
		
//	["Add","Karma",random(15),"Stress"] call client_fnc_sustain;
};


//if(myjob == "Mafia") exitwith { [1,_total,player,getpos player] remoteExec ["server_fnc_drugJob",2]; };

//if(myjob == "Biker") exitwith { [1,_total,player,getpos player] remoteExec ["server_fnc_drugJob2",2]; };