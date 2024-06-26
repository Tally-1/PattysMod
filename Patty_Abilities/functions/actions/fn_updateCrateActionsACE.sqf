params[ 
	["_object",nil,[objNull]]
];
private _data = _object getVariable "PSA_crateData";
if(isNil "_data")exitWith{false};

private _type = _data get "type";
if(_type isNotEqualTo "resupplyCrate")exitWith{true};

private _actions = [_object] call PSA_fnc_getObjectActionsPSA;
if(_actions isNotEqualTo [])exitWith{true};

if(PSA_isACEEnabled)exitWith{ 
	[_object] call PSA_fnc_specialCrateResupplyActionACE;
	[_object] call PSA_fnc_specialCrateRetrieveActionACE;
	"Actions reapplied" call P_dbg;
	true;
};

true;