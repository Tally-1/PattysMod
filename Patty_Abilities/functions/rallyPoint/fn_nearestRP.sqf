params[
	["_pos",nil,[[]]]
];
private _positions = []; 
private _uids      = [];
{
	private _rallyPoint   = _y;
	private _isRallyPoint = (typeName _rallyPoint) isEqualTo "HASHMAP";
	
	if(_isRallyPoint)
	then{
		_positions pushBack (_rallyPoint get "position");
		_uids pushBack      (_rallyPoint get  "ownerId");
	};
	
} forEach _self;

if(_positions isEqualTo [])exitWith{};


private _nearestPos = [_pos, _positions, true] call PSA_fnc_getNearest;
private _index      = _positions find _nearestPos;
private _uid        = _uids#_index;
private _rallyPoint = _self get _uid;

_rallyPoint;