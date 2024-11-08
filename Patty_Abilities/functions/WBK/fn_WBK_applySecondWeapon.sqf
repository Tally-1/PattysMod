params[
    ["_man",       nil, [objNull]],
	["_weaponData",nil,      [[]]]
];
if(_weaponData isEqualTo [])exitWith{};

private _weaponHolder = createVehicle ["DummyWeapon_Wbk", getPosATL _man, [], 0, "CAN_COLLIDE"];

_weaponHolder addWeaponWithAttachmentsCargoGlobal [_weaponData, 1];
_man setVariable ["WBK_SecondWeapon",[_weaponHolder,_weaponData],true];

if(WBK_LocalParamWhereWeaponIs == "Pelvis")
then{[_man,_weaponHolder,"Pelvis"]       call WBK_AdjustGunPos}
else{[_man,_weaponHolder,"Spine_normal"] call WBK_AdjustGunPos};

true;