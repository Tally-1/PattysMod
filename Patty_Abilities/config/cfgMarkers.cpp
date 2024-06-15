class CfgMarkers {
    class mil_ambush;

    class PSA_arsenal_crate:mil_ambush {
    scope = 2;						                    // accessibility: 0 = private, 1 = protected, 2 = public
	name    = "Arsenal Crate";			                // name used in the Editor and other UIs
	icon    = "\Patty_Abilities\textures\icons\AC.paa"; // marker icon
	color[] = { 0, 0, 0, 1 };		                    // Color used for the icon and text
	shadow  = 1;						                // 1 = shadow, 0 = no shadow
    };

    class PSA_resupply_crate:PSA_arsenal_crate {
	name    = "Resupply Crate";			                // name used in the Editor and other UIs
	icon    = "\Patty_Abilities\textures\icons\RC.paa";
    };

};