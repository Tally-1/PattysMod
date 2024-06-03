params[
	["_crate",nil,[objNull]]
];
private _statement = "[(_this#1)] call PSA_fnc_applyLoadOut";
private _condition = "true";
private _title     = "<t color='#f8aa45'>Resupply</t>";

_crate addAction [
    _title,     // title
    _statement, // statement
    nil,        // arguments
    1.5,        // priority
    false,      // showWindow
    true,       // hideOnUse
    "",         // shortcut
    _condition, // condition
    5,          // radius
    false,      // unconscious
    "",         // selection
    ""          // memoryPoint
];