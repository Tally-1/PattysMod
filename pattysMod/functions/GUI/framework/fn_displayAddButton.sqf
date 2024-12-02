params[
	["_pos",      nil,    [[]]],
	["_text",     nil,    [""]],
	["_function", nil,    [{}]]
];
private _button = _self call ["addCtrl",["RscButton",_pos, true]];

_button set ["addFunction", PTTY_fnc_btnCtrlAddFunction];

_button call ["setText",         [_text]];
_button call ["addFunction", [_function]];

_button;