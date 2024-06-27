params[
	["_object",    nil, [objNull]],
	["_title",     nil,      [""]],
	["_condition", nil,      [{}]],
	["_statement", nil,      [{}]],
	["_icon",      "",       [""]]
];
private _actions    = [_object, true] call PSA_fnc_getObjectActionsPSA;
private _parentPath = ["ACE_MainActions"];
private _actionType = 0;
private _actionName = ["PSA_ACE_MainActions ", _title]joinString"";

if(_actionName in _actions)
exitWith{"Duplicate action blocked" call p_dbg};

private _action = [
	_actionName,
	_title,
	_icon,
	_statement,
	_condition
] call ace_interact_menu_fnc_createAction;

[
	_object,
	_actionType,
	_parentPath,
	_action

] call ace_interact_menu_fnc_addActionToObject;

[_parentPath, _actionName];