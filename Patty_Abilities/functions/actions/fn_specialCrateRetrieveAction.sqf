params[
	["_crate",nil,[objNull]]
];
private _statement = "_this call PSA_fnc_retrieveMyCrate";
private _condition = "_this call PSA_fnc_canRetrieveThisCrate";
private _title     = "<t color='#eef74f'>Retrieve Resupply Crate</t>";

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