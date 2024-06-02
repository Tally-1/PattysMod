params[
	["_params", nil      ],
	["_code",   nil, [{}]]
];
private _id   = PSA_serverPrSecondTaskCount;
private _task = [_params, _code, _id];

PSA_serverPrSecondTasks pushBackUnique _task;

PSA_serverPrSecondTaskCount=PSA_serverPrSecondTaskCount+1;

_id;