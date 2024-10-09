class CfgVehicles
{
    class B_supplyCrate_F;
    class PSA_resupplyCrate_F:B_supplyCrate_F
    {
        scope         = 2;
        scopeCurator  = 2;
        author        = "Tally";
        displayName   = "[ABILITIES] Resupply Box";
        
        class EventHandlers
        {
           init = "_this spawn PSA_fnc_initResupplyCrate";
        };
    };

    class B_UAV_02_lxWS;
    class PSA_combatDrone:B_UAV_02_lxWS
    {
        scope         = 2;
        scopeCurator  = 2;
        displayName   = "[ABILITIES] Combat Drone";
        lxws_holdingWeapon[] = {};

        class EventHandlers
        {
           init = "[_this#0,'Init',[]] spawn PSA_fnc_DroneWeapon_lxWS;";
        };
    };
    
};