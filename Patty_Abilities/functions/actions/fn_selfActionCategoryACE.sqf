params[
	["_player",nil,[objNull]]
];
//Initializes the base category for all ACE self-actions
private _categoryName = "PSA_abilitiesACE";
private _baseCategory = _player getVariable "PSA_baseCategory";
private _icon         = "\Patty_Abilities\textures\icons\SA.paa";
if(!isNil "_baseCategory")exitWith{_categoryName;};

private _baseCategory = [
	_categoryName,
	"Special Abilities",
	_icon,
	{true},
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