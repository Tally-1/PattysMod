private _display      = _self get "display";
private _ctrl         = _self get "control";
private _endCode      = _self get "endCode";
private _taskId       = _self get "taskId";
private _activeTimers = _display getVariable ["PSA_AllTimers", []];

[_taskId] call PSA_fnc_removeClientSecondTask;
[]        call _endCode;

_activeTimers deleteAt (_activeTimers find _ctrl);
_display setVariable ["PSA_AllTimers", _activeTimers];

ctrlDelete _ctrl;

_self set ["ended", true],

if(_activeTimers isNotEqualTo [])exitWith{};

_display closeDisplay 1;


true;