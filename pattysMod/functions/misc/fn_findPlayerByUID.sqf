params[["_uid", nil, [""]]];
private _validUid = "7656" in _uid;
if (_validUid)         exitWith {_uid call BIS_fnc_getUnitByUID;};
if!(PTTY_Debug)        exitWith {objNull};
if (_uid isEqualTo "") exitWith {objNull};

_uid = toLower _uid;
private _target = (allUnits select {
	private _name = toLower name _x;
	_name isEqualTo _uid;
})#0;

_target;