params[
	["_module",  nil, [objNull]]
];

private _pos        = getPosATLVisual _module;
private _zone       = [_pos, PSA_rallyDisableDist];
private _uid        = str _module;
private _rallyPoint = PSA_allRallypoints get _uid;

if(isNil "_rallyPoint")
exitWith{
	private _uids = PSA_allRallypoints call ["getIDs"];
	[[_uid, " != ", _uids]] call p_dbg;
	"Could not find rallypoint for module" call p_dbg;
};

_rallyPoint set ["position", _pos];
_rallyPoint set ["zone",    _zone];

true;