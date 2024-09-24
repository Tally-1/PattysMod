params[
    ["_man",       nil,[objNull]],
    ["_condition", nil,   [[]],2]
];

private _conditionValid = (isNil "_condition")||{(_condition#0)call(_condition#1)};
if!(_conditionValid)exitWith{false};

private _isPlacingObject  = !isNil "PSA_ctrl";
if(_isPlacingObject)exitWith{false};

true;