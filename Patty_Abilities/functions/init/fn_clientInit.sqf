PSA_isACEEnabled         = isClass (configFile >> "CfgPatches" >> "ace_common");

PSA_clientFrameTasks     = [];
PSA_clientFrameTaskCount = 0;

PSA_clientPrSecondTasks     = [];
PSA_clientPrSecondTaskCount = 0;
PSA_clientPrSecondTimer     = 0;

call PSA_fnc_setPlayerActions;
call PSA_fnc_frameLoop;

true;