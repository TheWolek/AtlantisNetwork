AcetoneArray = ["OSTRZEŻENIE: Substancja wydaje się zbyt ciemna!","OSTRZEŻENIE: Substancja robi się czarna!","OSTRZEŻENIE: Substancja ma zbyt dużo koloru!"];
PseudoArray = ["OSTRZEŻENIE: Substancja traci kolor!","OSTRZEŻENIE: Substancja jest wyblakła!","OSTRZEŻENIE: Substancja jest niemal przezroczysta!"];
CoolArray = ["OSTRZEŻENIE: Piec wymusza parę!","OSTRZEŻENIE: Piec pali stół!","OSTRZEŻENIE: Pokój wypełnia się ciepłem!"];
HeatArray = ["OSTRZEŻENIE: Substancja nie płynie prawidłowo!","OSTRZEŻENIE: Substancja jest bardzo gruba!","OSTRZEŻENIE: The substance is looking sticky!"];
ReleaseArray = ["OSTRZEŻENIE: Substancja płynie zbyt szybko!","OSTRZEŻENIE: para się uciec!","OSTRZEŻENIE: wyglądają bardzo mgliste!"];

_count = 0;
checkFinish = false;
while{_count < 10 && cookingMeth} do {
	checkFinish = true;
	sleep 10;
	checkFinish = false;
	_randomValue = round(random 5);
	if(_randomValue == 1 || _randomvalue == 0) then { requiredOutput = "Acetone"; _message = AcetoneArray call BIS_fnc_selectRandom;  [_message,false] spawn domsg; };
	if(_randomValue == 2) then { requiredOutput = "Pseudo"; _message = PseudoArray call BIS_fnc_selectRandom;  [_message,false] spawn domsg; };
	if(_randomValue == 3) then { requiredOutput = "Cool"; _message = CoolArray call BIS_fnc_selectRandom;  [_message,false] spawn domsg; };
	if(_randomValue == 4) then { requiredOutput = "Heat"; _message = HeatArray call BIS_fnc_selectRandom;  [_message,false] spawn domsg; };
	if(_randomValue == 5) then { requiredOutput = "Release"; _message = ReleaseArray call BIS_fnc_selectRandom;  [_message,false] spawn domsg; };
	sleep 30;	
	_count = _count + 1;
};
mydrugvalue = mydrugvalue - totalskills;
player removeaction myAction1;
player removeaction myAction2;
player removeaction myAction3;
player removeaction myAction4;
player removeaction myAction5;
player removeaction myActionPack;

if(isNull mydt) exitwith {};

_randomValue = round(random 2) + 3;

if(uniform player == "vvv_hazmat") then { _randomValue = _randomValue + _randomValue; };

if(myDrugValue < 50) then { myDrugValue = 50; };
_item = format["CG_MethBag%1", myDrugValue];
[format["Gotowałeś %1 torebek met!",_randomvalue], true] spawn domsg;

while {_randomValue > 0} do { player additem _item; _randomValue = _randomValue - 1; };
["Add","Karma",random(3),"Stress"] call client_fnc_sustain;

deletevehicle myDT;

player additem "NP_DrugTable";