params[
	["_actionItem",nil,[grpNull,objNull]]
];
private _grouMenu = typeName _actionItem isEqualTo "GROUP";
private _ctrls    = _self get "tempControls";

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