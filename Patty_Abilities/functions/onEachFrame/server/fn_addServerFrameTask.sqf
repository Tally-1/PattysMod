params[
	["_params", nil, [[]]],
	["_code",   nil, [{}]]
];
private _id   = PSA_serverFrameTaskCount;
private _task = [_params, _code, _id];

PSA_serverFrameTasks pushBackUnique _task;

PSA_serverFrameTaskCount=PSA_serverFrameTaskCount+1;

_id;