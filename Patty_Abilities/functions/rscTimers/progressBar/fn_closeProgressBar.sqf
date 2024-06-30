params[
	["_display", nil, [displayNull]],
	["_aborted", nil,        [true]]
];
private _bar        = _display displayCtrl 1;
private _frameEh    = _bar getVariable "PSA_frameEh";
private _endCode    = _bar getVariable "PSA_endCode";
private _abortCode  = _bar getVariable "PSA_abortCode";
private _inputBlock = _bar getVariable "PSA_inputBlocker";

if(!isNil "_inputBlock")then{_inputBlock closeDisplay 1};

[_frameEh] call PSA_fnc_removeClientFrameTask;
_display closeDisplay 1;

if(_aborted)
then{(_abortCode#0)call(_abortCode#1)}
else{(_endCode#0)call(_endCode#1)};

true;