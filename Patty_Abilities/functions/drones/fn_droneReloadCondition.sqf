params[
    ["_drone",  nil, [objNull]],
    ["_loader", nil, [objNull]]
];
private _valid = alive _drone && {canMove _drone};
if!(_valid)                  exitWith{false};
if!(isTouchingGround _drone) exitWith{false};

private _ammo        = (_drone getVariable "lxws_holdingweapon")#4#1;
private _magazine    = (_drone getVariable "lxws_holdingweapon")#4#0;
private _defaultAmmo = getNumber(configfile >> "CfgMagazines" >> _magazine >> "count");
private _coef        = _ammo / _defaultAmmo;
private _minCoef     = 0.25;
if(_coef > _minCoef)exitWith{
    [["Drone has ", round(_coef*100),"% ammo left"]] call p_dbg;
    false;
}; 

private _owner = _drone getVariable ["PSA_droneOwner",objNull];
if(_loader != _owner)exitWith{false};

true;