//file: signupMail
if(myjob != "none" && myjob != "mail") exitwith { ["Masz już pracę!", true] spawn domsg; };

if(isnil "taskrunning") then { taskrunning = false; };



myjob = "mail";
[] call client_fnc_hudwork;
private ["_warning","_JobBase","_housing"];
[]spawn client_fnc_mailSystem;