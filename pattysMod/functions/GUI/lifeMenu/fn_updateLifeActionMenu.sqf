params[
	["_actionItem",nil,[grpNull,objNull]]
];
private _grouMenu   = typeName _actionItem isEqualTo "GROUP";
private _ctrls      = _self get "tempControls";
private _background = _self get "backGround";
private _canvas     = "#(argb,8,8,3)color(0.1,0.1,0.1,0.500000,ca)";

_background call ["setImage", [_canvas]];

{_x call ["delete"]} forEach _ctrls;
_self set ["tempControls",  []];
_self set ["currentGroup", nil];
_self set ["currentMan",   nil];
_self set ["lastUpdate",  time];

if(_grouMenu)exitWith{
	_self set ["currentGroup",_actionItem];

	private _ctrls = _self call ["showGroupMenu",[_actionItem]];
	_self set ["tempControls", _ctrls];
	
	true;
};

_self set ["currentMan",_actionItem];

private _ctrls = _self call ["showManMenu",[_actionItem, true]];
_self set ["tempControls", _ctrls];

true;