params[
	["_pos",  nil,   [objNull,[]]],
	["_rad",  nil,            [0]],
	["_side", nil, [east,objNull]]
];
private _vehicles = _this call PSA_fnc_nearVehicles;
if(_vehicles isEqualTo [])
exitWith{};

if(typeName _side isEqualTo "OBJECT")
then{_side = side _side};

_vehicles = _vehicles select {
	private _sideV = [_x] call PSA_fnc_getVehicleSide;
	private _valid = _sideV isEqualTo _side || {_sideV isEqualTo sideUnknown};
	_valid;
};

if(_vehicles isEqualTo [])
exitWith{};
private _nearest = [_pos, _vehicles] call PSA_fnc_getNearest;

_nearest;