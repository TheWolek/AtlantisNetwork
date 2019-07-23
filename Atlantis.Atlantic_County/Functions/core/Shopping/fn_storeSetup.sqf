_dummy = "C_man_polo_2_F" createVehicleLocal [1905.81,6733.37,0.00146198];
_dummy setpos [1905.81,6733.37,0.00146198];
client_kcCamera  = "CAMERA" camCreate (getPos player);  
showCinemaBorder true;   
client_kcCamera cameraEffect ["EXTERNAL", "BACK"];                             
//client_kcCamera camSetPos [9821.32,1079.3,1];  
client_kcCamera camSetPos [1903.32,‭6 733,23‬,1];  
client_kcCamera camSetFOV 0.85;  
client_kcCamera camSettarget _dummy; 
 
client_kcCamera camCommit 0;
uisleep 0.25;
deletevehicle _dummy;

cockbag = "C_man_polo_2_F" createVehicleLocal [1906.81,6733.37,0.00146198];  
cockbag setdir 90;  
cockbag setpos [1906.81,6733.37,0.00146198];

if(isNil "dialog_open") then { dialog_open = true; };
dialog_open = true;
while{dialog_open} do { uisleep 0.05; cockbag setdir ((getdir cockbag) + 5); };