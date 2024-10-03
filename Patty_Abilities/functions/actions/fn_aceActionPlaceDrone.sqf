params[
    ["_man",  nil,[objNull]],
    ["_type", nil,     [""]]
];
private _typeName  = [_type] call PSA_fnc_capFirstLetter;
private _icon      = "\Patty_Abilities\textures\icons\DroneAbility.paa";
private _title     = ["Deploy ",_typeName," Drone"]joinString"";
private _function  = { ["recon", _this#0]call PSA_fnc_placeDrone};
private _condition = { ["recon", _this#0]call PSA_fnc_canPlaceDrone};

if(_type isEqualTo "combat")then{
    _function  = { ["combat", _this#0]call PSA_fnc_placeDrone};
    _condition = { ["combat", _this#0]call PSA_fnc_canPlaceDrone};
};

if(_type isEqualTo "bomb")then{
    _function  = { ["bomb", _this#0]call PSA_fnc_placeDrone};
    _condition = { ["bomb", _this#0]call PSA_fnc_canPlaceDrone};
};

private _actionData = 
[
    _man,
    _title,
    _condition,
    _function,
    _icon
] call PSA_fnc_simpleSelfActionACE;

private _actionName = _actionData#1;

_actionName;