params[
	["_endTime",   nil,        [0]],
	["_text",      nil,       [""]],
	["_icon",      "",        [""]],
	["_whileCode", {},        [{}]],
	["_endCode",   {},        [{}]],
	["_txtColor",  [1,1,1,1], [[]]],
	["_bckColor",  [0,0,0,0], [[]]]
];
private _display       = call PSA_fnc_getTimerDisplay;
private _activeTimers  = _display getVariable ["PSA_AllTimers", []];
private _ctrlIdd       = 1100+(count _activeTimers);
private _ctrlPos       = [_display] call PSA_fnc_getTimerPos;
private _ctrl          = _display ctrlCreate ["RscStructuredText", _ctrlIdd];

_ctrl ctrlSetBackgroundColor _bckColor;
_ctrl ctrlSetTextColor       _txtColor;
_ctrl ctrlSetPosition         _ctrlPos;
_ctrl ctrlCommit                     0;

private _dataArr      = [
	["display",              _display],
	["control",                 _ctrl],
	["endTime",              _endTime],
	["text",                    _text],
	["icon",                    _icon],
	["ended",                   false],

	["update",        PSA_fnc_updateRscTimer],
	["stop",            PSA_fnc_stopRscTimer],
	["#delete", {"timer deleted" call p_dbg}],
	["whileCode",                 _whileCode],
	["endCode",                     _endCode],
	["taskId",                            -1]
];

private _map      = createHashmapObject [_dataArr];
private _loopTask = [_map, {_this call ["update"]}];
private _taskId   = _loopTask call PSA_fnc_addClientSecondTasks;

_map set ["taskId", _taskId];
_map call ["update"];
_activeTimers pushBack _ctrl;
_ctrl setVariable ["PSA_TimerData", _map];
_display setVariable ["PSA_AllTimers", _activeTimers];

_map;