isNil{
	P_dbg                        = PSA_fnc_debugMessage;
	
	if(isServer)     then{[] spawn PSA_fnc_serverInit;};
    if(hasInterface) then{[] spawn PSA_fnc_clientInit;};
};