AcetoneArray = ["UWAGA: substancja wydaje się zbyt ciemna!","OSTRZEŻENIE: substancja robi się czarna!","OSTRZEŻENIE: substancja ma zbyt dużo koloru!"];
PseudoArray = ["OSTRZEŻENIE: substancja traci kolor!","OSTRZEŻENIE: substancja jest wyblakła!","OSTRZEŻENIE: substancja jest prawie przezroczysta!"];
CoolArray = ["OSTRZEŻENIE: Piec wymusza parę!","OSTRZEŻENIE: Piec pali stół!","OSTRZEŻENIE: Pokój wypełnia się ciepłem!"];
HeatArray = ["OSTRZEŻENIE: Substancja nie płynie prawidłowo!","OSTRZEŻENIE: substancja jest bardzo gruba!","OSTRZEŻENIE: substancja wygląda lepko!"];
ReleaseArray = ["OSTRZEŻENIE: substancja przepływa zbyt szybko!","OSTRZEŻENIE: Steam próbuje uciec!","OSTRZEŻENIE: Fiolki wyglądają na bardzo zamglone!"];

_count = 0;
checkFinish = false;
while{_count < 15 && cookingMeth} do {
	checkFinish = true;
	sleep 30;
	checkFinish = false;
	_randomValue = round(random 5);
	if(_randomValue == 1 || _randomvalue == 0) then { requiredOutput = "Acetone"; _message = AcetoneArray call BIS_fnc_selectRandom; [_message, true] spawn domsg; };
	if(_randomValue == 2) then { requiredOutput = "Pseudo"; _message = PseudoArray call BIS_fnc_selectRandom; [_message, true] spawn domsg; };
	if(_randomValue == 3) then { requiredOutput = "Cool"; _message = CoolArray call BIS_fnc_selectRandom; [_message, true] spawn domsg; };
	if(_randomValue == 4) then { requiredOutput = "Heat"; _message = HeatArray call BIS_fnc_selectRandom; [_message, true] spawn domsg; };
	if(_randomValue == 5) then { requiredOutput = "Release"; _message = ReleaseArray call BIS_fnc_selectRandom; [_message, true] spawn domsg; };
	sleep 30;	
	_count = _count + 1;
};

cookingMeth = false;
player removeaction myAction1;
player removeaction myAction2;
player removeaction myAction3;
player removeaction myAction4;
player removeaction myAction5;
player removeaction myActionPack;