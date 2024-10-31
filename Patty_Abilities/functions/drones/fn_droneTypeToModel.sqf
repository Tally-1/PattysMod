params[
	["_type",nil,[""]]
];

if(_type isEqualTo "recon")  exitWith{"PSA_reconDrone"};
if(_type isEqualTo "combat") exitWith{"PSA_combatDrone"};
if(_type isEqualTo "bomb")   exitWith{"PSA_bombDrone"};

nil;