PSA_isACEEnabled = isClass (configFile >> "CfgPatches" >> "ace_common");
PSA_clientFrameTasks     = [];
PSA_clientFrameTaskCount = 0;

call PSA_fnc_frameLoop;