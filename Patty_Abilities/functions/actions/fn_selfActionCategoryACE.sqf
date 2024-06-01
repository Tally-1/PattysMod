params[
	["_player",nil,[objNull]]
];
//Initializes the base category for all ACE self-actions
private _categoryName = "PSA_abilitiesACE";
private _baseCategory = _player getVariable "PSA_baseCategory";
private _icon         = "\a3\ui_f\data\igui\cfg\simpletasks\letters\a_ca.paa";
if(!isNil "_baseCategory")exitWith{_categoryName;};

private _baseCategory = [
	_categoryName,
	"Special Abilities",
	_icon,
	{},
	{true}
] call ace_interact_menu_fnc_createAction;

[
	_player,
	1,
	["ACE_SelfActions"],
	_baseCategory

] call ace_interact_menu_fnc_addActionToObject;

_player setVariable ["PSA_baseCategory", _categoryName];

_categoryName;