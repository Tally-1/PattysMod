if!(call PSA_fnc_canRetrieveMyCrate)exitWith{};
private _crate = player getVariable "PSA_myCrate";

[
	player,
	_crate
] call PSA_fnc_pickupCrate;

true;