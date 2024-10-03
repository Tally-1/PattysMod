params[
    ["_type", nil,     [""]],
    ["_man",  nil,[objNull]]
];
private _hasAbility = [_man, _type] call PSA_fnc_hasDroneAbility;
if!(_hasAbility)exitWith{false};

private _droneData = _man getVariable "PSA_droneOwnerData";
if(isNil "_droneData")then{[_man]call PSA_fnc_initDroneOwnerData};

private _typeList = _droneData call ["activeTypes"];
if(_type in _typeList)exitWith{false};

private _cooldownComplete = _droneData call ["cooldownComplete",[_type]];
if!(_cooldownComplete)exitWith{false};

private _canPlaceObject = [_man] call PSA_fnc_canPlaceObject;
if!(_canPlaceObject)exitWith{false};

private _validMan = [_man] call PSA_fnc_functionalMan;
if!(_validMan)exitWith{
	"Invalid man cannot place drone" call p_dbg;
	false;
};

true;