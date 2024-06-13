private _camPos     = (positionCameraToWorld [0,0,0]);
private _allCrates  = missionNamespace getVariable ["PSA_specialCrates",[]];
private _nearCrates = _allCrates select {_camPos distance2D _x < PSA_3dCrateMarkerDistance};

{[_x] call PSA_fnc_drawCrate3D} forEach _nearCrates;

true;