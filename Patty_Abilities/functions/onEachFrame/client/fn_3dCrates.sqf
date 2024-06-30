private _crate  = PSA_cursorObject3D;
if!(alive _crate)exitWith{};

private _camPos = (positionCameraToWorld [0,0,0]);
private _tooFar = _camPos distance2D _crate > PSA_3dCrateMarkerDistance;
if(_tooFar)exitWith{};

[_crate] call PSA_fnc_drawCrate3D;

true;