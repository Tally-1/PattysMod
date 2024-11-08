

class PSA_reconDrone:B_UAV_01_F
{
    scope         = 1;
    scopeCurator  = 1;
    displayName   = "Recon Drone";
};

class PSA_combatDrone:B_UAV_02_lxWS
{
    scope         = 1;
    scopeCurator  = 1;
    displayName   = "Combat Drone";
    lxws_holdingWeapon[] = {};

    class EventHandlers
    {
        init = "[_this#0,'Init',[]] spawn PSA_fnc_DroneWeapon_lxWS;";
    };
};

class PSA_bombDrone:B_UAV_06_F
{
    scope         = 1;
    scopeCurator  = 1;
    displayName   = "Bomb Drone";
};