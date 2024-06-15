private _display   = uiNameSpace getVariable ["PSA_progressBar",displayNull];
private _bar       = _display displayCtrl 1;
private _startTime = _bar getVariable "PSA_startTime";

if(isNil "_startTime")exitWith{};
private _endCode    = _bar getVariable "PSA_endCode";
private _runTime    = _bar getVariable "PSA_runTime";
private _frameEh    = _bar getVariable "PSA_frameEh";
private _inputBlock = _bar getVariable "PSA_inputBlocker";
private _timeSpent  = time - _startTime;
private _coef       = _timeSpent/_runTime;

if(_coef > 1)exitWith{

    [_frameEh] call PSA_fnc_removeClientFrameTask;
    _display closeDisplay 1;
    (_endCode#0) call (_endCode#1);

	if(!isNil "_inputBlock")
	then{_inputBlock closeDisplay 1};

    true;
};

_bar progressSetPosition _coef;

true;