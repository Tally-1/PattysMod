params[
	["_params", nil      ],
	["_code",   nil, [{}]]
];
private _id   = PSA_clientPrSecondTaskCount;
private _task = [_params, _code, _id];

PSA_clientPrSecondTasks pushBackUnique _task;

PSA_clientPrSecondTaskCount=PSA_clientPrSecondTaskCount+1;

_id;