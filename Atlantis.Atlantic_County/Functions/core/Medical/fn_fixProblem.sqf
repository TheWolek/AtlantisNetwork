if(imHealing) exitwith {};
imHealing = true;
_user = _this select 0;
_arrayCount = _this select 1;
_amount = _this select 2;
_myInjuries = _user getVariable "playerInjuries";
if(_arrayCount < 10) then {
	if(_amount == 1) then { if("CG_ATF_Bandage_i" in magazines player || myJob == "EMS" || myjob == "Fire") then {  ["Bandażuję rany",3,'client_fnc_healTime',_user,"AinvPknlMstpSnonWnonDnon_medic_1",[_user,_myInjuries,_arrayCount,"CG_ATF_Bandage_i"],"cg_mission_files\sounds\patdown1.ogg"] spawn client_fnc_dotask; } else { ["Nie masz potrzebnych przedmiotów!", true] spawn domsg; }; };
	if(_amount == 2) then { if("CG_ATF_Bandage_i" in magazines player || myJob == "EMS" || myjob == "Fire") then { ["Bandażuję rany",4,'client_fnc_healTime',_user,"AinvPknlMstpSnonWnonDnon_medic_1",[_user,_myInjuries,_arrayCount,"CG_ATF_Bandage_i"],"cg_mission_files\sounds\patdown1.ogg"] spawn client_fnc_dotask; } else { ["Nie masz potrzebnych przedmiotóws!", true] spawn domsg; }; };
	if(_amount == 3) then { if("CG_ATF_First_Aid_Kit_i" in magazines player || myJob == "EMS" || myjob == "Fire") then { ["Używam apteczki (Level 2)",5,'client_fnc_healTime',_user,"AinvPknlMstpSnonWnonDnon_medic_1",[_user,_myInjuries,_arrayCount,"CG_ATF_Bandage_i"],"cg_mission_files\sounds\patdown1.ogg"] spawn client_fnc_dotask; } else { ["Nie masz potrzebnych przedmiotów!", true] spawn domsg; }; };	
	if(_amount == 4) then { if("CG_ATF_First_Aid_Kit_i" in magazines player || myJob == "EMS" || myjob == "Fire") then { ["Używam apteczki (Level 3)",12,'client_fnc_healTime',_user,"AinvPknlMstpSnonWnonDnon_medic_1",[_user,_myInjuries,_arrayCount,"CG_ATF_Bandage_i"],"cg_mission_files\sounds\patdown1.ogg"] spawn client_fnc_dotask; } else { ["Nie masz potrzebnych przedmiotów!", true] spawn domsg; }; };	
};
if(_arrayCount == 10) then {
	if(_amount > 0) then { if(myJob == "EMS" || myjob == "Fire") then { ["Giving Antibiotics",5,'client_fnc_healTime',_user,"AinvPknlMstpSnonWnonDnon_medic_1",[_user,_myInjuries,_arrayCount,"CG_ATF_Bandage_i"],"cg_mission_files\sounds\patdown1.ogg"] spawn client_fnc_dotask; } else { ["Nie masz potrzebnych przedmiotów!", true] spawn domsg; }; };
};	
closedialog 0;
sleep 3;
imhealing = false;



