call PSA_fnc_frameTasksServer;
if(time >= PSA_server_1_secondTimer)
then {call PSA_fnc_exec_1_secondTasksServer};

call PSA_fnc_frameTasksServer;
if(time >= PSA_server_1minuteTimer)
then {call PSA_fnc_exec_1minuteTasksServer};