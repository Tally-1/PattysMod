params[
    ["_drone",     nil,[objNull]],
    ["_timeLimit", nil,      [0]]
];
private _initDone = _drone getVariable ["lxws_initialized",false];

if(_initDone)          exitWith{true};
if(time >= _timeLimit) exitWith{true};

false;