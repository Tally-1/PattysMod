PSA_serverFrameTasks        = [];
PSA_serverFrameTaskCount    = 0;
PSA_serverPrSecondTasks     = [];
PSA_serverPrSecondTaskCount = 0;
PSA_server_1_secondTimer    = -1;
PSA_serverPrMinuteTasks     = [];
PSA_serverPrMinuteTaskCount = 0;
PSA_server_1minuteTimer     = 0;
PSA_respawnModules          = [];
PSA_respawnPositions        = [];
PSA_lastRespawnDisable      = 0;
PSA_lastRespawnEnable       = 0;
PSA_lastRallyPoint          = 0;
PSA_customRespawnsEnabled   = true;
PSA_counterAttackActive     = false;

missionNamespace setVariable ["PSA_specialCrates",[],true];
missionNamespace setVariable ["PSA_specialDrones",[],true];

publicVariable "PSA_counterAttackActive";