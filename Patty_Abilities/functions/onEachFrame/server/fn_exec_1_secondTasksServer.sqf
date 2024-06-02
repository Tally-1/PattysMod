private _startTime = time;

{
    _x params["_params", "_code"];
    _params call _code;
        
} forEach PSA_serverPrSecondTasks;

private _timeSpent = time - _startTime;
private _sleep     = (1 - _timeSpent);

if(_sleep < 0)then{_sleep = 0};

PSA_server_1_secondTimer =PSA_server_1_secondTimer+1;

true;