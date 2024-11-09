PSA_clientFrameTasks        = [];
PSA_clientFrameTaskCount    = 0;
PSA_clientPrSecondTasks     = [];
PSA_clientPrSecondTaskCount = 0;
PSA_clientPrSecondTimer     = 0;
PSA_cursorObject3D          = objNull;
PSA_3dCrateMarkerDistance   = 100;
PSA_rp3DMarkerDistance      = 100;

call PSA_fnc_setPlayerActions;
call PSA_fnc_frameLoop;
call PSA_fnc_updateAllCrates;

["PTG_roleChanged", {_this call PSA_fnc_roleChanged}] call CBA_fnc_addEventHandler;
[[], {call PSA_fnc_setCursorObject3D}] call PSA_fnc_addClientSecondTasks;

true;