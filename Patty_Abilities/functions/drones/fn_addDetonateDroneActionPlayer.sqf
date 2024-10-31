params[
    ["_player",nil,[objNull]]
];
private _statement = '_this call PSA_fnc_detonateDronePlayer';
private _condition = "_this call PSA_fnc_detonateDronePlayerCondition";
private _title     = "<t color='#FF0000'>DETONATE</t>";
private _actionId  = 
_player addAction [
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

_player setVariable ["PSA_detonatePlayerAction", _actionId, true];

_actionId;