private _display = uiNamespace getVariable ["PTTY_LifeMenuDisplay",displayNull];
if(isNull _display)exitWith{[0]};

private _data = _display getVariable "PTTY_data";
private _path = tvCurSel (_data get"treeView"get"ctrl");

_path;