params[
	["_crate",nil,[objNull]]
];
private _isAlreadyCounting = [_crate] call PSA_fnc_crateIsCountingDestruction;
if(_isAlreadyCounting)exitWith{};

private _endTime   = round (time +PSA_crateProxDestrTimer);
private _text      = "The enemy is destroying your crate in: ";
private _icon      = "\Patty_Abilities\textures\icons\RC.paa";
private _while     = { call PSA_fnc_crateDestructionTimerAbort};
private _endCode   = { call PSA_fnc_crateDestructionTimerEnd};
private _textColor = [1,0,0,1];
private _timerData =
[_endTime, _text, _icon, _while,_endCode, _textColor] call PSA_fnc_addRscTimer;

_timerData set ["crate", _crate];

_timerData;