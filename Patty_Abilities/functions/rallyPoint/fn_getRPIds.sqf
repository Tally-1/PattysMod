private _uids = [];
{
	private _rallyPoint   = _y;
	private _isRallyPoint = (typeName _rallyPoint) isEqualTo "HASHMAP";
	
	if(_isRallyPoint)
	then{_uids pushBack(_rallyPoint get"ownerId")};
	
} forEach _self;

_uids;