private _statement = "call PSA_fnc_retrieveMyCrate";
private _condition = "call PSA_fnc_canRetrieveMyCrate";
private _title     = "Retrieve Resupply Crate";

player addAction [
    _title,     // title
    _statement, // statement
    nil,        // arguments
    1.5,        // priority
    false,      // showWindow
    true,       // hideOnUse
    "",         // shortcut
    _condition, // condition
    1,          // radius
    false,      // unconscious
    "",         // selection
    ""          // memoryPoint
];