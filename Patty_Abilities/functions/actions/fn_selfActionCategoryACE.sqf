params[
	["_player",nil,[objNull]]
];
//Initializes the base category for all ACE self-actions
private _abilityActions = [_player] call PSA_fnc_getAllACESelfActionNames;
private _categoryName = "PSA_abilitiesACE";

if(_categoryName in _abilityActions)exitWith{_categoryName;};

private _icon         = "\Patty_Abilities\textures\icons\SA.paa";
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