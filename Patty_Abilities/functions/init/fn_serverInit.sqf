PSA_serverFrameTasks     = [];
PSA_serverFrameTaskCount = 0;

PSA_serverPrSecondTasks     = [];
PSA_serverPrSecondTaskCount = 0;
PSA_server_1_secondTimer    = 0;

missionNamespace setVariable ["PSA_specialCrates",[],true];
addMissionEventHandler ["EachFrame",       {_this call PSA_fnc_onEachFrameServer}];
addMissionEventHandler ["EntityRespawned", {_this call PSA_fnc_entityRespawned}];

[[], PSA_fnc_handleAllCrates] call PSA_fnc_addServer_1_secondTask;

true;