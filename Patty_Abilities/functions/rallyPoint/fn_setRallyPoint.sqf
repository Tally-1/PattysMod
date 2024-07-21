// Executed on server only.
params[
	["_man",nil, [objNull]],
	["_clientId",nil,  [0]],
	["_animState",nil,[""]]
];
private _status  = "placed";
private _moved   = [_man, true] call PSA_fnc_removeRallyPoint;
private _uid     = getPlayerUID _man;
private _side    = side _man;
private _pos     = getPosATLVisual _man;
private _zone    = [_pos, PSA_rallyDisableDist];
private _dir     = getDirVisual _man;
private _name    = "Rally point";
private _spawnId = [_side, _pos, _name] call BIS_fnc_addRespawnPosition;

if(_moved)then{_status = "moved"};

private _dataArr = [
	["owner",           _man],
	["ownerId",         _uid],
	["machine",    _clientId],
	["spawnId",     _spawnId],
	["position",        _pos],
	["zone",           _zone],
	["direction",       _dir],
	["animState", _animState],
	["side",           _side],
	["status",       _status],
	["enabled",         true],
	
	/*********************{METHODS}**********************/
	["sendNotifications",   PSA_fnc_rallyPointNotifications],
	["draw3DIcon",                         PSA_fnc_drawRP3D],
	["drawMapIcon",                       PSA_fnc_drawRPMap],
	["toggleContested",   PSA_fnc_toggleContestedRallyPoint],
	["contestedNow",         PSA_fnc_rallyPointContestedNow],
	["onContestedStart", PSA_fnc_onContestedRallyPointStart],
	["onContestedEnd",     PSA_fnc_onContestedRallyPointEnd],
	["enableRP",                           PSA_fnc_enableRP],
	["disableRP",                         PSA_fnc_disableRP],
	["onRespawn",                       PSA_fnc_onRespawnRP],

	["nearEnemies",                PSA_fnc_nearCrateEnemies],
	["nearFriends",                PSA_fnc_nearCrateFriends]
	
];

private _rallyPoint = createHashmapObject [_dataArr];

PSA_allRallypoints set [_uid, _rallyPoint];
publicVariable "PSA_allRallypoints";

_rallyPoint call ["sendNotifications"];
[["Rallypoint ",_status," by ", name _man]] call P_dbg;

_rallyPoint;