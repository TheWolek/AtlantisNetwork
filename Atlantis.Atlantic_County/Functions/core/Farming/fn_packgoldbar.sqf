_bar = nearestObject [getpos player, "itemsGoldbar1"];

if(isNull _bar) exitwith {}; //_bar was taken by someone else or cleaned up.

if(_bar distance player > 7) exitwith { ["Nie ma sztabek złota blisko ciebie.", true] spawn domsg; };

deletevehicle _bar;

player additemtobackpack "np_goldbar";

["Podniosłeś sztabkę złota", true] spawn domsg;