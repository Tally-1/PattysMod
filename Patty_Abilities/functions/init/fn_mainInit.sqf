isNil{
	P_dbg                        = PSA_fnc_debugMessage;
	PSA_crateDestructionCooldown = 20;
	PSA_crateProxDestrTimer      = 20;
	PSA_3dCrateMarkerDistance    = 50;
    PSA_cratePickupDistance      = 10;
	PSA_debug                    = true;

    if(isServer)     then{[] spawn PSA_fnc_serverInit;};
    if(hasInterface) then{[] spawn PSA_fnc_clientInit;};
};