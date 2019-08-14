//file: fn_bus
_hndl = ppEffectCreate ["colorCorrections",1501]; 
_hndl ppEffectEnable true; 
_hndl ppEffectAdjust [1, 1, -0.003, [0.0, 0.0, 0.0, 1.0], [0, 0, 0, 1],  [0, 0, 0, 0.0]]; 
_hndl ppEffectCommit 2; 
["Zasnąłeś w autobusie i obudziłeś się w Atlantis City",false] spawn domsg; 
sleep 5; 
player setPos [880.066,1240.93,0.00143862]; 
sleep 2; 
_hndl ppEffectAdjust [1.0, 1.0, 0.0,[0, 0, 0, 0],[0.0, 1.0, 1.0, 1.0],[0.199, 0.587, 0.114,0.0]]; 
_hndl ppEffectCommit 2;
sleep 2; 
ppEffectDestroy _hndl;