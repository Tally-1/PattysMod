params[
	["_man",        nil,[objNull]],
	["_actionName", nil,     [""]]
];
private _allActions = _man getVariable "ace_interact_menu_selfactions";
private _index      = _allActions findIf {
	private _thisActionName = _x#0#0;
	private _match = _thisActionName isEqualTo _actionName;
	_match;
};

_allActions deleteAt _index;
_man setVariable ["ace_interact_menu_selfactions", _allActions, true];

_allActions;