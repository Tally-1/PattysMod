params[
    ["_type",nil,[""]]
];
private _timeLimit = _self get"timeLimits"get _type;
private _timeLeft  = round(_timeLimit - time);

if(_timeLeft < 0)
then{_timeLeft = 0};

_timeLeft;