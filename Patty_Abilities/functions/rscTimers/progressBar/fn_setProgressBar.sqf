private _display = uiNameSpace getVariable ["PSA_progressBar",displayNull];
private _bar     = _display displayCtrl 1;

private _startTime = _bar getVariable "PSA_startTime";
if(isNil "_startTime")exitWith{};
private _abort     = _display getVariable ["PSA_AbortProgress",false];
private _condition = _bar getVariable "PSA_condition";
private _runTime   = _bar getVariable "PSA_runTime";
private _timeSpent = time - _startTime;
private _coef      = _timeSpent/_runTime;
private _complete  = _coef > 1;
private _cancel    = !((_condition#0)call(_condition#1));
private _aborted   = _abort || {_cancel};

if(_complete) exitWith{[_display, _aborted] call PSA_fnc_closeProgressBar};
if(_abort)    exitWith{[_display, _aborted] call PSA_fnc_closeProgressBar};
if(_cancel)   exitWith{[_display, _aborted] call PSA_fnc_closeProgressBar};


_bar progressSetPosition _coef;

true;