params[
	["_player",     nil, [objNull]],
	["_role",       nil,      [""]],
	["_customVars", nil,      [[]]]
];
private _varNames       = allVariables _player apply {toLower _x};
private _customVarNames = _customVars apply {toLower(_x#0)};
private _hasWeaponNow   = "wkb_secondweapon" in _varNames && {!isNull ((_player getVariable "WBK_SecondWeapon")#0)};
private _hasOldWeapon   = "psa_secondrifle"  in _varNames;
private _hasNewWeapon   = "psa_secondrifle"  in _customVarNames;
private _exitNow        = ((!_hasNewWeapon)&&{!_hasOldWeapon});

if(_hasWeaponNow) then{"Has weapon now" call p_dbg};
if(_hasOldWeapon) then{"Has old weapon" call p_dbg};
if(_hasNewWeapon) then{"Has new weapon" call p_dbg};
if(_exitNow)      then{"no old weapon, no new weapon" call p_dbg};

if(_exitNow)       exitWith {[_player] call PSA_fnc_WBK_removeWeapon};
if(!_hasNewWeapon) exitWith {
	[_player] call PSA_fnc_WBK_removeWeapon;
	[_player] call PSA_fnc_WBK_removeAllWeaponVars;
};

private _newWeapon = _player getVariable "PSA_secondRifle";
[_player, _newWeapon] call PSA_fnc_WBK_applySecondWeapon;

true;