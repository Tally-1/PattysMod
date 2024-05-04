
class AT_Light {
	name = $STR_B_recon_LAT_F0;
	rank = "Private";
	description = "Light AT";
	maxCount    = 10;
	traits[] = {

	};
	customVariables[] = {

	};
	icon  = "a3\ui_f\data\map\vehicleicons\iconManAT_ca.paa";
	iconR = "\a3\ui_f\data\igui\cfg\simpletasks\types\mine_ca.paa";

	defaultLoadout[] = {
		{"arifle_MX_ACO_pointer_F","","acc_pointer_IR","optic_Aco",{"30Rnd_65x39_caseless_mag",30},{},""},
		{"launch_NLAW_F", "", "", "", {}, {}, ""},
		{"hgun_P07_F","","","",{"16Rnd_9x21_Mag",16},{},""},
		{"U_B_CombatUniform_mcam",{{"FirstAidKit",1},{"30Rnd_65x39_caseless_mag",2,30},{"Chemlight_green",1,1}}},
		{"V_PlateCarrier2_rgr",{{"30Rnd_65x39_caseless_mag",7,30},{"16Rnd_9x21_Mag",2,16},{"SmokeShell",1,1},{"SmokeShellGreen",1,1},{"Chemlight_green",1,1},{"HandGrenade",2,1}}},
		{"B_AssaultPack_rgr_LAT", {{"NLAW_F", 2, 1}}},
		"H_HelmetB","",{},
		{"ItemMap","ItemGPS","ItemRadio","ItemCompass","ItemWatch","NVGoggles"}
	};

	arsenalWeapons[] = {
		"LMG_Mk200_F",
		"LMG_Mk200_black_F",

		"launch_B_Titan_short_F",
		"launch_B_Titan_F",
		"launch_MRAWS_green_rail_F",
		"launch_MRAWS_olive_rail_F",
		"launch_MRAWS_sand_rail_F",
		"srifle_EBR_F",
		"srifle_LRR_F",

		"launch_MRAWS_green_F",
		"launch_MRAWS_olive_F",
		"launch_MRAWS_sand_F",
		"launch_NLAW_F",

		"launch_B_Titan_F", 
		"launch_B_Titan_olive_F",
		"launch_B_Titan_short_F",
		"launch_B_Titan_short_tna_F",
		"launch_B_Titan_tna_F"
	};
	arsenalMagazines[] = {
		
	};
	arsenalItems[] = {
		"optic_AMS",
		"optic_AMS_snd",
		"optic_LRPS"
	};
	arsenalBackpacks[] = {
		
	};
};