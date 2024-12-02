params[
	["_display",nil,[displayNull]],
	["_varName",nil,         [""]]
];
private _ratio   = (getResolution#1)/(getResolution#0);
private _dataArr = [ 
	["display",                  _display],
	["hidden",                      false],
	["name",                     _varName],
	["ratio",                      _ratio],
	["controls",                       []],

	/*************{METHODS}*************/
	["hideDisplay",               PTTY_fnc_hideDisplay],
	["showDisplay",               PTTY_fnc_showDisplay],
	["addCtrl",                PTTY_fnc_displayAddCtrl],
	["addImage",          PTTY_fnc_displayAddImageCtrl],
	["addProgressBar", PTTY_fnc_displayAddProgressBarV],
	["addTextBox",          PTTY_fnc_displayAddTextBox],
    ["addButton",            PTTY_fnc_displayAddButton],
    ["addFrame",              PTTY_fnc_displayAddFrame],
    ["addCheckBox",        PTTY_fnc_displayAddCheckBox],
    ["addSlider",            PTTY_fnc_displayAddSlider]
];

private _data = createHashmapObject [_dataArr];

_display setVariable ["PTTY_data", _data];

_data;