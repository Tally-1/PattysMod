private _ctrls = _self get "tempControls";
private _man   = _self get "currentMan";

{_x call ["delete"]} forEach _ctrls;
_self set ["tempControls",[]];

_ctrls = _self call ["showManMenu",[_man]];
_self set ["tempControls", _ctrls];

true;