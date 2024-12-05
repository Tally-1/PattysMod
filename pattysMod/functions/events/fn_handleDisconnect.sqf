sleep 5;
params [
    ["_uid",nil,[""]]
];
private _thisDC = PTTY_disconnects get _uid;
if(isNil "_thisDC")exitWith{};
_thisDC
params [
    ["_name",  nil,[""]],
    ["_lives", nil, [0]],
    ["_time",  nil, [0]]
];
private _admins = allPlayers select {[_x]call PTTY_fnc_isAdmin ||{[_x]call PTTY_fnc_isCurator}};

[_name, _lives] remoteExecCall ["PTTY_fnc_disconnectNotification",_admins];

[[_name, " disconnected at ",round (_time/60)," minutes. With ", _lives, " lives left"]] call PTDBG;

PTTY_disconnects deleteAt _uid;

true;