params[
    ["_text",    "",      [""]],
    ["_time",    nil,      [0]],
    ["_endCode", [[],{}], [[]]] // [[params],{code}]
];

disableSerialization;
private _display = uiNameSpace getVariable ["PSA_progressBar",displayNull];
if(!isNull _display)
then{_display closeDisplay 1; uiSleep 0.1;};

1 cutRsc ["PSA_progressBar","PLAIN"];
waitUntil {!isNull (uiNameSpace getVariable "PSA_progressBar")};

private _endTime = time + _time;
private _display = uiNameSpace getVariable ["PSA_progressBar",displayNull];//findDisplay 46 createDisplay "RscDisplayEmpty";
private _bar     = _display ctrlCreate ["RscProgress", 1];
private _frame   = _display ctrlCreate ["RscFrame", -1];
private _khaki   = [0.68,0.75,0.51,1];
private _width   = 0.4;
private _height  = 0.07;
private _textH   = 0.04;
private _xPos    = (0.5+ safeZoneX)+(_width*1.25);
private _yPos    = (0.1+ safeZoneY)-_height*0.5;
private _barPos  = [ 
    _xPos,
    _yPos,
    _width,
    _height
];
private _framePos = [
    _xPos, 
    _yPos-(_textH*0.5), 
    _width, 
    _height+(_textH*0.51)
];

_frame ctrlSetFontHeight _textH;
_frame   ctrlSetTextColor _khaki;
_frame   ctrlSetPosition  _framePos;
_bar     ctrlSetPosition  _barPos;

_frame   ctrlCommit 0;
_bar     ctrlCommit 0;

_frame ctrlSetText _text;
_bar progressSetPosition 0;

private _frameEh = [[], PSA_fnc_setProgressBar] call PSA_fnc_addClientFrameTask;

_bar setVariable ["PSA_startTime",   time];
_bar setVariable ["PSA_runTime",    _time];
_bar setVariable ["PSA_frameEh", _frameEh];
_bar setVariable ["PSA_endCode", _endCode];



[_display, _bar];