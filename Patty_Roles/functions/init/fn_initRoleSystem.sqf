if(!isMultiplayer)exitWith{};

isNil{
    if(isServer)     then{[] call   PTG_fnc_serverInit;};
    if(hasInterface) then{[] spawn  PTG_fnc_clientInit;};
};