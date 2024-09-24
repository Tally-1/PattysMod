params[
    ["_type",nil,[""]]
];
private _timeLeft = _self call ["remainingCoolDown",[_type]];
private _ready    = round _timeLeft < 1;

_ready;