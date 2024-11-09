isNil{
	P_dbg            = PSA_fnc_debugMessage;
	PSA_isACEEnabled = isClass (configFile >> "CfgPatches" >> "ace_common");
	
	if(isServer)     then{[] spawn PSA_fnc_serverInit;};
    if(hasInterface) then{[] spawn PSA_fnc_clientInit;};
};