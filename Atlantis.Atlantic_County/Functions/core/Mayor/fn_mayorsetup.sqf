["Jesteś burmistrzem!", true] spawn domsg;
[format["Burmistrz obudził się! %1", name player], true] remoteexec ["domsg",-2];
Mayor = true;