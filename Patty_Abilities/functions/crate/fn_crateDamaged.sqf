params [
	["_crate",     nil, [objNull]],
	["_selection", nil,      [""]],
	["_damage",    nil,       [0]]
];
private _currentDamage = damage _crate;
private _crateData     = _crate getVariable "PSA_crateData";

if(_currentDamage + _damage < 0.8) exitWith{};
if(_crateData get "destroyed")     exitWith{};

_crateData call ["destroy"];

nil;