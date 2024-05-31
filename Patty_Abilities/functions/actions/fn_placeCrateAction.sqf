private _statement = "[player] call PSA_fnc_initCratePlacement";
private _condition = "[player] call PSA_fnc_canPlaceCrate";
private _title     = "Place Resupply Crate";

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