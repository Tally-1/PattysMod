private _displayData = _self call ["displayData"];
private _textPos     = _self call ["getRelPos",[0.01,0.025,0.96,0.69]];
private _text        = _self call ["textMan"];
private _textBox     = _displayData call ["addTextBox", [_textPos, _text]];


_textBox;