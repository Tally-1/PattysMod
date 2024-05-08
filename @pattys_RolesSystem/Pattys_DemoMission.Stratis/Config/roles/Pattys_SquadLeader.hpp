/*
	Faction: Example
	Author: Dom
*/
class SquadLeaderP { //this class is used when defining which roles are in what group
	name = "Squad Leader (Patty)"; //this is the name of the role as shown in the menu, can either be plain string or found in a stringtable using $ e.g $STR_B_DIVER_F0
	rank = "Private"; //can be one of the following "Private", "Corporal", "Sergeant", "Lieutenant", "Captain", "Major", "Colonel"
	description = The Squad Leader is capable of easily allowing the team to more quickly redeploy into the mission and has fewer restrictions on what weapons and attachments they can bring.; //this is the description of the role shown in the menu, can be plain string or found in stringtable
	traits[] = { //these are specific traits to the unit in the following format {"trait",value,isCustom}}, more information here: https://community.bistudio.com/wiki/setUnitTrait

	};
	customVariables[] = { //these variables are set on the player object once the role is taken in format {"variable",value,global}

	};

	icon  = "a3\ui_f\data\map\vehicleicons\iconManOfficer_ca.paa"; //this icon is shown on the menu when picking a role
	iconR = "\a3\ui_f\data\igui\cfg\simpletasks\letters\p_ca.paa";

	defaultLoadout[] = { //this is the default loadout the player will get when selecting the role, can be acquired by using getUnitLoadout player
{"arifle_MX_GL_khk_F","ACE_muzzle_mzls_H","ACE_acc_pointer_green","optic_MRCO",{"30Rnd_65x39_caseless_black_mag_Tracer",30},{"rhs_mag_M441_HE",1},""},{"rhs_weap_M136","","","",{},{},""},{"JCA_hgun_P320_olive_F","","JCA_acc_LightModule_Pistol_olive","JCA_optic_PRO_black",{"JCA_17Rnd_9x21_P320_Red_Mag",17},{},""},{"U_SSU_Stealth_Uniform_Rolled_MCAM_Tropic",{{"ACE_fieldDressing",83},{"ACE_morphine",10}}},{"V_SSU_Carrier_Rig_MCAM_Tropic",{{"30Rnd_65x39_caseless_black_mag_Tracer",14,30}}},{"B_Carryall_tna_F",{{"ACE_IR_Strobe_Item",1},{"ACE_EntrenchingTool",1},{"ACE_Flashlight_XL50",1},{"rhs_mag_m67",10,1},{"rhs_mag_an_m8hc",10,1},{"JCA_17Rnd_9x21_P320_Red_Mag",5,17},{"rhs_mag_M433_HEDP",10,1},{"30Rnd_65x39_caseless_black_mag_Tracer",4,30}}},"H_SSU_Camo_Combat_Helmet_MCAM_Tropic","",{"Laserdesignator_03","","","",{},{},""},{"ItemMap","B_UavTerminal","TFAR_anprc152","ItemCompass","ItemWatch","ACE_NVG_Wide_Green"}
	};
};