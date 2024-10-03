params [
    ["_drone",nil,[objNull]]
];
_drone setUnitTrait ["audibleCoef",    0];
_drone setUnitTrait ["camouflageCoef", 0];

{
    private _group   = _x;
    private _hostile = [_drone, _group] call PSA_fnc_hostile;
    private _known   = _group knowsAbout _drone > 2.5;
    
    if(_hostile && {_known})
    then{_group forgetTarget _drone};

} forEach allGroups;

_drone setVariable["PSA_hidden",true,true];
_drone setVariable["PSA_hiddenTime",time,true];


[["Drone hidden ",round time]] call p_dbg;

true;