params[
	["_crate",nil,[objNull]],
	["_man",nil,[objNull]]
];
private _data    = _crate getVariable "PSA_crateData";
private _enemies = count (_data call ["nearEnemies"]) > 0;

// If there are any enemies nearby the action is denied.
if(_enemies)exitWith{false};

true;