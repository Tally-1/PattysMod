call PSA_fnc_frameTasksServer;
if(time >= PSA_server_1_secondTimer)
then PSA_fnc_exec_1_secondTasksServer;