params[
	["_player",     nil, [objNull]],
	["_role",       nil,      [""]],
	["_customVars", nil,      [[]]],
	["_isRespawn",  false,  [true]]
];

if(_isRespawn)
then{[_player] call PSA_fnc_WBK_reApplySecondWeapon}
else{_this call PSA_fnc_WBK_updateRoleWeapon};

private _varNames        = _customVars apply {toLower(_x#0)};
private _abilityDeclared = "psa_abilities" in _varNames;

if!(_abilityDeclared)exitWith{
	_player setVariable ["PSA_abilities", [], true];
	[_player] call PSA_fnc_updateAcePlayerActions;
};
private _abilityVar   = toLower "PSA_abilities";
private _oldAbilities = _player getVariable [_abilityVar,[]];

private _index        = _customVars findIf {toLower(_x#0) isEqualTo _abilityVar};
private _strVal       = ((_customVars#_index)#1);

if(typeName _strVal isEqualTo "ARRAY")
then{_strVal = str _strVal};

private _value = call compile _strVal;
_player setVariable [_abilityVar, _value, true];

[_player] call PSA_fnc_updateAcePlayerActions;

private _oldMRS = "mobile_respawn" in _oldAbilities;
// private _newMRS = "mobile_respawn" in _newAbilities;
// private _noMRS  = (_oldMRS isEqualTo false && {_newMRS isEqualTo false});
if!(_oldMRS)exitWith{};

["PSA_mobileRespawnChanged"]call CBA_fnc_serverEvent;