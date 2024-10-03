params [
    ["_drone",nil,[objNull]]
];
private _isHidden   = _drone getVariable "PSA_hidden";
private _visible    = _isHidden isEqualTo false;
private _lastHidden = _drone getVariable ["PSA_hiddenTime", 0-PSA_bombDroneVisibilityTime];
private _lastShown  = _drone getVariable ["PSA_shownTime",  0-PSA_bombDroneVisibilityTime];
private _timeHidden = time - _lastHidden;
private _timeShown  = time - _lastShown;

private _hideNow    = _visible && {_timeShown >= PSA_bombDroneVisibilityTime};
private _showNow    = _isHidden && {_timeHidden >= PSA_bombDroneVisibilityTime};

if(_hideNow)exitWith{[_drone] call PSA_fnc_hideSpecialDrone};
if(_showNow)exitWith{[_drone] call PSA_fnc_showSpecialDrone};

false;