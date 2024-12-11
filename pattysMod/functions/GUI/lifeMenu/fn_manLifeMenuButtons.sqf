(_self get "position")
params["_x", "_y", "_w", "_h"];
private _displayData = _self call ["displayData"];
private _man         = _self get "currentMan";
private _btnHeight   = 0.075;
private _broadW      = 0.45;
private _smallW      = (_broadW/2)*0.95;
private _topY        = 0.33;
private _lowY        = _topY + 0.04;
private _lives       = [player] call PTTY_fnc_getLives;
private _livesTarget = [_man]   call PTTY_fnc_getLives;
private _isAdmin     = [player] call PTTY_fnc_isAdmin;
private _isMedic     = [player] call PTTY_fnc_isMedic;
private _canTransfer = [player, _man] call PTTY_fnc_canTransfer;
private _canRemove   = _isAdmin && {_livesTarget>0};
private _lastUpdate  = _self get"lastUpdate";
private _timeSinUpdt = time - _lastUpdate;
private _wait        = _timeSinUpdt > 1;

private _transferPos = _self call ["getRelPos",[0.01, _topY, _broadW, _btnHeight]];
private _removePos   = _self call ["getRelPos",[0.01, _lowY, _broadW, _btnHeight]];
private _givePos     = _self call ["getRelPos",[0.15, _topY, _broadW, _btnHeight]];
private _resetPos    = _self call ["getRelPos",[0.15, _lowY, _smallW, _btnHeight]];
private _resetAllPos = _self call ["getRelPos",[0.22, _lowY, _smallW, _btnHeight]];


private _transferBtn = _displayData call ["addButton",[_transferPos, "Transfer",  PTTY_fnc_onLifeMenuTransferBtn]];
private _removeBtn   = _displayData call ["addButton",[_removePos,   "Remove",      PTTY_fnc_onLifeMenuRemoveBtn]];
private _giveBtn     = _displayData call ["addButton",[_givePos,     "Give",          PTTY_fnc_onLifeMenuGiveBtn]];
private _resetBtn    = _displayData call ["addButton",[_resetPos,    "Reset",        PTTY_fnc_onLifeMenuResetBtn]];
private _resetAllBtn = _displayData call ["addButton",[_resetAllPos, "Reset All", PTTY_fnc_onLifeMenuResetAllBtn]];
private _buttons     = [_transferBtn, _removeBtn, _giveBtn, _resetBtn,_resetAllBtn];

{_x call ["enable",[false]]} forEach _buttons;

[
	_buttons,
	_canTransfer,
	_canRemove,
	_isAdmin,
	_wait

] spawn  PTTY_fnc_ManLifeMenuButtonsEnable;

_buttons;