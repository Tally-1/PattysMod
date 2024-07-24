// Executed on server only.
params[
	["_man",  nil, [objNull]],
	["_move", false,  [true]]
];
private ["_uid"];
private _isModule = _man isKindOf "logic";

if(_isModule)
then{_uid = str _man}
else{_uid = getPlayerUID _man};

private _rallyPoint = PSA_allRallypoints get _uid;
if(isNil "_rallyPoint")exitWith{
	if!(_move)then{[["No rallypoint found for ", name _man]]call P_dbg};
	false;
};

if!(_isModule)then{
	private _spawnId = _rallyPoint get "spawnId";
	_spawnId call BIS_fnc_removeRespawnPosition;
};


PSA_allRallypoints deleteAt _uid;
publicVariable "PSA_allRallypoints";

true;