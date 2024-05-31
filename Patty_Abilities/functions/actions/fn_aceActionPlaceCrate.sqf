private _statement = { [player] call PSA_fnc_initCratePlacement};
private _condition = { [player] call PSA_fnc_canPlaceCrate};

private _placeAction = [
	"crateCategory",
	"Place Resupply Crate",
	"\a3\ui_f\data\igui\cfg\simpletasks\types\box_ca.paa",
	_statement,
	_condition
] call ace_interact_menu_fnc_createAction;

_placeAction;