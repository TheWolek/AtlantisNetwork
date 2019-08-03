["Rozpocząłeś grę w Black Jack.", true] spawn domsg;

BGJoinableGames pushback player;
publicVariable "BGJoinableGames";

uisleep 60;

_pia = player FIND BGJoinableGames;
BGJoinableGames = BGJoinableGames DELETEAT _pia;
publicVariable "BGJoinableGames";

[] spawn client_fnc_blackjackSetupGame;