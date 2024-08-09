params[
	["_pos", nil,[[],objNull]],
	["_rad", 50,          [0]]
];
private _all      = _pos nearEntities ["ModuleRespawnPosition_F",_rad];
if(_all isEqualTo [])exitWith{"no MRS near"call p_dbg;nil};

private _nearest = [_pos, _all] call PSA_fnc_getNearest;
if(isNil "_nearest")exitWith{"nil MRS near"call p_dbg;nil};

_nearest;