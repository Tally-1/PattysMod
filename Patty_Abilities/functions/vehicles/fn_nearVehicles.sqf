params[
	["_pos",  nil, [objNull,[]]],
	["_rad",  nil,          [0]]
];
private _vehicles = _pos nearEntities ["land", _rad] select {!(_x isKindOf "man")};


_vehicles;