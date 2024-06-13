params[
	["_params", nil      ],
	["_code",   nil, [{}]]
];
private _id   = PSA_serverPrMinuteTaskCount;
private _task = [_params, _code, _id];

PSA_serverPrMinuteTasks pushBackUnique _task;

PSA_serverPrMinuteTaskCount=PSA_serverPrMinuteTaskCount+1;

_id;