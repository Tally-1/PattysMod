params[
	["_man",nil,[objNull]]
];
if([_man] call PSA_fnc_hasMRSP)exitWith{false};

private _abilities  = _man getVariable ["PSA_abilities",[]];
private _hasAbility = "mobile_respawn" in _abilities;
private _owners     = PSA_mobileSpawnPoints call ["getOwners"];
private _isOwner    = _man in _owners;

if(PSA_counterAttackActive) exitWith{false};
if (_isOwner)               exitWith{false};
if!(_hasAbility)            exitWith{false};

true;