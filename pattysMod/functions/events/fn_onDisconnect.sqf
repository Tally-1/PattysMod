params [
    ["_unit", nil, [objNull]],
    ["_id",   nil,       [0]],
    ["_uid",  nil,      [""]],
    ["_name", nil,      [""]]
];
private _thisDC   = [_unit,round time];
private _lastDC   = localNamespace getVariable ["PTTY_lastDC", [objNull, 0]];
if(_thisDC isEqualTo _lastDC)exitWith{};

localNamespace setVariable ["PTTY_lastDC", _thisDC];

private _lifeMap     = missionNamespace getVariable "PTTY_lifeMap";
private _livesStored = _lifeMap get _uid;
private _livesNow    = [_unit] call PTTY_fnc_getLives;
private _lives       = selectMin [_livesStored, _livesNow];

[[_name, " disconnected with ", [_livesStored, _livesNow], " lives"]] call PTDBG;

PTTY_disconnects set [_uid, [_name, _lives, time]];

[_uid] spawn PTTY_fnc_handleDisconnect;

true;