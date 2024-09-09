params[
	["_vehicle",nil,[objNull]]
];
private _side       = sideUnknown;
private _validSides = [east,west,independent];
{
	private _sideMan  = side group _x;
	private _validMan = alive _x && {(!([_x]call PSA_fnc_unconscious))&&{_sideMan in _validSides}};
	if(_validMan)
	exitWith{_side = _sideMan};
	
} forEach (crew _vehicle);

_side;