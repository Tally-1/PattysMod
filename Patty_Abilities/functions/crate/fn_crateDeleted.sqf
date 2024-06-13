params [
	["_crate",nil,[objNull]]
];
private _allCrates = missionNamespace getVariable "PSA_specialCrates";
private _index     = _allCrates find _crate;
private _crateData = _crate getVariable "PSA_crateData";
private _type      = _crateData get "type";
private _owner     = _crateData get "owner";
private _destroyed = _crateData get "destroyed";
private _retrieved = _crateData get "retrieved";
private _marker    = _crateData get "marker";

if(!isNil "_marker")
then{deleteMarker _marker};

_allCrates deleteAt _index;
missionNamespace setVariable ["PSA_specialCrates",_allCrates,true];

if(_type isEqualTo "arsenalCrate")
exitWith{"Arsenal-crate deleted" call P_dbg};

_owner setVariable ["PSA_myCrate", nil, true];

if(_destroyed)exitWith{"crate destroyed" call P_dbg};
if(_retrieved)exitWith{"crate retrieved" call P_dbg};

"crate deleted" call P_dbg;

true;