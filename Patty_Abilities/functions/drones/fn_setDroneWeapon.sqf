params[
    ["_drone",    nil,[objNull]],
    ["_weapon",   nil,     [""]],
    ["_magazine", nil,     [""]],
    ["_magCount", nil,      [0]]
];
private _defaultMagazine = (getArray (configfile >> "CfgWeapons" >> _weapon >> "magazines"))#0;
if(isNil "_magazine")then{_magazine = _defaultMagazine};

private _defaultMagCount = getNumber(configfile >> "CfgMagazines" >> _magazine >> "count");
if(isNil "_magCount")then{_magCount = _defaultMagCount};

private _weaponData = [_weapon,"","","",[_magazine,_magCount],[],""];

[_drone, "SetWeapon",[]]          call lxWS_fnc_DroneWeapon;
[_drone, "SetWeapon",_weaponData] call lxWS_fnc_DroneWeapon;

[_weapon, [_magazine,_magCount]];