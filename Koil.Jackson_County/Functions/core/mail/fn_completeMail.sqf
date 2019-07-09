["You've got Mail!", true] spawn doquickmsg;

awaitingmail append mail;

mail = awaitingmail;

awaitingmail = [];

[player,"Witam! Czeka na ciebie nowa poczta. Możesz go odebrać z poczty lub domu.","Silver Lake"] remoteExec ["server_fnc_sendMessage",2];