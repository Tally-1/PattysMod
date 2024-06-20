params[
	["_man",nil,[objNull]]
];
private _actions        = _man getVariable "ace_interact_menu_selfactions";
private _abilityActions = [];

{
	_x params[
		["_actionParams", nil,[[]]],
		["_actionPath",   nil,[[]]]
	];
	_actionParams params[
		["_actionName", nil,[""]],
		["_text",       nil,[""]],
		["_icon",       nil,[""]],
		["_function",   nil,[{}]],
		["_condition",  nil,[{}]]
	];
	if("PSA_baseCategory" in _actionName)
	then{_abilityActions pushBack _actionName};
	
} forEach _actions;

_abilityActions;