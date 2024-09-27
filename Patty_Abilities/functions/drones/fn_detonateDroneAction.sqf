params[
    ["_drone",nil,[objNull]]
];
private _statement = "_this call PSA_fnc_detonateBombDrone";
private _condition = "_this call PSA_fnc_detonateDroneCondition";
private _title     = "<t color='#FF0000'>DETONATE</t>";

_drone addAction [
    _title,     // title
    _statement, // statement
    nil,        // arguments
    3,          // priority
    false,      // showWindow
    true,       // hideOnUse
    "",         // shortcut
    _condition, // condition
    1,          // radius
    false,      // unconscious
    "",         // selection
    ""          // memoryPoint
];