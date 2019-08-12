params["_licenses","_playername"];

_message = format["POSIADANE LICENCJE <br/><br/> %1 <br/><br/>",_playername];

if(0 IN _licenses) then {
	_message = format ["%1 <img size='1' image='cg_mission_files\id_icons\license.paa'/> <t color='#C80000'> Prawo Jazdy kat B</t> <br/> ",_message];
};

if(1 IN _licenses) then {
	_message = format ["%1 <img size='1' image='cg_mission_files\id_icons\license.paa'/> <t color='#C80000'> Licencja na broń klasy 1 </t> <br/> ",_message];
};

if(2 IN _licenses) then {
	_message = format ["%1 <img size='1' image='cg_mission_files\id_icons\license.paa'/> <t color='#C80000'> Licencja górnika </t> <br/> ",_message];
};

if(3 IN _licenses) then {
	_message = format ["%1 <img size='1' image='cg_mission_files\id_icons\license.paa'/> <t color='#C80000'> Licencja drwala </t> <br/> ",_message];
};

if(4 IN _licenses) then {
	_message = format ["%1 <img size='1' image='cg_mission_files\id_icons\license.paa'/> <t color='#C80000'> Licencja rybaka </t> <br/> ",_message];
};

if(5 IN _licenses) then {
	_message = format ["%1 <img size='1' image='cg_mission_files\id_icons\license.paa'/> <t color='#C80000'> Prawo Jazdy kat C </t> <br/> ",_message];
};

if(6 IN _licenses) then {
	_message = format ["%1 <img size='1' image='cg_mission_files\id_icons\license.paa'/> <t color='#C80000'> Licencja pilota </t> <br/> ",_message];
};

if(7 IN _licenses) then {
	_message = format ["%1 <img size='1' image='cg_mission_files\id_icons\license.paa'/> <t color='#C80000'> Licencja handlarza oleju </t> <br/> ",_message];
};

if(8 IN _licenses) then {
	_message = format ["%1 <img size='1' image='cg_mission_files\id_icons\license.paa'/> <t color='#C80000'> Licencja Dowódcy SWAT </t> <br/> ",_message];
};

if(9 IN _licenses) then {
	_message = format ["%1 <img size='1' image='cg_mission_files\id_icons\license.paa'/> <t color='#C80000'> Licencja SWAT </t> <br/> ",_message];
};

if(10 IN _licenses) then {
	_message = format ["%1 <img size='1' image='cg_mission_files\id_icons\license.paa'/> <t color='#C80000'> Licencja Dowódcy nurków PD </t> <br/> ",_message];
};

if(11 IN _licenses) then {
	_message = format ["%1 <img size='1' image='cg_mission_files\id_icons\license.paa'/> <t color='#C80000'> Licencja nurka PD </t> <br/> ",_message];
};

if(12 IN _licenses) then {
	_message = format ["%1 <img size='1' image='cg_mission_files\id_icons\license.paa'/> <t color='#C80000'> Licencja Dowódcy AIR PD </t> <br/> ",_message];
};

if(13 IN _licenses) then {
	_message = format ["%1 <img size='1' image='cg_mission_files\id_icons\license.paa'/> <t color='#C80000'> Licencja AIR PD </t> <br/> ",_message];
};

if(14 IN _licenses) then {
	_message = format ["%1 <img size='1' image='cg_mission_files\id_icons\license.paa'/> <t color='#C80000'> DoC CRT Leader Certification </t> <br/> ",_message];
};

if(15 IN _licenses) then {
	_message = format ["%1 <img size='1' image='cg_mission_files\id_icons\license.paa'/> <t color='#C80000'> DoC CRT Certification </t> <br/> ",_message];
};

if(16 IN _licenses) then {
	_message = format ["%1 <img size='1' image='cg_mission_files\id_icons\license.paa'/> <t color='#C80000'> DoC Air Leader Certification </t> <br/> ",_message];
};

if(17 IN _licenses) then {
	_message = format ["%1 <img size='1' image='cg_mission_files\id_icons\license.paa'/> <t color='#C80000'> DoC Air Certification </t> <br/> ",_message];
};

if(18 IN _licenses) then {
	_message = format ["%1 <img size='1' image='cg_mission_files\id_icons\license.paa'/> <t color='#C80000'> Patent motorowodny </t> <br/> ",_message];
};

if(19 IN _licenses) then {
	_message = format ["%1 <img size='1' image='cg_mission_files\id_icons\license.paa'/> <t color='#C80000'> Członkostwo kasyna </t> <br/> ",_message];
};

if(20 IN _licenses) then {
	_message = format ["%1 <img size='1' image='cg_mission_files\id_icons\license.paa'/> <t color='#C80000'> Bar Certification </t> <br/> ",_message];
};

if(21 IN _licenses) then {
	_message = format ["%1 <img size='1' image='cg_mission_files\id_icons\license.paa'/> <t color='#C80000'> Prawo Jazdy kat D </t> <br/> ",_message];
};

if(22 IN _licenses) then {
	_message = format ["%1 <img size='1' image='cg_mission_files\id_icons\license.paa'/> <t color='#C80000'> Licencja na broń klasy 1	 </t> <br/> ",_message];
};

if(23 IN _licenses) then {
	_message = format ["%1 <img size='1' image='cg_mission_files\id_icons\license.paa'/> <t color='#C80000'> Licencja Dowódcy AIR FD </t> <br/> ",_message];
};

if(24 IN _licenses) then {
	_message = format ["%1 <img size='1' image='cg_mission_files\id_icons\license.paa'/> <t color='#C80000'> Licencja AIR FD </t> <br/> ",_message];
};

if(25 IN _licenses) then {
	_message = format ["%1 <img size='1' image='cg_mission_files\id_icons\license.paa'/> <t color='#C80000'> FD Scuba Leader Certification </t> <br/> ",_message];
};

if(26 IN _licenses) then {
	_message = format ["%1 <img size='1' image='cg_mission_files\id_icons\license.paa'/> <t color='#C80000'> Licencja Nurka FD </t> <br/> ",_message];
};

if(27 IN _licenses) then {
	_message = format ["%1 <img size='1' image='cg_mission_files\id_icons\license.paa'/> <t color='#C80000'> Licencja prawnika </t> <br/> ",_message];
};

hint parsetext _message;