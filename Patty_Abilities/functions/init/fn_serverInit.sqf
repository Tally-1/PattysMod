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
PSA_customRespawnsEnabled   = true;
PSA_counterAttackActive     = false;   


missionNamespace setVariable ["PSA_specialCrates",[],true];
publicVariable "PSA_counterAttackActive";

addMissionEventHandler ["EachFrame",       PSA_fnc_onEachFrameServer];
addMissionEventHandler ["EntityRespawned", {_this call PSA_fnc_entityRespawned}];
addMissionEventHandler ["EntityCreated",   {_this call PSA_fnc_entityCreated}];
// addMissionEventHandler ["EntityDeleted",   {_this call PSA_fnc_entityDeleted}];

[[], PSA_fnc_handleAllCrates]    call PSA_fnc_addServer_1_secondTask;
[[], PSA_fnc_handleRallyPoints]  call PSA_fnc_addServer_1_secondTask;
[[], PSA_fnc_globalCrateUpdate]  call PSA_fnc_addServer1minuteTask;


call PSA_fnc_setupRallyPoints;
call PSA_fnc_counterAttackEvents;

true;