params[
	["_pos",    nil,       [[]]], // x y w h
	["_text",   nil,       [""]],
	["_bColor", nil,       [[]]],
	["_color",  [1,1,1,1], [[]]]
];
private _textBox = _self call ["addCtrl", ["RscStructuredText",_pos]];
private _ctrl    = _textBox get "ctrl";

_textBox  set ["setBackgroundColor", PTTY_fnc_setTextBoxBackgroundColor];
_textBox call ["setTextColor",[_color]];

if!(isNil "_text")   then{_textBox call ["setText",             [_text]]};
if!(isNil "_bColor") then{_textBox call ["setBackgroundColor",[_bColor]]};

[_ctrl] call PTTY_fnc_normalizeTextCtrlHeight;

_textBox;