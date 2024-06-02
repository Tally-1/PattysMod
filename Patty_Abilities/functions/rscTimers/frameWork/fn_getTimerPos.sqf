params[
	["_display", nil, [displayNull]]
];
private _activeTimers = _display getVariable ["PSA_AllTimers", []];
private _width        = 0.4;
private _height       = 0.07;
private _xPos         = 0.1+ safeZoneX;
private _yPos         = 0.1+ safeZoneY;
private _defaultPos   = [ 
	_xPos,
	_yPos,
	_width,
	_height
];

if(_activeTimers isEqualTo [])exitWith{_defaultPos};

private _availableYpos = [_yPos, _height,_activeTimers] call PSA_fnc_firstAvailYpos;
private _nextPos       = [
	_xPos,
	_availableYpos,
	_width,
	_height
];

_nextPos;