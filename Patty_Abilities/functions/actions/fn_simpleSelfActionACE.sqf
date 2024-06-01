params[
	["_player",    nil, [objNull]],
	["_title",     nil,      [""]],
	["_condition", nil,      [{}]],
	["_function",  nil,      [{}]],
	["_icon",      "",       [""]],
	["_category",  nil,      [""]]
];
if(isNil "_category")
then{_category = [_player] call PSA_fnc_selfActionCategoryACE};

private _parentPath = ["ACE_SelfActions", _category];
private _actionType = 1;
private _actionName = ["PSA_baseCategory", _title]joinString"";

private _action = [
	_actionName,
	_title,
	_icon,
	_function,
	_condition
] call ace_interact_menu_fnc_createAction;

[
	_player,
	_actionType,
	_parentPath,
	_action

] call ace_interact_menu_fnc_addActionToObject;

[_parentPath, _actionName];