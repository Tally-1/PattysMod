params[
	["_type",nil,[""]]
];

if(_type isEqualTo "recon")  exitWith{"B_UAV_01_F"};
if(_type isEqualTo "combat") exitWith{"PSA_combatDrone"};
if(_type isEqualTo "bomb")   exitWith{"B_UAV_06_F"};

nil;