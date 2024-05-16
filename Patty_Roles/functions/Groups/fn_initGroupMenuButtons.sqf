private _selectButton = _display ctrlCreate ["RscButton", 2400];
private _cancelButton = _display ctrlCreate ["RscButton", 2401];
private _buttonW      = 0.18;
private _buttonH      = 0.06;
private _buttonCX     = _boxX+0.01;
private _buttonSX     = (_boxX+_boxW)-(_buttonW+0.01);
private _buttonY      = _boxY+_boxH+0.01;
private _animTime     = 0.2;

_cancelButton ctrlSetPosition [
	_buttonCX, 
	_buttonY,
	_buttonW,
	_buttonH
];
_selectButton ctrlSetPosition [
	_buttonSX, 
	_buttonY,
	_buttonW,
	_buttonH
];

_selectButton ctrlCommit _animTime;
_cancelButton ctrlCommit _animTime;

[_selectButton, "SELECT ROLE", 1, _animTime] spawn PTG_fnc_spawnCtrlText;
[_cancelButton, "CANCEL",      1, _animTime] spawn PTG_fnc_spawnCtrlText;

_selectButton ctrlAddEventHandler ["buttonClick", "[] call PTG_fnc_selectPosition;"];
_cancelButton ctrlAddEventHandler ["buttonClick", "closeDialog 0;"];