//file: openDeposit
//dodac interakcje na pozycje i item
_deposit = cursorObject;
_pos = _this select 0; //[1] spawn client_fnc_openDeposit itd do 6 wedlug numerow depozytow
if("" in magazines player && vaultOpen) then { //zmienic
	_caltT = 0;
	player playmove "vvv_anim_lockpick";
	while {true} do {
		if(animationstate player != "vvv_anim_lockpick") then { player playmove "vvv_anim_lockpick"; };
		_calcT = _calcT + 1;
		if(_calcT > 25) exitwith {};
		uisleep 1;
	};
	["Rozwaliłeś zamek, możesz teraz wejść do środka",true] spawn domsg;
	//zmienic na jakis dzwiek szlifierki albo out
	playSound3D ["CG_Jobs\sounds\jailbreak\hacking.ogg", player, false, (getposasl player), 3, 1, 55];

	switch (_pos) do {
		case 1: { deposit1Open = true; };
		case 2: { deposit2Open = true; };
		case 3: { deposit3Open = true; };
		case 4: { deposit4Open = true; };
		case 5: { deposit5Open = true; };
		case 6: { deposit6Open = true; };
	};

} else {
	["By przedostać się przez te kraty potrzebujesz szlifierki",true] spawn domsg;
}