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