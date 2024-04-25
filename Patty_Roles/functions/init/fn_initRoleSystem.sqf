if(!isMultiplayer)exitWith{systemChat "Role system only available in multiplayer";};

isNil{
    if(isServer)     then{[] call   PTG_fnc_serverInit;};
    if(hasInterface) then{[] spawn  PTG_fnc_clientInit;};
};