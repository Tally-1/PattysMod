private _statement = PSA_fnc_retrieveMyCrate;
private _condition = PSA_fnc_canRetrieveMyCrate;

private _placeAction = [
	"crateCategory",
	"Retrieve Resupply Crate",
	"\a3\ui_f\data\igui\cfg\simpletasks\types\box_ca.paa",
	_statement,
	_condition
] call ace_interact_menu_fnc_createAction;

_placeAction;