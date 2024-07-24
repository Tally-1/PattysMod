// Executed on server only.
params[
	["_man",          nil, [objNull]],
	["_clientId",     nil,       [0]],
	["_animState",    nil,      [""]],
	["_reactivation", false,  [true]]
];
private ["_uid", "_side", "_spawnId"];

private _isModule = _man isKindOf "logic";
private _role     = _man getVariable ["ptg_role", ""];
private _status   = "placed";
private _pos      = getPosATLVisual _man;
private _zone     = [_pos, PSA_rallyDisableDist];
private _dir      = getDirVisual _man;
private _name     = "Rally point";
private _moved    = [_man, true] call PSA_fnc_removeRallyPoint;

// This variable has to be declared before the "addRespawnPosition"
// function so that the marker will be picked up as a respawn marker.
PSA_lastRallyPoint = time;

if(_isModule)then{
	_uid     = str _man;
	_side    = west;
	_spawnId = [_man,0];
	_man setVariable ["PSA_isRallyPoint", true, true];
}else{ 
	_uid     = getPlayerUID _man;
	_side    = side _man;
	_spawnId = [_side, _pos] call BIS_fnc_addRespawnPosition;
};

if(_role isNotEqualTo "")then{
	private _roleName = [_role] call PSA_fnc_capFirstLetter;
	_name = [_name, " (",_roleName,")"]joinString"";
};


if(_moved)then{_status = "moved"};

private _dataArr = [
	["owner",           _man],
	["ownerId",         _uid],
	["machine",    _clientId],
	["spawnId",     _spawnId],
	["name",           _name],
	["position",        _pos],
	["zone",           _zone],
	["direction",       _dir],
	["animState", _animState],
	["side",           _side],
	["status",       _status],
	["enabled",         true],
	["isModule",   _isModule],
	
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


_rallyPoint call ["sendNotifications"];
private _idList = PSA_allRallypoints call ["getIDs"];
[[count _idList, " rallypoint(s) active"]]  call p_dbg;

if(_isModule)then{ 
	_rallyPoint set ["enableRP",   PSA_fnc_enableModuleRP];
	_rallyPoint set ["disableRP", PSA_fnc_disableModuleRP];
	if(_reactivation)
	then{"Rallypoint module reActivated"call P_dbg}
	else{"Rallypoint module placed by curator"call P_dbg}
}else{
	[["Rallypoint ",_status," by ", name _man]] call P_dbg;
};

(str _idList) call p_dbg;

publicVariable "PSA_allRallypoints";

_rallyPoint;