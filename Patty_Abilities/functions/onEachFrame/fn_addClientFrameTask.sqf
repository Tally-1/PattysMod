params[
	["_params", nil, [[]]],
	["_code",   nil, [{}]]
];
private _id   = PSA_clientFrameTaskCount;
private _task = [_params, _code, _id];

PSA_clientFrameTasks pushBackUnique _task;

PSA_clientFrameTaskCount=PSA_clientFrameTaskCount+1;

_id;