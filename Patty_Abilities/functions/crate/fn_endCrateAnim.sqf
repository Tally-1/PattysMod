params[
    ["_man",      nil, [objNull]],
    ["_animDone", false, [false]]
];
private _animEh        = _man getVariable "PSA_crateAnimEh";
if (isNil "_animEh")exitWith{};
private _repeat        = _man getVariable "PSA_repeatAnim";
private _animState     = _man getVariable "PSA_animState";
private _timeSincePrev = time - (_man getVariable "PSA_prevCrateAnim");
private _animStartTime = _man getVariable "PSA_animStartTime";
private _wantedTime    = _man getVariable "PSA_wantedTime";
private _timeSpent     = time - _animStartTime;
private _timeLeft      = _wantedTime-_timeSpent;
private _complete      = _timeLeft < 2;

if!(_animDone)     then{_man switchMove "amovpknlmstpsraswrfldnon"};
if (_timeLeft < 0) then{_man switchMove "amovpknlmstpsraswrfldnon"};


_man removeEventHandler ["AnimDone", _animEh];

if(_complete isEqualTo false
&&{_repeat   isEqualTo true})
exitWith{[_man, _timeLeft] spawn PSA_fnc_placeCrateAnim};


_man setAnimSpeedCoef 1;
_man setVariable ["PSA_crateAnimEh",   nil];
_man setVariable ["PSA_keyEh",         nil];
_man setVariable ["PSA_animState",     nil];
_man setVariable ["PSA_animStartTime", nil];
_man setVariable ["PSA_wantedTime",    nil];

_man playMoveNow "amovpknlmstpsraswrfldnon";



true;