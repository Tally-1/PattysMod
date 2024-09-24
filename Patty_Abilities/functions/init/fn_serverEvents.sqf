addMissionEventHandler ["EachFrame",       PSA_fnc_onEachFrameServer];
addMissionEventHandler ["EntityRespawned", {_this call PSA_fnc_entityRespawned}];
addMissionEventHandler ["EntityCreated",   {_this call PSA_fnc_entityCreated}];
addMissionEventHandler ["MarkerCreated",   {_this call PSA_fnc_markerCreated}];
addMissionEventHandler ["EntityKilled",    {_this call PSA_fnc_entityKilled}];
// addMissionEventHandler ["EntityDeleted",   {_this call PSA_fnc_entityDeleted}];
["PSA_RallypointModuleMoved",  {_this call PSA_fnc_rallypointModuleEdited}] call CBA_fnc_addEventHandler;
["PSA_mobileRespawnChanged",   {_this spawn PSA_fnc_onMobileRespawnChanged}] call CBA_fnc_addEventHandler;
["PSA_DeployDrone",            {_this spawn PSA_fnc_deployDrone}] call CBA_fnc_addEventHandler;

["ace_medical_CriticalInjury", {_this spawn PSA_fnc_onKnockout}] call CBA_fnc_addEventHandler;
["ace_medical_knockout",       {_this spawn PSA_fnc_onKnockout}] call CBA_fnc_addEventHandler;
["ace_medical_WakeUp",         {_this spawn PSA_fnc_onWakeUp}] call CBA_fnc_addEventHandler;


call PSA_fnc_counterAttackEvents;
call PSA_fnc_curatorEvents;