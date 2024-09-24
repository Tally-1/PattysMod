params[
    ["_drone",nil,[objNull]],
	["_owner",nil,[objNull]]
];
private _type      = _drone getVariable "PSA_droneType";
private _typeName  = [_type] call PSA_fnc_capFirstLetter;
private _text      = [_typeName," Drone avaliable in: "]joinString"";
private _icon      = "\A3\Air_F_Orange\UAV_06\Data\UI\Map_UAV_06_CA.paa";
private _data      = _owner getVariable "PSA_droneOwnerData";
private _endTime   = _data get"timeLimits"get _type;
private _while     = {};
private _endCode   = {};
private _txtColor  = [1,1,1,1];
private _bckColor  = [0,0,0,0.1];

[_endTime, _text, _icon, _while,_endCode, _txtColor, _bckColor] call PSA_fnc_addRscTimer;

true;