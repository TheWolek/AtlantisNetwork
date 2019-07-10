["You are the Mayor of Silver Lake City, welcome!", true] spawn domsg;
[format["Burmistrz Silver Lake pojawił się na wyspie! %1", name player], true] remoteexec ["domsg",-2];
Mayor = true;