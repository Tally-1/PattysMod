params[
    ["_man",   nil,[objNull]],
	["_crate", nil,[objNull]]	
];
if!(_this call PSA_fnc_canPickupCrate)exitWith{false};

[_crate] remoteExec ["PSA_fnc_retrieveCrate", _crate];

true;