call PSA_fnc_execPrFrameTasks;

if(time >= PSA_clientPrSecondTimer)
then PSA_fnc_execPrSecondTasks;