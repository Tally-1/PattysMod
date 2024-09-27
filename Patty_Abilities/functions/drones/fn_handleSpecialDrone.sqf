params [
    ["_drone",nil,[objNull]]
];
private _altitude      = (getPos _drone)#2;
private _hidden        = _drone getVariable "PSA_hidden";
private _hideAltitude  = _altitude >= PSA_droneVisibilityHeight;
if(_hidden&&{_hideAltitude})exitWith{};

private _visible       = _hidden isEqualTo false;
private _showAltitude  = _hideAltitude isEqualTo false;
if(_visible&&{_showAltitude})exitWith{};

private _timeSinceShot = time - (_drone getVariable["PSA_lastWeaponFire",0]);
private _coolDownEnded = _timeSinceShot >= PSA_droneVisibilityCooldown;
private _hideNow       = (_visible)&&{_hideAltitude && {_coolDownEnded}};
private _showNow       = _hidden &&{_showAltitude};

if(_hideNow)exitWith{[_drone] call PSA_fnc_hideSpecialDrone};
if(_showNow)exitWith{[_drone] call PSA_fnc_showSpecialDrone};

false;