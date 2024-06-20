params[
	["_man",nil,[objNull]]
];
private _allActions = _man getVariable ["ace_interact_menu_selfactions",[]];
private _names = _allActions apply{_x#0#0};

_names;