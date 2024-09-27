private _drones = missionNamespace getVariable "PSA_specialDrones" select {alive _x};

{[_x] call PSA_fnc_handleSpecialDrone} forEach _drones;

missionNamespace setVariable ["PSA_specialDrones", _drones];

true;