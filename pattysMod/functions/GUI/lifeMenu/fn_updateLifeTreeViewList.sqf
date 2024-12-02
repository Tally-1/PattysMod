private _oldList  = _self get"treeView";
private _oldCtrl  = _oldList get "ctrl";
private _listPos  = _self get "listPos";
private _curSel   = tvCurSel _oldCtrl;
private _ctrlY    = (_listPos#1)-0.025;

_listPos set [1, _ctrlY];

private _newList       = _self call ["initTVList",  [_listPos]];
private _newCtrl       = _newList get"ctrl";
private _deleteOldList = ((!isNil "_oldCtrl")&&{!isNull _oldCtrl});

if (_deleteOldList)    then{_oldList call["delete"]};
if!(_deleteOldList)exitWith{_newList call["delete"]};

_self set ["listUpdate",   time];
_self set ["treeView", _newList];

_newCtrl tvSetCurSel _curSel;

true;