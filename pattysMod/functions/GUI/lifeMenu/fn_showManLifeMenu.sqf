params[
	["_man",      nil, [objNull]],
	["_spawnTxt", nil,   [false]]
];
private _buttons = _self call ["initManButtons"];
private _textBox = _self call ["initManText"];
private _frame   = _self get "frame";
private _title   = name _man;

if(_spawnTxt)
then{_frame call["spawnStringText", [_title, 0.5]]}
else{_frame call["spawnStringText", [_title, 0.001]]};

private _newCtrls = [
	_textBox
];

_newCtrls insert [0,_buttons,true];

_newCtrls;