["Otrzymałeś list!", true] spawn doquickmsg;

awaitingmail append mail;

mail = awaitingmail;

awaitingmail = [];

[player,"Witaj! Masz oczekujące listy. Możesz je odebrac na poczcie lub w domu.","Silver Lake"] remoteExec ["server_fnc_sendMessage",2];