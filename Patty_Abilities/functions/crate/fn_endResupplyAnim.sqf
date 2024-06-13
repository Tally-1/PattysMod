params[
	["_man",      nil, [objNull]],
	["_forceEnd", false,  [true]]
];
private _endTime  = _man getVariable "PSA_resupplyEndTime";
private _animEh   = _man getVariable "PSA_reAnimEh";
private _timeLeft = _endTime - time;
private _timeOver = _timeLeft < 1;

if(_forceEnd isEqualTo false
&&{_timeOver isEqualTo false})
exitWith{sleep 0.1; _man playMoveNow "MountOptic"};

_man switchMove "amovpknlmstpsraswrfldnon";
_man removeEventHandler ["AnimDone", _animEh];
[_man] call PSA_fnc_applyLoadOut;

true;