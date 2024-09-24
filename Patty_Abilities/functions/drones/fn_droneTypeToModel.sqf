params[
	["_type",nil,[""]]
];

if(_type isEqualTo "recon")  exitWith{"B_UAV_01_F"};
if(_type isEqualTo "combat") exitWith{"ION_UAV_02_lxWS"};
if(_type isEqualTo "bomb")   exitWith{"B_UAV_06_F"};

nil;