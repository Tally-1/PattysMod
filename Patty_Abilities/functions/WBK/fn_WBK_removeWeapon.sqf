params[
	["_player",nil,[objNull]]
];
private _weaponHolder = (_player getVariable ["WBK_SecondWeapon",[objNull,[]]])#0;
deleteVehicle _weaponHolder;

[_player] call PSA_fnc_WBK_removeAllWeaponVars;

true;