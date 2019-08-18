waitUntil {!isServer && !isNull player && player isEqualTo player};
if (player diarySubjectExists "controls") exitWith {};

player createDiarySubject ["controls","Controls"];

/*

player createDiaryRecord ["",
	[
		"",
		""
	]
];

*/

player createDiaryRecord ["controls",
	[
		"controls",
		"
		Dla wszystkich:<br/>
		2-9: gestykulacja<br/>
		T: bicie<br/>
		Shift+T: kopanie<br/>
		Ctrl+T: duszenie (zza celem)<br/>
		Spacja: przerwanie akcji<br/>
		Ctrl+V: skok<br/>
		U: otwarcie / zamkniecie pojazdu<br/>
		Shift+H: schowanie broni<br/>
		Ctrl+H: wyjęcie broni<br/>
		Shift+6: zdjecie / założenie rąk na głowę<br/>
		Shift+O: zatyczki do uszu<br/>
		<br/>
		Dla policji:<br/>
		Shift+5: Usunięcie kolczatek<br/>
		Shift+F: obsługa syren<br/>
		Ctrl+F: obsługa syren<br/>
		Shift+G: powalenie (zza celem)<br/>
		Ctrl+1: zmiana pistoletu z taserem<br/>
		<br/>
		Obsługa radia:<br/>
		F3, F4, F4, F5, F6, F7, F8, F9
		"
	]
];