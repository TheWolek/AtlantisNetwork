//file: fn_bus
_hndl = ppEffectCreate ["colorCorrections",1501];
_hndl ppEffectEnable true;
_hndl ppEffectAdjust [1.0, 1.0, 0.0,[0, 0, 0, 0],[0.0, 1.0, 1.0, 1.0],[0.199, 0.587, 0.114,0.0]];
_hndl ppEffectCommit 3;
["Zasnąłeś w autobusie i obudziłeś się w Atlantis City",false] spawn domsg;
sleep 7;
ppEffectDestroy _hndl;