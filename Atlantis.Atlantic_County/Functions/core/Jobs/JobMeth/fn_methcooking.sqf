AcetoneArray = ["UWAGA!: Substancja wygląda na strasznie ciemną!","UWAGA!: Substancja czernieje!","UWAGA!: Substancja ma za dużo koloru!"];
PseudoArray = ["UWAGA!: Substancja traci kolor!","UWAGA!: Substancja prawie wyblakła!","UWAGA!: Substancja jest bardzo przejrzysta!"];
CoolArray = ["UWAGA!: Palnik wytwarza dużo pary!","UWAGA!: Palnik zaczyna palić stół!","UWAGA!: Ciepło bije od palnika!"];
HeatArray = ["UWAGA!: Substancja nie ma odpowiedniej konsystencji!","UWAGA!: Substancja jest bardzo gęsta!","UWAGA!: Substancja wygląda lepko!"];
ReleaseArray = ["UWAGA!: Substancja jest zbyt płynna!","UWAGA!: Ciśnienie próbuje uciec!","UWAGA!: Fiolki są zamglone!"];

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

if(uniform player == "sl_client_c4_hazmat_W") then { _randomValue = _randomValue + _randomValue; };

if(myDrugValue < 50) then { myDrugValue = 50; };
_item = format["CG_MethBag%1", myDrugValue];
[format["Wytworzyłeś %1 torebek mety!",_randomvalue], true] spawn domsg;

while {_randomValue > 0} do { player additem _item; _randomValue = _randomValue - 1; };
//["Add","Karma",random(3),"Stress"] call client_fnc_sustain;

deletevehicle myDT;

player additem "NP_DrugTable";