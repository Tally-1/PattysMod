params[
	["_module",nil,[objNull]]
];
private _timer   = time +3;
private _varName = _module getVariable "#var";
waitUntil {
	_varName = _module getVariable "#var";
	if(time > _timer)     exitWith{true};
	if(!isNil "_varName") exitWith{true};
	false;
};
private _RPID    = _module getVariable "PSA_RPId";
private _hasRPID = !isNil "_RPID";
if(_hasRPID)
then{
	// [_varName, _RPID] call PSA_fnc_setNewRPID;
	PSA_allRallypoints deleteAt _RPID;
	"deleted old RP" call P_dbg;
};

[["module: ", str _varName]]call p_dbg;

PSA_respawnModules pushBackUnique _module;
PSA_lastRallyPoint = time;
[
	_module,
	0,
	"amovpercmstpsraswrfldnon",
	_hasRPID
] call PSA_fnc_setRallyPoint;

_module addEventHandler ["Deleted", {
	params ["_module"];
	[_module] call PSA_fnc_rallypointModuleDeleted;
}];

"respawn module spawned in" call p_dbg;

true;