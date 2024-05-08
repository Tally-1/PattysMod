/*
	Faction: Sniper
	Author: Dom
*/
class sniper {
	name = $STR_B_SNIPER_F0;
	rank = "Corporal";
	description = $STR_DT_Sniper_Description;
	traits[] = {

	};
	customVariables[] = {

	};
	icon = "a3\ui_f\data\map\vehicleicons\iconMan_ca.paa";

	defaultLoadout[] = {
		{"srifle_LRR_camo_LRPS_F","","","optic_LRPS",{"7Rnd_408_Mag",7},{},""},
		{},
		{"hgun_P07_snds_F","muzzle_snds_L","","",{"16Rnd_9x21_Mag",16},{},""},
		{"U_B_GhillieSuit",{{"FirstAidKit",1},{"7Rnd_408_Mag",2,7},{"SmokeShell",1,1}}},
		{"V_TacVest_khk",{{"7Rnd_408_Mag",3,7},{"16Rnd_9x21_Mag",2,16},{"ClaymoreDirectionalMine_Remote_Mag",1,1},{"APERSTripMine_Wire_Mag",1,1},{"SmokeShellGreen",1,1},{"SmokeShellBlue",1,1},{"SmokeShellOrange",1,1},{"Chemlight_green",2,1}}},
		{},
		"","",{"Rangefinder","","","",{},{},""},
		{"ItemMap","ItemGPS","ItemRadio","ItemCompass","ItemWatch","NVGoggles"}
	};

};