/*
	Faction: Medic
	Author: Dom
*/
class medic {
	name = $STR_B_MEDIC_F0;
	rank = "Corporal";
	description = $STR_DT_Medic_Description;
	maxCount    = 6;
	traits[] = {
		{"Medic",true}
	};
	customVariables[] = {
		{"ace_medical_medicClass",2,true}
	};
	icon = "a3\ui_f\data\map\vehicleicons\iconManMedic_ca.paa";
	iconR = "\a3\ui_f\data\igui\cfg\simpletasks\types\defend_ca.paa";

	defaultLoadout[] = {
		{"arifle_MX_pointer_F","","acc_pointer_IR","",{"30Rnd_65x39_caseless_mag",30},{},""},
		{},
		{"hgun_P07_F","","","",{"16Rnd_9x21_Mag",16},{},""},
		{"U_B_CTRG_3",{{"FirstAidKit",1},{"30Rnd_65x39_caseless_mag",2,30},{"Chemlight_green",1,1}}},
		{"V_PlateCarrierH_CTRG",{{"30Rnd_65x39_caseless_mag",3,30},{"16Rnd_9x21_Mag",2,16},{"SmokeShell",1,1},{"SmokeShellGreen",1,1},{"SmokeShellBlue",1,1},{"SmokeShellOrange",1,1},{"Chemlight_green",1,1}}},
		{"B_AssaultPack_rgr_Medic",{{"Medikit",1},{"FirstAidKit",10}}},
		"H_HelmetB_light_desert","",{},
		{"ItemMap","ItemGPS","ItemRadio","ItemCompass","ItemWatch","NVGoggles"}
	};

};