isNil{
    if(isServer)     then{[] call   PSA_fnc_serverInit;};
    if(hasInterface) then{[] spawn  PSA_fnc_clientInit;};
};