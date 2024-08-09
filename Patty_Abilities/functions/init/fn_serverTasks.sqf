[[], PSA_fnc_handleAllCrates]              call PSA_fnc_addServer_1_secondTask;
[[], PSA_fnc_handleRallyPoints]            call PSA_fnc_addServer_1_secondTask;
[[], PSA_fnc_globalCrateUpdate]            call PSA_fnc_addServer1minuteTask;
[[], {_this spawn PSA_fnc_handleAllMRSPs}] call PSA_fnc_addServer1minuteTask;

true;