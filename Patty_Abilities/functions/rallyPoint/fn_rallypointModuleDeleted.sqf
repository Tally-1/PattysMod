params[
	["_module",  nil, [objNull]]
];
private _uid        = str _module;
private _rallyPoint = PSA_allRallypoints get _uid;
if(isNil "_rallyPoint")
exitWith{
	private _uids = PSA_allRallypoints call ["getIDs"];
	[[_uid, " != ", _uids]] call p_dbg;
	"Could not find rallypoint for deleted module" call p_dbg;
};

// if the RP-module is deleted only to disable the RP then "enabled" will be false;
private _enabled = _rallyPoint get "enabled";
if!(_enabled)exitWith{};

[_module] call PSA_fnc_removeRallyPoint;
"Removed RP data for module" call p_dbg;