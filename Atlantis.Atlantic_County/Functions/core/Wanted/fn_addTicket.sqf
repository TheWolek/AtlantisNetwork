//fn_addticket
params ["_suspect", "_suspectID", "_officer","_officerID","_charges","_status","_evidence","_active","_jailtime",["_approved",""],["_approvedGUID",""],["_closed",""],["_closedGUID",""]];

_crime = [_suspect, _suspectID, _officer, _officerID, _charges, _status, _evidence, _active, _jailtime, _approved, _approvedGUID, _closed, _closedGUID];
latestWanted pushBack _crime;