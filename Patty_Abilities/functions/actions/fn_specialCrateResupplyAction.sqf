params[
	["_crate",nil,[objNull]]
];
private _statement = "_this spawn PSA_fnc_crateResupplyLoadOut";
private _condition = "_this call  PSA_fnc_canResupplyOnCrate";
private _title     = "<t color='#e0f213'>Resupply</t>";

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