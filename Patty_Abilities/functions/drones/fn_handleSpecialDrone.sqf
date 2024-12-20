params [
    ["_drone",nil,[objNull]]
];
private _type = _drone getVariable "PSA_droneType";
if(_type isEqualTo "bomb")
exitWith{[_drone] call PSA_fnc_handleBombDroneVisibility};

private _varName         = ["PSA_",_type, "DroneVisibilityHeight"]joinString"";
private _altitudeSetting = missionNamespace getVariable _varName;
private _altitude        = (getPos _drone)#2;
private _hidden          = _drone getVariable "PSA_hidden";
private _hideAltitude    = _altitude >= _altitudeSetting;
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