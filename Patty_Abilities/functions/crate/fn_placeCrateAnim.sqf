params[
    ["_man", nil,[objNull]],
    ["_time", nil,     [0]],
	["_repeat",true,[true]]
];
private _timeSincePrev = time - (_man getVariable ["PSA_prevCrateAnim",0]);
if(_timeSincePrev < 1) exitWith{};
if(_time < 1)          exitWith{};

private _animState = animationState _man;
private _anim      = "AinvPknlMstpSlayWrflDnon_medicOther";
private _animTime  = 10;
private _startTime = _man getVariable ["PSA_animStartTime",time];
private _coef      = _animTime/_time;

private _animEh    = 
_man addEventHandler ["AnimDone", {
    params ["_man", "_anim"];
    if!("medic" in _anim)exitWith{};
    [_man, true] spawn PSA_fnc_endCrateAnim;
}];


_man playMoveNow _anim;
_man setAnimSpeedCoef _coef;
_man setVariable ["PSA_crateAnimEh",  _animEh];
_man setVariable ["PSA_repeatAnim",   _repeat];
_man setVariable ["PSA_animState", _animState];
_man setVariable ["PSA_animStartTime",   time];
_man setVariable ["PSA_prevCrateAnim",   time];
_man setVariable ["PSA_wantedTime",     _time];