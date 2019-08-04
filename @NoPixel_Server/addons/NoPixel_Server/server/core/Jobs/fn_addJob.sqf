//add job

activejobs = [];

if(isNil "processJobs") then { processingJobs = false; };
if(!processingJobs) exitwith {};
processingjobs = true;



{
	if( isnull _x ) then { activeJobs pushback "Radio Presenter"; };
}foreach serverRadioPlayers;



_jobcount = count currentMailmen;

while{true} do { 
	diag_log format ["job adding %1", _jobcount];
	if(_jobcount > 4) exitwith {}; 
	_jobcount = _jobcount + 1; 
	activeJobs pushback "Kurier"; 
};

_jobcount = count currentsecurity;
while{true} do { 
	diag_log format ["job adding %1", _jobcount];
	if(_jobcount > 4) exitwith {}; 
	_jobcount = _jobcount + 1; 
	activeJobs pushback "Ochrona"; 
};


_jobcount = count currentTowTruckDrivers;
while{true} do { 
	diag_log format ["job adding %1", _jobcount];
	if(_jobcount > 4) exitwith {}; 
	_jobcount = _jobcount + 1; 
	activeJobs pushback "Tow Truck Driver"; 
};


_jobcount = count currentTrashMan;
while{true} do { 
	diag_log format ["job adding %1", _jobcount];
	if(_jobcount > 4) exitwith {}; 
	_jobcount = _jobcount + 1; 
	activeJobs pushback "Śmieciarz"; 
};


_jobcount = count currentNewsMan;
while{true} do { 
	diag_log format ["job adding %1", _jobcount];
	if(_jobcount > 4) exitwith {}; 
	_jobcount = _jobcount + 1; 
	activeJobs pushback "News Reporter"; 
};


_jobcount = count currentRepairmen;
while{true} do { 
	diag_log format ["job adding %1", _jobcount];
	if(_jobcount > 4) exitwith {}; 
	_jobcount = _jobcount + 1; 
	activeJobs pushback "Mechanik"; 
};


_jobcount = count currentTaxiDrivers;
while{true} do { 
	diag_log format ["job adding %1", _jobcount];
	if(_jobcount > 4) exitwith {}; 
	_jobcount = _jobcount + 1; 
	activeJobs pushback "Taksówkarz"; 
};


_jobcount = count currentLegalAid;
while{true} do { 
	diag_log format ["job adding %1", _jobcount];
	if(_jobcount > 4) exitwith {}; 
	_jobcount = _jobcount + 1; 
	activeJobs pushback "Legal Aid"; 
};

sleep 1;

processingjobs = false;