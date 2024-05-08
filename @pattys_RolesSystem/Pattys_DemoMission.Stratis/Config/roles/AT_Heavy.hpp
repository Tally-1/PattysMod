
class AT_Heavy { 
	name = $STR_B_soldier_AT_F0;
	rank = "Private";
	description = "Heavy AT";
	maxCount    = 10;
	traits[] = {

	};
	customVariables[] = {

	};
	icon  = "a3\ui_f\data\map\vehicleicons\iconManAT_ca.paa";
	iconR = "\a3\ui_f\data\igui\cfg\simpletasks\types\mine_ca.paa";

	defaultLoadout[] = {
		{"arifle_MX_ACO_pointer_F","","acc_pointer_IR","optic_Aco",{"30Rnd_65x39_caseless_mag",30},{},""},
		{"launch_B_Titan_short_F", "", "", "", {}, {}, ""},
		{"hgun_P07_F","","","",{"16Rnd_9x21_Mag",16},{},""},
		{"U_B_CombatUniform_mcam",{{"FirstAidKit",1},{"30Rnd_65x39_caseless_mag",2,30}}},
		{"V_PlateCarrier2_rgr",{{"30Rnd_65x39_caseless_mag",7,30},{"16Rnd_9x21_Mag",2,16},{"HandGrenade",2,1}}},
		{"B_AssaultPack_mcamo_AT", {{"Titan_AT", 2, 1}}},
		"H_HelmetB","",{},
		{"ItemMap","ItemGPS","ItemRadio","ItemCompass","ItemWatch","NVGoggles"}
	};

};