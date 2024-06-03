private _display   = findDisplay 46 createDisplay "RscDisplayEmpty";
private _textCtrl  = _display ctrlCreate ["RscStructuredText", 1];
private _yesButton = _display ctrlCreate ["RscButton", 2];
private _noButton  = _display ctrlCreate ["RscButton", 3];
private _width     = 0.5;
private _height    = 0.07;
private _textX     = (safeZoneX+(safeZoneW*0.5))-(_width/2);
private _textY     = (safeZoneY+(safeZoneH*0.3))-(_height/2);
private _buttonW   = 0.15;
private _buttonH   = 0.07;
private _buttonY   = _textY+(_height*1.5);

private _textPos = [
	_textX,
	_textY,
	_width,  // width
	_height  // height
];

private _yesButtonPos = [
	_textX,
	_buttonY,
	_buttonW,
	_buttonH
];

private _noButtonPos = [
	_textX+(_width-_buttonW),
	_buttonY,
	_buttonW,
	_buttonH
];

_textCtrl ctrlSetPosition  _textPos;
_yesButton ctrlSetPosition _yesButtonPos;
_noButton ctrlSetPosition  _noButtonPos;

_textCtrl  ctrlCommit 0;
_yesButton ctrlCommit 0;
_noButton  ctrlCommit 0;

[_textCtrl]  call PSA_fnc_normalizeTextSize;
[_yesButton] call PSA_fnc_normalizeTextSize;
[_noButton]  call PSA_fnc_normalizeTextSize;

[_display, _textCtrl, _yesButton, _noButton];