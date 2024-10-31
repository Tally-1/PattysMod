params[
    ["_player",nil,[objNull]]
];
private _actionId = _player getVariable "PSA_detonatePlayerAction";
if(isNil "_actionId")exitWith{};

_player removeAction _actionId;
_player setVariable ["PSA_detonatePlayerAction", nil, true];

true;