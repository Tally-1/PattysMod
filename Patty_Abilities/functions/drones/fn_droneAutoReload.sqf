params[
    ["_drone",nil,[objNull]]
];
private _isReloading = _drone getVariable ["PSA_reloading",false];
if(_isReloading)exitWith{};

_drone setVariable ["PSA_reloading",true,true];

private _soundObject = createSimpleObject ["UserTexture1m_F", getPosASLVisual _drone];

_soundObject attachTo [_drone,[0,0,0]];
waitUntil {_soundObject distance _drone < 1};
[_soundObject] call PSA_fnc_playReloadSound;
_drone setVariable ["PSA_soundObject", _soundObject, true];

sleep 5;

[_drone] call PSA_fnc_droneReloadComplete;
_drone setVariable ["PSA_reloading",false,true];
waitUntil {sleep 0.1; count weapons _drone > 1};

private _gun = (weapons _drone)#1;
_drone selectWeapon _gun;

true;