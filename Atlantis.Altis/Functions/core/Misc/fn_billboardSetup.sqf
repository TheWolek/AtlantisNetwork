private ["_obj","_dat","_cString","_adString"];

_thegate = "Land_Gate_C_Mobster" createvehicle [6775.36,4587.3,11.00141573]; 
_thegate setpos [6775.36,4587.3,0.00141573]; 
_thegate SETDIR 87;


_busstops = [[[5490.29,3785.73,0],273.03],[[4970.93,2485.21,0],332.338],[[4127.87,2167.11,0.0037117],272.874],[[6726.24,4551.92,-0.0428596],267.571],[[5422.27,6284.51,0.133667],180.264],[[6576.34,2119.98,-0.0346107],158.076],[[4961.3,1213.89,0],283.294],[[3444.61,1347.09,0.000831604],13.4604],[[6301.42,1337.52,0],109.123],[[7751.1,2561.6,-5.91278e-005],158.076],[[9611.7,4134.67,0],77.442],[[9405.29,5477.88,-0.23933],63.4443],[[8659.09,6932.58,-1.90735e-006],250.612],[[9769.78,3435.27,0],158.076]];


{
	_busstop = "PARADADEBUS_CIV" createvehicle (_x select 0);
	_busstop allowdamage false;
	_busstop setpos (_x select 0);
	_busstop setdir (_x select 1);
	clearitemcargoglobal _busstop;
}foreach _busstops;







