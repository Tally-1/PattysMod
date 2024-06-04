private _startTime = time;

{
    _x params["_params", "_code"];
    _params call _code;
        
} forEach PSA_serverPrSecondTasks;

private _timeSpent = time - _startTime;
private _sleep     = (1 - _timeSpent);

if(_sleep < 0.02)then{_sleep = 0.02};

PSA_server_1_secondTimer =time+_sleep;

true;