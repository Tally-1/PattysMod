private _drones = (_self get "active_drones")select{alive _x &&{canMove _x}};
private _types  = _drones apply {_x getVariable "PSA_droneType"};

_self set ["active_drones", _drones];

_types;